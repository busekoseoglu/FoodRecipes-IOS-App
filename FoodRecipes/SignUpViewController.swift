//
//  SignUpViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 8.07.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var verifyPasswordText: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signupButton.layer.cornerRadius = 7
        passwordText.isSecureTextEntry = true
        verifyPasswordText.isSecureTextEntry = true
    }
    

    @IBAction func signupClicked(_ sender: Any) {
        if mailText.text == ""{
            viewAlert(title: "Error", message: "Enter E-Mail")
        }
        else if usernameText.text == ""{
            viewAlert(title: "Error", message: "Enter Username")
        }
        else if passwordText.text == ""{
            viewAlert(title: "Error", message: "Enter Password")
        }
        else if verifyPasswordText.text == ""{
            viewAlert(title: "Error", message: "Verify Password")
        }
        else{
            if verifyPasswordText.text != passwordText.text{
                viewAlert(title: "Error", message: "Passwords do not match")
            }
            else{
                performSegue(withIdentifier: "signupToMainPage", sender: nil)
            }
        }
    }
    
    func viewAlert(title : String ,message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    

}
