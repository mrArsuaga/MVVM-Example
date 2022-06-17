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
    let viewModel = LoginViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        // Do any additional setup after loading the view.
    }
    
    private func goToHomeViewController() {
        guard let homeViewController = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController else { return }
        present(homeViewController, animated: true, completion: nil)
    }
    
    func setupBinders() {
        viewModel.error.bind { [weak self] error in
            if error == nil {
                self?.goToHomeViewController()
            } else {
                print(error ?? "")
            }
        }
    }
    
    @IBAction func loginButtonTapped() {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else { return }
        viewModel.credentials.value = (email: email,password: password)
    }


}

