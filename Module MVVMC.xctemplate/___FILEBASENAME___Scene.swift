//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_productName:identifier___SceneDelegate: class {
    
}

class ___VARIABLE_productName:identifier___Scene {
    
    private let viewModel: ___VARIABLE_productName:identifier___ViewModel
    private let loyaltyViewController: ___VARIABLE_productName:identifier___ViewController
    
    var viewController: UIViewController {
        return loyaltyViewController
    }
    
    var delegate: ___VARIABLE_productName:identifier___SceneDelegate? {
        get { return viewModel.sceneDelegate }
        set { viewModel.sceneDelegate = newValue }
    }
    
    init() {
        viewModel = ___VARIABLE_productName:identifier___ViewModel()
        loyaltyViewController = ___VARIABLE_productName:identifier___ViewController()
        loyaltyViewController.viewModel = viewModel
    }
}
