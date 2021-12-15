//
//  HamurRecipeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class HamurRecipeViewController: UIViewController {

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
        
        if selectedFood == "Börek"{
            recipe = "Patatesleri haşlayın, kabuklarını soyarak küçük küçük doğrayın.Rendelediğiniz ya da küçük doğradığınız soğanı sıvı yağda kavurduktan sonra patatesleri ilave edin ve nane, tuz, kırmızı toz biberi de ekleyerek kavurun.İç harcını soğumaya bırakın.Sıvı yağ, sirke, un ve tuzu iyice çırparak boza kıvamında sos hazırlayın.Yufkalardan bir tanesini serin ve yarısının üzerine hazırladığınız sostan 3-4 yemek kaşığı dökerek fırça ile yayın.Yufkanın diğer yarısını soslu kısmın üzerine kapatın ve üzerini tekrar sos ile ıslatın. Yapım aşamasında sirke kokusu beni endişelendirmişti ama piştikten sonra çıtır çıtır nefis bir börek oldu. )2 katlı yufkanızı pizza dilimi şeklinde 6 parça kesiyorsunuz ve üçgenlerin kalın kısımlarına iç harcından koyarak sigara böreği sarar gibi sarıyorsunuz.Tüm malzemeleri aynı şekilde yaptıktan sonra pişirme kağıdı serili fırın tepsisine alalım,  üzerine yumurta sarısı sürüp susam serperek 180 derece ısıttığınız fırında patatesli börekler kızarana kadar pişiriyorsunuz.Çıtır çıtır patatesli börek tarifimiz servise hazır. Afiyet olsun.."
            recipeText.text = recipe
        }
        else if selectedFood == "Poğaça"{
            recipe = "İlk olarak poğaçamızın hamurunuz hazırlayalım. Bir kabın içine malzemelerin tamamını koyup yoğurarak yumuşak bir hamur elde edelim. Unu yavaş yavaş ekleyerek hamurun sertliğini ayarlayalım.Poğaçalarımızı şekillendirelim. Fotoğrafta görüldüğü gibi hamuru iyice yoğurduktan sonra minik bezeler yapıp yağlı kağıt serdiğimiz fırın tepsisine yerleştirelim.Verilen ölçülere göre yaklaşık 11 tane poğaça elde edebilirsiniz. Eğer poğaçalarınızı daha küçük yaparsanız 15-16 adet poğaça elde edebilirsiniz. Fırına sürmeden önce bir süre hamuru dinlendirmenizi öneririm.Poğaçalarımızı fırına sürelim. Üzerlerine yumurta sarısı sürüp, 180 derece ısıtılmış fırında üzeri kızarıncaya kadar pişirin."
            recipeText.text = recipe
        }
        else if selectedFood == "Mantı"{
            recipe = "Genişçe bir kapta unun ortasını açın, yumurtayı kırın, bir tutam tuz serpin ve azar azar su ilave ederek hamuru yoğurun.Hamurun ne çok kaskatı ne de çok yumuşak olmalıdır.Hamurdan bezeler yaparak, bunları teker teker, hazır yufkadan daha kalınca olarak açın.Diğer taraftan kıymanı içine kırmızıbiber, karabiber, tuz ve rendelemiş olduğunuz soğanı ekleyerek biraz yoğurun.Kıymadan kopardığınız küçük parçaları kare kare kesmiş olduğunuz hamurun üzerine koyun.Hamurların 4 köşesini bir araya getirip şekillendirin.Mantılar hazır olunca kaynayan suya atarak 15-20dk kadar pişirin.Bu arada küçük bir tavada tereyağını eriyip salçayı kavurun.Pişmekte olan mantının suyuna ilave edin.5 dk kadar daha pişirdikten sonra ocaktan alın.Mantıyı tabaklara koyun üzerine sarımsaklı yoğurt dökün.Nane ve bol sumak serperek servis edebilirsiniz.Dilerseniz pulbiber de kullanabilirsiniz. Afiyet olsun."
            recipeText.text = recipe
        }
        else if selectedFood == "Pişi"{
            recipe = "Mayasız pişi yapımı için, ilk olarak su, yumurta ve yoğurdu bir kabın içerisine alın ve çırpın.Ardından üzerine tuz, kabartma tozu ve elenmiş unu yavaş yavaş ekleyerek ele yapışmayacak bir kıvama gelinceye kadar yoğurun.Hamuru iki parçaya ayırın ve merdane yardımıyla açın. Açılan hamur ne çok ince, ne de çok kalın olmalıdır.Hazırladığınız hamurları bıçak yardımıyla karelere ayırın.Yapışmaz tavanın içerisine ayçiçek yağı dökün ve yağ kızmaya başladığında hamurları içerisine atın.Bir taraf tamamen piştikten sonra, diğer tarafa çevirin ve kızartın. Kızaran hamurları servis tabağına alın. Afiyet olsun."
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
