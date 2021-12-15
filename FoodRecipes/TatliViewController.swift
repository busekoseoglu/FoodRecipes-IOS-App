//
//  TatliViewController.swift
//  FoodRecipes
//
//  Created by Buse Köseoğlu on 12.07.2021.
//

import UIKit

class TatliViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tatliTableView: UITableView!
    
    var foodNames = [String]()
    var foodImages = [UIImage]()
    var chosenFood = ""
    var chosenImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tatliTableView.delegate = self
        tatliTableView.dataSource = self
        
        
        foodNames.append("Suffle")
        foodNames.append("Puding")
        foodNames.append("Waffle")
        foodNames.append("Pasta")
        
        foodImages.append(UIImage(named: "suffle")!)
        foodImages.append(UIImage(named: "puding")!)
        foodImages.append(UIImage(named: "waffle")!)
        foodImages.append(UIImage(named: "pasta")!)
        
        navigationItem.title = "TATLILAR"
        
    }
    @objc func addButtonClicked(){
        
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
        performSegue(withIdentifier: "tatliToRecipe", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tatliToRecipe"{
            let destinationVC = segue.destination as? TatliRecipeViewController
            destinationVC?.selectedFood = chosenFood
            destinationVC?.selectedImage = chosenImage
        }
    }
    


}
