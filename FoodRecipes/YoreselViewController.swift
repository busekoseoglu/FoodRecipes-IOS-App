//
//  YoreselViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 15.07.2021.
//

import UIKit

class YoreselViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var yoreselTableView: UITableView!
    
    var chosenFood = ""
    var chosenImage = UIImage()
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yoreselTableView.delegate = self
        yoreselTableView.dataSource = self
        
        foodNames.append("Keşkek")
        foodNames.append("Edirne Ciğeri")
        
        foodImages.append(UIImage(named: "keskek")!)
        foodImages.append(UIImage(named: "ciger")!)

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
        performSegue(withIdentifier: "yoreselToRecipe", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            foodNames.remove(at: indexPath.row)
            foodImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yoreselToRecipe"{
            let destinationVC = segue.destination as? YoreselRecipeViewController
            destinationVC?.selectedFood = chosenFood
            destinationVC?.selectedImage = chosenImage
        }
    }
    


}
