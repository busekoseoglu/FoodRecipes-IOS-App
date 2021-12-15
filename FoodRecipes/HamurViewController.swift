//
//  HamurViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class HamurViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var hamurTableView: UITableView!
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    
    var chosenFood = ""
    var chosenImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hamurTableView.delegate = self
        hamurTableView.dataSource = self

        foodNames.append("Börek")
        foodNames.append("Poğaça")
        foodNames.append("Mantı")
        foodNames.append("Pişi")
        
        foodImages.append(UIImage(named: "borek")!)
        foodImages.append(UIImage(named: "pogaca")!)
        foodImages.append(UIImage(named: "manti")!)
        foodImages.append(UIImage(named: "pisi")!)
        
        navigationItem.title = "HAMUR İŞLERİ"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = foodNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            foodNames.remove(at: indexPath.row)
            foodImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFood = foodNames[indexPath.row]
        chosenImage = foodImages[indexPath.row]
        
        performSegue(withIdentifier: "hamurToRecipe", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "hamurToRecipe"{
            let destinationVC = segue.destination as? HamurRecipeViewController
            destinationVC?.selectedFood = chosenFood
            destinationVC?.selectedImage = chosenImage
        }
    }
    
}
