//
//  ViewController.swift
//  TableView
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var users: [UserModel] = [
        UserModel(avatar: UIImage(systemName: "person")!, name: "James Gosling"),
        UserModel(avatar: UIImage(systemName: "person")!, name: "Dennis Ritchie"),
        UserModel(avatar: UIImage(systemName: "person")!, name: "Alan Turing")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

}

//MARK: - Tableview Datasource Methods
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
}



