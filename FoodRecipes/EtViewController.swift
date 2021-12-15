//
//  EtViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 15.07.2021.
//

import UIKit

class EtViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var etTableView: UITableView!
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    
    var chosenFood = ""
    var chosenImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        etTableView.delegate = self
        etTableView.dataSource = self

        foodNames.append("Bonfile")
        foodNames.append("Köfte")
        
        foodImages.append(UIImage(named: "bonfile")!)
        foodImages.append(UIImage(named: "kofte")!)
        
        navigationItem.title = "ET TARİFLERİ"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = foodNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFood = foodNames[indexPath.row]
        chosenImage = foodImages[indexPath.row]
        performSegue(withIdentifier: "etToRecipe", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            foodNames.remove(at: indexPath.row)
            foodImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "etToRecipe"{
            let destinationVC = segue.destination as? EtRecipeViewController
            destinationVC?.selectedFood = chosenFood
            destinationVC?.selectedImage = chosenImage
        }
    }

}
