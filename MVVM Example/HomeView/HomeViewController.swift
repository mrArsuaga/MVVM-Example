//
//  HomeViewController.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let viewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        viewModel.getLoggedInUser()

        // Do any additional setup after loading the view.
    }
    
    private func setupBinders() {
        viewModel.welcomeMessage.bind { [weak self] message in
            self?.welcomeLabel.text = message
        }
    }

}
