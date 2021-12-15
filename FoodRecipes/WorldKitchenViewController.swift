//
//  WorldKitchenViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 10.07.2021.
//

import UIKit

class WorldKitchenViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    

    var foodNames = [String]()
    var foodImages = [UIImage]()
    var chosenFoodName = ""
    var chosenFoodImage = UIImage()
    
    @IBOutlet weak var worldTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        worldTable.delegate = self
        worldTable.dataSource = self

        
        foodNames.append("Taco")
        foodNames.append("Sushi")
        foodNames.append("Nachos")
        foodNames.append("Noodle")
        foodNames.append("Bun")
        
        foodImages.append(UIImage(named: "dunyamutfagi")!)
        foodImages.append(UIImage(named: "sushi")!)
        foodImages.append(UIImage(named: "nachos")!)
        foodImages.append(UIImage(named: "noodle")!)
        foodImages.append(UIImage(named: "bun")!)
        
        navigationItem.title = "DUNYA MUTFAĞI"
        
        
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
        if editingStyle == .delete {
            foodNames.remove(at: indexPath.row)
            foodImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFoodName = foodNames[indexPath.row]
        chosenFoodImage = foodImages[indexPath.row]
        
        performSegue(withIdentifier: "worldTableToRecipes", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "worldTableToRecipes"{
            let destinationVC = segue.destination as? WorldRecipesViewController
            destinationVC?.selectedFoodName = chosenFoodName
            destinationVC?.selectedImage = chosenFoodImage
        }
    }

}
