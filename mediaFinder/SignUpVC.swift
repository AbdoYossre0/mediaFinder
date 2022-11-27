//
//  SignUpVC.swift
//  mediaFinder
//
//  Created by abdoyossre on 11/15/22.
//

import UIKit

class SignUpVC: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneNumTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    var gender = "Mail"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func genderSwitchBtn(_ sender: UISwitch) {
        if sender.isOn {
            gender = "Mail"
        } else {
            gender = "Femail"
        }
    }
    
    
    @IBAction func signUpButton(_ sender: UIButton) {
        let mainstoryBord = UIStoryboard.init(name: "Main", bundle: nil)
        let signInVC = mainstoryBord.instantiateViewController(identifier: "SignInVC") as! SignInVC
        signInVC.name = nameTextField.text!
        signInVC.email = emailTextField.text!
        signInVC.address = addressTextField.text!
        signInVC.phoneNum = phoneNumTextField.text!
        signInVC.password = passwordTextField.text!
        signInVC.gender = self.gender
        navigationController?.pushViewController(signInVC, animated: true)
        
        
    }
    
    
    
    
    

}

