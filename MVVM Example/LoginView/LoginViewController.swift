//
//  ViewController.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    private let viewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonTapped() {
        
    }


}

