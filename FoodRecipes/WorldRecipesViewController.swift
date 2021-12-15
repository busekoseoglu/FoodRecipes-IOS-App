//
//  WorldRecipesViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class WorldRecipesViewController: UIViewController {

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
        
        
        recipeText.setContentOffset(.zero, animated: true)
        
        if selectedFoodName == "Taco"{
            recipe = "Tavukları minik minik doğrayıp, sotelemeye başlayın. Üzerine tuz, karabiber ve kekik ekleyerek ocaktan alın. Avokadoları çatal ile ezin. İçerisine ince kıyılmış soğan, tuz, karabiber, limon suyu ve zeytinyağı ekleyin. Tacoların içerisine önce avokadolu karışımı, ardından tavukları ekleyerek servis edin."
            recipeText.text = recipe
        }
        else if selectedFoodName == "Sushi"{
            recipe = "Pirinç ılık su ile yarım saat ıslatılır.Daha sonra nişastası gidene kadar iyice yıkanır ve 1 bardak sıcak su ile yarım dk en küçük ocakta tam açık ateşte, sonra suyunu tamamen çekene kadar kısık ateşte pişirilir.Pirinç pişince bir karıştırılıp üzerine bir peçete kapatılıp 15 dk dinlendirilir.Sonra cam bir kaba alınıp karıştırılarak iyice soğuması sağlanır.Küçük bir cezvede 50 ml pirinç sirkesi, tuz ve şeker eriyene kadar ısıtılır, hemen pirinçlere eklenip 1-2 dk sürekli karıştırılarak homojen bir şekilde pirinçle karışması sağlanır ve ara ara karıştırılarak dinlendirilip soğutulur.Avokado, havuç ve Salatalık kürdan gibi ince ince (Jülyen) doğranır. Bir kaseye su doldurulup hazırda bekletilir.Nori yaprağının parlak kısmı bize bakacak şekilde hasır bir servisin üzerine açılır.Soğuyan pirinç 3 parçaya ayrılır, her nori yaprağına pirinçin 1/3ü kaşıkla eklenir, parmak uçları su ile ıslatılarak pirinç yaprağın yer yerine eşit bir şekilde yayılır.Yaprağın bir tarafına avokado, havuç ve salatalıklar eklenir.Üzerine salamura somon eklenir, yavaş yavaş, hasır servis ile iyice sıkılarak rulo haline getirilir.Bıçak suya daldırılıp rulonun iki ucundaki sarkan parçalar kesilir, tercihe göre dilimlenerek yanında soya sosu ve wasabi ile servis edilir. Afiyet olsun:)"
            recipeText.text = recipe

        }
        else if selectedFoodName == "Nachos"{
            recipe = "Kabuğunu soyduğunuz domatesi dilimleyin. Çekirdekli kısımlarını aldıktan sonra küçük parçalar halinde doğrayın.Dilimlenmiş jalapeno biberi turşusunun suyunu süzün. Çekirdeksiz yeşil zeytinleri iki eşit parçaya bölün.Baharatlı mısır cipslerini yağlı kağıt serdiğiniz fırın tepsisine dizin.Doğranmış yeşil zeytin ve domates parçalarını, jalapeno turşusu dilimlerini cipslerin üzerine serpiştirin.Son olarak rendelenmiş cheddar ve mozzarella peyniri eklediğiniz cipsleri, mikrodalga ya da önceden ısıtılmış fırında peynirler eriyene kadar, kısa bir süre ısıtın.Ekşi krema ya da çok az suyla karıştırılmış süzme yoğurt ve guacamole sos eşliğinde bekletmeden sevdiklerinizle paylaşın."
            recipeText.text = recipe
        }
        else if selectedFoodName == "Noodle"{
            recipe = "Havuçlar ile birlikte etleri haşlayın. Üzerinde oluşan köpüğü sık sık toplayın. Kaynadıktan sonra içerisine zencefil, tuz, karabiber, ezilmiş sarımsak ve taze soğanları ekleyip tekrar kaynatın. Ardından noodle paketini ekleyin. Noodle yumuşayınca maydanozları üzerine serpiştirerek servis edin."
            recipeText.text = recipe
        }
        else if selectedFoodName == "Bun"{
            recipe = "Su ve ılık sütü bir kapta birleştirin.İçerisine mayayı ve şekeri ekleyip karıştırın ve bir kenarda bekletin.Unu derin bir kaba alın.İçerisine kabartma tozu ve biraz da tuz ekleyip elinizle hafifçe karıştırın ve ortasını açın.Zeytinyağını ve ardından hazırladığınız sütü ekleyin.Parmaklarınızı kullanarak ve dıştan içe doğru karıştırarak hamuru oluşturun.Hamuru tezgahın üzerine alın ve biraz da tezgahın üzerinde yoğurun.Toplamda 5-6 dakika yoğurmanız yeterli olacaktır.Hamuru tekrar kaseye alın, üzerini temiz bir mutfak bezi ile örtün ve ılık bir yerde (kapalı fırın ya da kaloriferin üzerinde olabilir) 45 dakika mayalanmaya bırakın.Etin sosu için; taneli hardal, biber salçası, biraz bal, sarımsak tozu, paprika ve biraz zeytinyağını bir kasede karıştırın.Sosu etin üzerinden dökün ve etleri karıştırarak sosu yedirin.Kurutulmuş acı biberin çekirdeklerini çıkarın ve elinizle biraz ufalayıp onu da ekleyin.Biraz karıştırdıktan sonra, üzerini streç film ile kaplayın ve buzdolabına alın.Pişirmeden 20 dakika önce buzdolabından alıp oda sıcaklığına getirin.Mayalanan hamuru silpatın ya da tezgahın üzerine alın.Hamuru 1 parmak kalınlığında olacak şekilde açın.Bir bardak ağzı ya da yuvarlak kalıp kullanarak hamurdan daireler çıkartın.Hamurları ortadan ikiye katlayın ve merdane yardımıyla çok fazla bastırmadan üzerinden geçirin ve hafif yapışmasını sağlayın.Bir tencereye su alın ve suyu kaynama noktasına getirin.Üzerine bir süzgeç yerleştirin ve suyla temas etmemesine dikkat edin.Bu aşamada, varsa buhar sepeti kullanmanız da iyi olacaktır.Hamurları buhar sepeti ya da süzgecin içerisine koyun.Üzerine bir tane temiz tülbent yerleştirin ve kapağını kapatın.8 dakika boyunca buharda pişirin.Bir tavayı ocağa alın ve ısıtın.Tava ısınınca marine ettiğiniz etleri tavaya alın ve 2-3 dakika soteleyin.Üzerinden misket limonu suyu sıkın.Ekmeğin ortasını açın ve içine etten yerleştirin.Süslemek için biraz da misket limonu kabuğu rendesi ve biraz da kavrulmuş susam serpebilirsiniz."
            recipeText.text = recipe
        }
    }
    

}
