//
//  MezeRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class MezeRecipeViewController: UIViewController {

    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeText: UITextView!
    
    var selectedFood = ""
    var selectedImage = UIImage()
    var recipe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImage.layer.cornerRadius = 8
        recipeImage.inputView?.contentMode = UIView.ContentMode.scaleAspectFill
        
        recipeName.text = selectedFood
        recipeImage.image = selectedImage
        
        if selectedFood == "Haydari"{
            recipe = "İlk olarak tavaya tereyağını alınarak kızdırılır.Daha sonra naneyi ekleyerek 1-2 tur çevrilir ve ocaktan alınır.Karıştırma kabına süzme yoğurt alınır.Beyaz peynir çatalla ezilerek ufalanır, dereotu ince kıyılır, yoğurdun üzerine ilave edilir.Son olarak naneli tereyağı, ezilmiş sarımsak, tuz eklenerek karıştırılır.Servis tabağına alınarak üzeri zeytinyağı ve dereotu ile süslenir, servis edilir. Afiyet olsun."
            recipeText.text = recipe
        }
        else if selectedFood == "İçli Köfte"{
            recipe = "Soğanlar ince ince doğranır. Tavaya sıvı yağ alınıp soğanlar eklenir ve pembeleşinceye kadar kavrulur.Kavrulan soğanlara Kıyma eklenir suyunu çekinceye kadar kısık ateşte kavrulur.Daha sonra salça eklenir 3 dk daha kavrulur. Biraz su eklenir tekrar (yumuşak kalması gerekiyor kuru olmamalı).Baharatlar, tuz, ceviz ve ince kıyılmış maydanoz eklenip ocağın altı kapatılır. Soğumaya bırakılır.İnce bulgur 1 bardak soğuk su ile kısır yapar gibi ıslatılır.Suyu çekilince irmik salça baharatlar tuz eklenip 15 dk boyunca azar azar suyu eklenip iyice yoğurulur.Daha sonra un eklenir 5 dk daha yoğurulur. Ele alınıp yuvarlandığında dağılmıyorsa tamamdır. Ele yapışabilir. Eller iyice yıkanır tekrar hamur ele alındığında yapışmaz.Cevizden biraz daha büyük parçalar alınıp baş parmak ile ara ara su alınarak içi ince bir şekilde açılır. İç koyulur ve yukarı doğru limon şeklinde uzatılır. Hepsine aynı işlem uygulanır.Aşamaları çekemedim çünkü ellerim hamurlu iken fotoğraf makinesini tutamadım.Biten içli köfteler kızgın 1 bardak sıvı yağda kızartılır."
            recipeText.text = recipe
        }
        else if selectedFood == "Semizotu"{
            recipe = "Semizotlarının yapraklarını ayıklayıp birkaç kez iyice yıkayalım. Sonra suyunun süzülmesi için bekletelim. Gerekirse kağıt havlu ile kurulayalım.Süzme yoğurt ve yoğurdu çırpalım. Süzme yoğurt yoksa yoğurdun suyunu iyice süzdürüp normal yoğurt da kullanabilirsiniz. Tuz, nane ve seviyorsanız tercihe bağlı dövülmüş sarımsak ekleyelim ve çırpalım.Semizotlarını ekleyip karıştıralım.Yoğurtlu semizotu salatamız servise hazır, dilerseniz üzerine zeytinyağı, toz biber veya pulbiber gezdirip servis edebilirsiniz. Afiyet olsun."
            recipeText.text = recipe
        }
        
    }
    

    
}
