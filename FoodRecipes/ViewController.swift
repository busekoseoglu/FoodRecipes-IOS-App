//
//  ViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 8.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupButton.layer.cornerRadius = 7
        signinButton.layer.cornerRadius = 7
        
        
    }

    @IBAction func signinClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSignInVC", sender: nil)
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSignUpVC", sender: nil)
    }
    
}

