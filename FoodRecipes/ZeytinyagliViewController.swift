//
//  ZeytinyagliViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 11.07.2021.
//

import UIKit

class ZeytinyagliViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    var chosenFoodName = ""
    var chosenFoodImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        foodNames.append("Barbunya")
        foodNames.append("Sarma")
        foodNames.append("Dolma")
        foodNames.append("Fasulye")

        
        foodImages.append(UIImage(named: "barbunya")!)
        foodImages.append(UIImage(named: "sarma")!)
        foodImages.append(UIImage(named: "biberdolmasi")!)
        foodImages.append(UIImage(named: "fasulye")!)

        
        navigationItem.title = "ZEYTİNYAĞLILAR"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = UITableViewCell()
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
        
        performSegue(withIdentifier: "zeytinyagliToRecipe", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zeytinyagliToRecipe"{
            let destinationVC = segue.destination as? ZeytinyagliRecipeViewController
            destinationVC?.selectedFoodName = chosenFoodName
            destinationVC?.selectedImage = chosenFoodImage
        }
    }

    

}
