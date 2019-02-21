//
//  FirstViewController.swift
//  TableViews Rock
//
//  Created by Hughes,Jacob on 2/19/19.
//  Copyright © 2019 Hughes,Jacob. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return cities.count
        }else{
            return -1
        }
    }
    var cities = ["Paris","Helsinki","Dehli","Hong Kong","Lima","Mexico City","Amsterdam"]

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"city")!
    
    cell.textLabel?.text = cities[indexPath.row]
    return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//take the second view controller and name it after famous tourist sites'
    //you may rename the view controllers using refactoring
    //hope this submits
}

