//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName:identifier___Viewable: class {
    
    var viewModel: ___VARIABLE_productName:identifier___ViewModellable?  { get set }
}

class ___VARIABLE_productName:identifier___ViewController: UIViewController, ___VARIABLE_productName:identifier___Viewable {

	var viewModel: ___VARIABLE_productName:identifier___ViewModellable?

	override func viewDidLoad() {
        super.viewDidLoad()
    }

}
