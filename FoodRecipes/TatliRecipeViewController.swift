//
//  TatliRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 12.07.2021.
//

import UIKit

class TatliRecipeViewController: UIViewController {

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
        
        if selectedFood == "Suffle"{
            recipe = "Çikolatalı sufle yapmaya başlamadan önce İlk olarak fırını 220 derecede çalıştırın.Tereyağı ve bitter çikolataları teflon tavada kısık ateşte karıştırarak eritin. Eridikten sonra ocağı kapatarak unu ilave edin ve iyice karıştırın.Ayrı bir kapta yumurta ve şekeri karışım beyazlayana kadar çırpın. Şeker tadının ön plana çıkması için tuzu ekleyip çırpın.Çikolatalı harcı ilave ederek mikserle tekrar çırpın. Hamurumuz hazır.Sufle kaplarınızı ya da ısıya dayanıklı küçük kaplarınız varsa içlerini yağlayarak hamurdan eşit şekilde hepsine paylaştırın. Yaklaşık 4 kap çıkıyor.Daha önceden fansız çalıştırdığınız ve ısıttığınız  fırında 7-8 dk da sufleniz hazır. Fırından aldıktan sonra bir kaç dakika ilk sıcaklığının geçmesini bekleyin sonra ister tabağa çevirip ister kaseden yiyebilirsiniz.Kabınızı yağlamışsanız yapışmayacaktır. Folyodan sufle kapları var onları da kullanabilirsiniz, onlarda da suflenin çok rahat çıktığını göreceksiniz."
            recipeText.text = recipe
        }
        else if selectedFood == "Puding"{
            recipe = "Orta boy bir tencerenin içerisine sütü aktarın. Üzerine şeker, un, nişasta ve kakaoyu ilave ederek güzelce çırpın.Güzelce çırptıktan sonra ocağın üzerine alın. Tel çırpıcı yardımıyla çırparak ya da tahta kaşık yardımıyla karıştırarak kıvam alana kadar pişirin.Üzerinde göz göz kabarcıklar oluşmaya ve kıvamı yoğunlaşmaya başladığında ocaktan alın.Ocaktan aldıktan sonra henüz kendi sıcağındayken içerisine tereyağını ve vanilyayı koyun ve güzelce karıştırın.Ardından kaplara bölüştürüp ılımaya bırakın. Ilıdıktan sonra buzdolabında 1 saat kadar dinlendirin ve üzerini süsleyerek afiyetle tüketin."
            recipeText.text = recipe
        }
        else if selectedFood == "Waffle"{
            recipe = "Waffle yapmak için yumurtaların aklarını ve sarılarını ayırıyoruz.Yumurtanın akını, vanilyanın yarısıyla mikserde köpürene kadar çırpıyoruz.Yumurtanın sarısıyla, toz şekeri de ayrı bir kapta çırpıyoruz.Yumurta akıyla, vanilya karışımının üzerine bu karışımı ve diğer tüm malzemeleri döküp karıştırıyoruz ve hamurumuz hazır.Bundan sonra, bu hamuru waffle makinesine koyuyoruz ve pişiriyoruz.Pişen waffle hamurunun üzerine dilediğimiz malzemeleri koyuyoruz ve süslüyoruz."
            recipeText.text = recipe
        }
        else if selectedFood == "Pasta"{
            recipe = "Yumurtanın beyaz ve sarılarını ayıralım. Beyazları biraz çarptıktan sonra limon suyunu ekleyelim ve kâr gibi krema kıvamına gelesiye kadar çırpalım.Şekerin yarısını yumurta beyazına kaşık kaşık ekleyerek mikser ile 5 6 dakika çırpalım.Köpük köpük kar gibi elde ettiğimiz yumurta beyazımız hazır.Kakao ve kahveyi salep kıvamında olacak şekilde suda eritelim ve bir kenara alalım. Şimdi sıra yumurta sarılarında.Yumurta sarılarına kalan şekeri ekleyelim ve yine krema kıvamında olasıya kadar çırpalım.Un ve yumurta beyazı hariç diğer malzemeleri yumurta sarılı harca ekleyip homojen bir şekilde olasıya kadar çırpalım.Unu yavaş yavaş ilave ederek spatula ile söndürmeden karıştıralım.Yumurta beyazını  4 defa da olacak şekilde spatula ile katlaya katlaya yedirelim.Kullanacağımız baton kalıbı yağlı kağıt ile kaplayalım. Harcı içine dökelim.Şimdi önemli olan nokta baton kalıbımız sığacak bir şekilde başka bir tepsinin içine baton kalıbımızı  oturtup diğer tepsinin içine yarısına kadar kaynar su ekleyelim.Önceden ısıtılmış 160 derece alt üst ayarlı fırın da (Fan kesinlikle kapalı olacak ) 30 dakika pişirelim.Daha sonra fırın ayarımızı 140 dereceye indirelim ve 45 dakika da bu şekilde pişirelim.Bu sıcaklıklar baton kalıp için geçerlidir. 20 cm lik yuvarlak kalıp da aynı süreye uyabilirsiniz fakat başka kalıp kullanacaksanız süreler değişir.Kekimiz pişerken hiç kapak açılmayacak ve de kurdan testi yapılmayacak.Bu noktalara uyduktan sonra elinizde harika bir pasta olacak.   denemeyen kalmasın"
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
