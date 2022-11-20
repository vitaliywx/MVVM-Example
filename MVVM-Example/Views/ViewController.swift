//
//  ViewController.swift
//  MVVM-Example
//
//  Created by Vitalii Homoniuk on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets and variables
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var viewModel = ViewModel()
    
    //MARK: - Loading

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        setupView()
    }
    
    //MARK: - Actions and funcs
    
    @IBAction func loginButton(_ sender: UIButton) {
        viewModel.userButtonPressed(login: loginField.text ?? "", password: passwordField.text ?? "")
        label.isHidden = false
    }
    
    private func setupView() {
        label.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        label.text = "Try again.."
        label.isHidden = true
    }

    func bindViewModel() {
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        }
        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        }
    }

}

