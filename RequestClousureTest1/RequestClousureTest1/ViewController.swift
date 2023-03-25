//
//  ViewController.swift
//  RequestClousureTest1
//
//  Created by Gilmar Amaro on 25/03/23.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupRequest()
        
    }
    
    func setupTableView() {
        self.myTableView.dataSource = self
    //    self.myTableView.delegate = self
        let UINIB = UINib(nibName: "MyTableViewCell", bundle: nil)
        myTableView.register(UINIB, forCellReuseIdentifier: "Cell")
    }
    
    func setupRequest() {
        request.requestPizza { myPizzaRequest in
            self.request.arrayPizza = myPizzaRequest
            self.myTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.request.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            cell.setupCell(myPizza: request.arrayPizza?[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

