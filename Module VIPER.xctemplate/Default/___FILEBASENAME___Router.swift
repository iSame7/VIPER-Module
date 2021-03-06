//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Sameh Mabrouk https://github.com/iSame7
//

import Foundation
import Swinject

class ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___Routing {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController?) {
        self.viewController = viewController
    }

    func navigateToAnotherModule() {
        if let viewController = self.anotherModuleBuilder()?.buildModule()?.viewController {
            let navController = UINavigationController(rootViewController: viewController)
            self.viewController?.present(navController, animated: true, completion: nil)
        }
    }

    private func anotherModuleBuilder() -> ModuleBuilder? {
        return Container.shared.resolve(ModuleBuilder.self)
    }
}
