//
//  SignInViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 8.07.2021.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        signinButton.layer.cornerRadius = 7
        passwordText.isSecureTextEntry = true
    }
    
    @IBAction func signinClicked(_ sender: Any) {
        if usernameText.text == ""{
            viewAlert(title: "Error", message: "Enter Username")
        }
        else if passwordText.text == ""{
            viewAlert(title: "Error", message: "Enter Password")
        }
        else{
            performSegue(withIdentifier: "signinToMainPage", sender: nil)
        }
        
    }
    
    func viewAlert(title : String ,message : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    

}
