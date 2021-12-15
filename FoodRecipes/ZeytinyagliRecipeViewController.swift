//
//  ZeytinyagliRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class ZeytinyagliRecipeViewController: UIViewController {
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeText: UITextView!
    
    var selectedFoodName = ""
    var selectedImage = UIImage()
    var recipe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeImage.layer.cornerRadius = 8

        recipeName.text = selectedFoodName
        recipeImage.image = selectedImage
    
        
        if selectedFoodName == "Barbunya"{
            recipe = "1 gün önceden, barbunyaları tuzlu soğuk suya koyup, ağzını kapakla kapatıyoruz. Ertesi gün barbunyalarımız şişmiş olacak.Suyunu süzüp yıkıyoruz ve tenceremize alıp, üzerini geçecek kadar su koyup kaynamaya bırakıyoruz. Yaklaşık 20-25 dakika sonra (bu süre barbunyanızın cinsine göre değişebilir) barbunyalarımız hafif yumuşamış olacak. Suyunu süzüp bir kenara alıyoruz.Ayrı bir tencereye sıvı yağı  alalım, yemeklik doğranmış soğanı ve yarım ay şeklinde doğranmış havuçları alıp orta ateşte kavurmaya başlıyoruz.Sırasıyla ezilmiş veya rendelenmiş sarımsak, küp küp doğranmış patates, salçayı da alıp kavurmaya devam ediyoruz.Sonra süzmüş olduğumuz barbunyaları ilave edip, şekeri atıyoruz.En son 1,5 litre kadar sıcak su ve damak tadımıza göre tuzunu ilave edip, yemek iyice suyunu çekip, barbunyalar yumuşayıncaya kadar (gerekirse biraz daha su ilavesiyle) yemeğimizi pişiriyoruz.Pişen yemeği tencerenin içinde, kapağını açmadan, oda ısısına gelene kadar muhafaza ediyoruz.Oda ısısına geldikten sonra, buzdolabına kaldırıyoruz ve soğuyunca servis ediyoruz :) afiyet olsun."
            recipeText.text = recipe
        }
        else if selectedFoodName == "Sarma"{
            recipe = "Öncelikle salamura yapraklar 2-3 dakika sıcak suda bekletilir, yıkanır ve süzgece alınır.Geniş bir kabın içerisine soğanlar rendelenir üzerine zeytinyağı dökülür.Pirinç yıkanarak  kabın içerisine eklenir.Baharatlar, salça ve tuzu da ilave edildikten sonra ince kıyılmış maydanozu da eklenerek karıştırılır.(çiğden bir iç harç olacak)Yaprağın geniş kısmına iç harçtan konulur ve rulo gibi iki yanlardan kapatarak sarılır. Bu işleme yaprak bitene kadar devam edilir.Sardığımız yaprakların üzerine zeytinyağı ve limon dilimleri ekleyip yaklaşık 5-6 su bardağı kadar da sıcak su ilave edilerek kısık ateşte pişirilir.(üzerine sarmalar dağılmasın diye tencere kapağından biraz küçük ebatta bir kase kapatabilirsiniz.)"
            recipeText.text = recipe
        }
        else if selectedFoodName == "Dolma"{
            recipe = "Dolmalık biberlerimizi temizleyelim.Soğanları, domatesi küçük küçük doğrayalım.Domatesin kenarlarını biberlerin üstünü kapatmak için kullanacağız o yüzden önce kapatmak için kullanacaklarımızı kesersek daha iyi olur.İçini yemek harcında kullanabiliriz.Bir kaba hazırladığımız soğan, pirinç, salça, maydanoz, domates, karabiber, tuz, nane ve çok az sıvı yağı ekleyip iyice karıştıralım.Daha sonra bu harcı biberlere dolduralım.Harcı doldurduğumuz biberleri, tencereye dizelim.Harcı yaptığımız kabın içine sıcak su koyalım.O artık göz kararı olacak biberlerin yarısına kadar gelecek şekilde kabın içine koyduğumuz suya 1 yemek kaşığı salça ekleyelim ve eritelim.Bu karışımı biberlerin üstüne gelmeyecek şekilde tencereye, biberlerin yarısına gelene kadar dökelim.Kestiğimiz domateslerle biberlerin üstünü kapatalım.Daha sonra biberlerin üstüne çok az sıvı yağ veya zeytinyağı gezdirelim.Kısık ateşte yemeğimizi pişirelim."
            recipeText.text = recipe
        }
        else if selectedFoodName == "Fasulye"{
            recipe = "Yarım çay bardağı zeytinyağı tencereye alınır.Yemeklik doğranmış soğanlar kavrulur.Temizlenip arzuya göre kesilmiş olan fasulyeler eklenir.Tencerenin kapağı kapatılarak 6-7 dk kavrulur.Daha sonra 3 adet kabuğu soyulup doğranmış domates eklenir.1 su bardağı sıcak su ilave edilir.Fasulyeler pişene kadar tencerenin kapağı kapatılarak pişirilir.Ocaktan almadan tuzu eklenir.Zeytinyağı da eklenerek servis kaselerine alınır.Soğuk olarak servis edilir."
            recipeText.text = recipe
        }
        
    }
    

 

}
