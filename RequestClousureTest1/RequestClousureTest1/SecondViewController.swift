//
//  SecondViewController.swift
//  RequestClousureTest1
//
//  Created by Gilmar Amaro on 25/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    var connectionScreen: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScreenTwo()
    }
    
    func myScreenTwo() {
        let urlImage = URL(string: connectionScreen?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel1.text = "Pizza Pequena: R$\(connectionScreen?.priceP ?? 0.0)"
        myLabel2.text = "Pizza Media: R$\(connectionScreen?.priceM ?? 0.0)"
        myLabel3.text = "Pizza Grande: R$\(connectionScreen?.priceG ?? 0.0)"
    }
    
    @IBAction func myButton(_ sender: Any) {
        if let myScreen2 = self.storyboard?.instantiateViewController(withIdentifier: "ScreenThree") as? ThirdViewController {
            myScreen2.connection3 = self.connectionScreen
            self.navigationController?.pushViewController(myScreen2, animated: true)
        }
    }
}
