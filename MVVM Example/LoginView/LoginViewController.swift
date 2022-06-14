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
        setUpBinders()
        
    }
    
    private func setUpBinders() {
        viewModel.error.bind { [weak self] error in
            if let error = error {
                print(error)
            } else {
                self?.goToHomePage()
            }
        }
    }
    
    private func goToHomePage() {
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else { return }
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func loginButtonTapped() {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else { return }
        viewModel.login(email: email, password: password)
    }


}

