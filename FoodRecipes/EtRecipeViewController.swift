//
//  EtRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 15.07.2021.
//

import UIKit

class EtRecipeViewController: UIViewController {

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
        
        if selectedFood == "Bonfile"{
            recipe = "Bonfile etlerin sinirlerini temizleyin.200 gr'lık parçalar halinde porsiyonlayın.Zeytinyağı ve soda ile etleri ovun.Soğanları iri iri doğrayın. Sarımsağı ezin ve etlere ilave edin.Baharatları ve ince kıyılmış biberiyeyi etle karıştırın ve buzdolabında 5-6 saat marinasyona bırakın.Etleri pişireceğiniz tavayı ısıtın ve tereyağını eritin.Eriyen ve ısınan tereyağına etleri ilave edin ve her iki yüzü de iyice pişene kadar pişirmeye devam edin. İşte bu kadar, afiyet olsun."
            recipeText.text = recipe

        }
        else if selectedFood == "Köfte"{
            recipe = "Soğanları rendeleyelim.Maydanozu ince kıyalım.Bir tepsiye alalım baharat ekmek.Kıyması ve tuzunu ilave edelim.Güzelce yoğuralım. Ne kadar yoğurursak o kadar lezzetli köftelerimiz olur.İstediğimiz şekli verip vaktiniz varsa buzdolabında dinlendirelim. Dinlenmiş köfteler çok daha lezzetli olur bilginize.Sıvı yağda kızartıp sıcak servis yapalım."
            recipeText.text = recipe
        }
        
    }

}
