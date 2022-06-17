//
//  HomeViewController.swift
//  MVVM Example
//
//  Created by Jose Arsuaga on 13/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet private weak var welcomeLabel: UILabel!
    let viewModel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        viewModel.getCurrentUser()
        // Do any additional setup after loading the view.
    }
    
    private func setupBinders() {
        viewModel.message.bind { [weak self] message in
            self?.welcomeLabel.text = message
        }
    }
}
