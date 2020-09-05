//
//  StaticTableViewController.swift
//  StaticTableViewCells
//
//  Created by VijayNew on 12/05/20.
//  Copyright © 2020 VijayNew. All rights reserved.
//

import UIKit

class StaticTableViewController: UITableViewController {
    
    @IBOutlet weak var staticTableView:UITableView!

    var isSignup:Bool! = false
    override func viewDidLoad() {
        super.viewDidLoad()
        print(isSignup)
        print("Adding First Line of code for testing")
        print("Adding second line of code")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
       

    @IBAction func signUpButton(_ sender: Any) {
        isSignup = true
        tableView.reloadData()
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        isSignup = false
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if !isSignup {
            if indexPath.row == 2 || indexPath.row == 4{
                return 0
            }
        }
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
}
