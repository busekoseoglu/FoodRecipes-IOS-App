//
//  MezeViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class MezeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var mezeTableView: UITableView!
    
    var chosenFood = ""
    var chosenImage = UIImage()
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mezeTableView.delegate = self
        mezeTableView.dataSource = self
        
        foodNames.append("Haydari")
        foodNames.append("İçli Köfte")
        foodNames.append("Semizotu")
        
        foodImages.append(UIImage(named:"haydari")!)
        foodImages.append(UIImage(named:"iclikofte")!)
        foodImages.append(UIImage(named:"semizotu")!)
        
        navigationItem.title = "MEZELER"

        
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
        
        performSegue(withIdentifier: "mezeToRecipe", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mezeToRecipe"{
            let destinationVC = segue.destination as? MezeRecipeViewController
            destinationVC?.selectedFood = chosenFood
            destinationVC?.selectedImage = chosenImage
        }
    }
}
