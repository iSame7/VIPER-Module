//
//  main.swift
//  VIPER-Module
//
//  Created by Sameh Mabrouk on 15/04/2019.
//  Copyright © 2019 VanMoof. All rights reserved.
//

import Foundation

//let templateName = "Module VIPER.xctemplate"
//let mvvmcTemplateName =
enum Template: String {
    case viper = "Module VIPER.xctemplate"
    case mvvmc = "Module MVVMC.xctemplate"
}

let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func printInConsole(_ message:Any){
    print("====================================")
    print("\(message)")
    print("====================================")
}

func moveTemplate(){
    var templateName: Template = .viper
    if CommandLine.argc > 1 {
        printInConsole("Arguments are passed.")
        let arguments = CommandLine.arguments
        for argument in arguments {
            if argument == "mvvmc" {
                templateName = .mvvmc
            }
        }
    } else {
        printInConsole("No arguments passed.")
    }
    
    
    let fileManager = FileManager.default
    let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)
    do {
        if !fileManager.fileExists(atPath:"\(destinationPath)/\(templateName.rawValue)"){
            try fileManager.copyItem(atPath: templateName.rawValue, toPath: "\(destinationPath)/\(templateName.rawValue)")
            printInConsole("✅  Template installed succesfully 🎉. Enjoy 🙂")
            
        }else{
            try _ = fileManager.replaceItemAt(URL(fileURLWithPath:"\(destinationPath)/\(templateName.rawValue)"), withItemAt: URL(fileURLWithPath:templateName.rawValue))
            printInConsole("✅  Template already exists. So has been replaced succesfully 🎉. Enjoy 🙂")
        }
    }
    catch let error as NSError {
        printInConsole("❌  Ooops! Something went wrong 😡 : \(error.localizedFailureReason!)")
    }
}

func shell(launchPath: String, arguments: [String]) -> String
{
    let task = Process()
    task.launchPath = launchPath
    task.arguments = arguments
    
    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: String.Encoding.utf8)!
    if output.count > 0 {
        let lastIndex = output.index(before: output.endIndex)
        return String(output[output.startIndex ..< lastIndex])
    }
    return output
}

func bash(command: String, arguments: [String]) -> String {
    let whichPathForCommand = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
    return shell(launchPath: whichPathForCommand, arguments: arguments)
}

moveTemplate()
