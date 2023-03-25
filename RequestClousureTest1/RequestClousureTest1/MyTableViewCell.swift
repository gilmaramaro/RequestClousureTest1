//
//  MyTableViewCell.swift
//  RequestClousureTest1
//
//  Created by Gilmar Amaro on 25/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var namePizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(myPizza: PizzaElement?) {
        let urlImage = URL(string: myPizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        namePizza.text = myPizza?.name
    }
}
