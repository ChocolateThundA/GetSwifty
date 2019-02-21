//
//  SecondViewController.swift
//  TableViews Rock
//
//  Created by Hughes,Jacob on 2/19/19.
//  Copyright © 2019 Hughes,Jacob. All rights reserved.
//

import UIKit

class TouristSitesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0{
                return sites.count
            }else{
                return -1
            }
    }
    var sites = ["Machu Picchu","Canadian Human Rights Musuem","Niagra Falls","Chicago Musuem of Science and Industry","The Pyramids"]
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"city")!
        
        cell.textLabel?.text = sites[indexPath.row]
        return cell
    }
    

    }

    
    
    




