//
//  MainPageViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 8.07.2021.
//

import UIKit

class MainPageViewController: UIViewController {

    @IBOutlet weak var dunyamutfagiImg: UIImageView!
    @IBOutlet weak var zeytinyagliImg: UIImageView!
    @IBOutlet weak var hamurisiImg: UIImageView!
    @IBOutlet weak var mezeImg: UIImageView!
    @IBOutlet weak var tatliImg: UIImageView!
    @IBOutlet weak var yoreselImg: UIImageView!
    @IBOutlet weak var etImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        dunyamutfagiImg.isUserInteractionEnabled = true
        zeytinyagliImg.isUserInteractionEnabled = true
        hamurisiImg.isUserInteractionEnabled = true
        mezeImg.isUserInteractionEnabled = true
        tatliImg.isUserInteractionEnabled = true
        yoreselImg.isUserInteractionEnabled = true
        etImg.isUserInteractionEnabled = true
        
        dunyamutfagiImg.layer.cornerRadius = 8
        zeytinyagliImg.layer.cornerRadius = 8
        hamurisiImg.layer.cornerRadius = 8
        mezeImg.layer.cornerRadius = 8
        tatliImg.layer.cornerRadius = 8
        yoreselImg.layer.cornerRadius = 8
        etImg.layer.cornerRadius = 8
        
        let dunyaRecognizer = UITapGestureRecognizer(target: self, action: #selector(openDunyaMutfagi))
        let zeytinyagliRecognizer = UITapGestureRecognizer(target: self, action: #selector(openZeytinyagli))
        let hamurRecognizer = UITapGestureRecognizer(target:self, action: #selector(openHamur))
        let mezeRecognizer = UITapGestureRecognizer(target: self, action: #selector(openMeze))
        let tatliRecognizer = UITapGestureRecognizer(target: self, action: #selector(openTatli))
        let yoreselRecognizer = UITapGestureRecognizer(target: self, action: #selector(openYoresel))
        let etRecognizer = UITapGestureRecognizer(target: self, action: #selector(openEt))
        
        
        dunyamutfagiImg.addGestureRecognizer(dunyaRecognizer)
        zeytinyagliImg.addGestureRecognizer(zeytinyagliRecognizer)
        hamurisiImg.addGestureRecognizer(hamurRecognizer)
        mezeImg.addGestureRecognizer(mezeRecognizer)
        tatliImg.addGestureRecognizer(tatliRecognizer)
        yoreselImg.addGestureRecognizer(yoreselRecognizer)
        etImg.addGestureRecognizer(etRecognizer)
       
    }

    @objc func openDunyaMutfagi(){
        performSegue(withIdentifier: "mainPageToWorld", sender: nil)
    }
    
    @objc func openZeytinyagli(){
        performSegue(withIdentifier: "mainPageToZeytinyagli", sender: nil)
    }
    
    @objc func openHamur(){
        performSegue(withIdentifier: "mainPageToHamur", sender: nil)
    }
    
    @objc func openMeze(){
        performSegue(withIdentifier: "mainPageToMeze", sender: nil)
    }
    
    @objc func openTatli(){
        performSegue(withIdentifier: "mainPageToTatli", sender: nil)
    }
    
    @objc func openYoresel(){
        performSegue(withIdentifier: "mainPageToYoresel", sender: nil)
    }
    
    @objc func openEt(){
        performSegue(withIdentifier: "mainPageToEt", sender: nil)
    }
    
    


}
