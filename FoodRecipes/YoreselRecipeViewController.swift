//
//  YoreselRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 15.07.2021.
//

import UIKit

class YoreselRecipeViewController: UIViewController {

    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeText: UITextView!
    
    var selectedFood = ""
    var selectedImage = UIImage()
    var recipe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeImage.inputView?.contentMode = UIView.ContentMode.scaleAspectFill
        recipeImage.layer.cornerRadius = 8
        
        recipeName.text = selectedFood
        recipeImage.image = selectedImage
        
        if selectedFood == "Keşkek"{
            recipe = "Nohut ile buğdayı 2.5 su bardağı su ile bir gece önceden ıslatın ve eti haşlayın.Nohut ile buğdayın suyunu süzüp ete ilave edin. Ayırdığınız suya 4 bardak daha su ilave edin.Tereyağının yarısına su, karabiber ve tuzu ekleyip buğday lapa oluncaya kadar yaklaşık 75 dakika pişirin.Etin kemiklerini ayırıp yemeğin üzerine ilave edin. Keşkeği büyük bir tencereye alın. Tahta kaşıkla ezerek karıştırıp servis tabağına alın.Üzerine kırmızı pul biberle birlikte kızdırılmış tereyağı gezdirip tatlandırın."
            recipeText.text = recipe
        }
        else if selectedFood == "Edirne Ciğeri"{
            recipe = "Soğanları soyup piyaz şeklinde doğrayın. Sumak, tuz ve maydanozu ilave edip harmanlayın.Ciğerin zarını soyup damar ve sinirlerinden ayırın. Yaprak inceliğinde dilimler kesin. Ciğer dilimlerini una bulayın.Ayçiçeği yağını tavada kızdırıp ciğerleri birer dakika kadar çevirerek kızartın. Tuzla tatlandırıp servis tabağına alın. Garnitür ile birlikte servis yapın."
            recipeText.text = recipe
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
