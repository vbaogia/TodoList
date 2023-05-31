//
//  ViewController.swift
//  TodoList
//
//  Created by GiaBao on 28/03/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func didTapLogin(_ sender: UIButton) {
        if (usernameTextField.text!.isEmpty || passwordTextField.text!.isEmpty){
            print("Login fail")
        } else{
            performSegue(withIdentifier: "goToHomeScreen", sender: self)
        }
    }
    
}

