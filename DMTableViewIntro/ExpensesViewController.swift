//
//  ExpensesViewController.swift
//  DMTableViewIntro
//
//  Created by David Ruvinskiy on 4/4/23.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let expenses = ["Rent", "Groceries", "Utilities", "Transportation", "Entertainment", "Clothing", "Eating Out", "Travel", "Insurance", "Phone Bill"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        let expense = expenses[indexPath.row]
        
        var config = cell.defaultContentConfiguration()
//        config.text = "pie"
        config.text = expense
        
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return expenses.count
    }
    
    func configureTableView() {
        tableView.dataSource = self
    }
}
