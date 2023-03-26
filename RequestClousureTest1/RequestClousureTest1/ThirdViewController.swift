//
//  ThirdViewController.swift
//  RequestClousureTest1
//
//  Created by Gilmar Amaro on 25/03/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    var connection3: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScreen3()
    }
    
    func myScreen3() {
        let urlImage = URL(string: connection3?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel1.text = connection3?.name
        myLabel2.text = "Nota Da Pizza: \(connection3?.rating ?? 0)"
    }
}
