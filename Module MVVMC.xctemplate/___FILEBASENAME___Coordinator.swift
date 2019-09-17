//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

protocol ___VARIABLE_productName:identifier___Coordinating: class {
    func startAnotherCoordinator()
}

class ___VARIABLE_productName:identifier___Coordinator: Coordinator {
    
    // MARK: - Private properties
    
    private let navigationController: DottNavigationController
    private lazy var scene: ___VARIABLE_productName:identifier___Scene = {
        let scene = ___VARIABLE_productName:identifier___Scene()
        scene.delegate = self
        return scene
    }()
    
    // MARK: - Life cycle
    
    init(rootViewController: UIViewController, navigationController: DottNavigationController) {
        self.navigationController = navigationController
        
        super.init(rootViewController: rootViewController)
    }
    
    // MARK: - Coordinator
    
    override func start() {
        navigationController.viewControllers = [scene.viewController]
        present(navigationController)
    }
    
    override func stop(_ completion: WhenDone? = nil) {
        rootViewController.dismiss(animated: true, completion: completion)
    }
}


//MARK: - ___VARIABLE_productName:identifier___Coordinating

extension ___VARIABLE_productName:identifier___Coordinator: ___VARIABLE_productName:identifier___Coordinating {
    
    // MARK: - Child coordinators
    
    func startAnotherCoordinator() {
        let coordinator = OtherCoordinator(rootViewController: navigationController)
        coordinator.delegate = self
        startChildCoordinator(coordinator)
    }
    
    func push(_ viewController: UIViewController, animated: Bool = true) {
        navigationController.pushViewController(viewController, animated: animated)
    }
}

//MARK: - ___VARIABLE_productName:identifier___SceneDelegate

extension ___VARIABLE_productName:identifier___Coordinator: ___VARIABLE_productName:identifier___SceneDelegate {
    
}
