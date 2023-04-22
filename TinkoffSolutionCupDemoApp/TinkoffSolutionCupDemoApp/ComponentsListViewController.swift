//
//  ViewController.swift
//  TinkoffSolutionCupDemoApp
//
//  Created by Aleksandr Kondrashin on 22.04.2023.
//

import UIKit
import TSCDesignSystem

class ComponentsListViewController: UINavigationController {
    
    private let tableView: UITableView = {
        var view = UITableView()
        
            
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ComponentsListViewController: UITableViewDataSource, UITableViewDelegate {

   func numberOfSections(in tableView: UITableView) -> Int {
      
   }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
       let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
       // configure the cell with data from your data source
       return cell
   }

   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
   }

}

