//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


protocol ___VARIABLE_productName:identifier___ViewModellable: class {
    func viewDidLoad()
    func viewWillAppear()
}

class ___VARIABLE_productName:identifier___ViewModel {
    
    private weak var view: ___VARIABLE_productName:identifier___Viewable?
    weak var sceneDelegate: ___VARIABLE_productName:identifier___SceneDelegate?
    
    var interactor: ___VARIABLE_productName:identifier___Interactable?
    
    init(interactor: ___VARIABLE_productName:identifier___Interactable? = ___VARIABLE_productName:identifier___Interactor.shared) {
        self.interactor = interactor
    }
}

//MARK: ___VARIABLE_productName:identifier___ViewModellable

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModellable {
    
    func viewDidLoad() {
        
    }
    
    func viewWillAppear() {
        
    }
}
