//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_productName:identifier___Interactable: class {
    
    var viewModel: ___VARIABLE_productName:identifier___ViewModellable?  { get set }
}

class ___VARIABLE_productName:identifier___Interactor: ___VARIABLE_productName:identifier___Interactable {
    
    // MARK: - Public properties
    
    static let shared = ___VARIABLE_productName:identifier___Interactor()
    
    weak var viewModel: ___VARIABLE_productName:identifier___ViewModellable?
}
