//
//  ViewController.swift
//  StickyHeaderView
//
//  Created by Zabeehullah Qayumi on 11/22/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

struct postSruct {
    var name : String?
}

class TableViewController: UITableViewController {
    
    var arrOfPost = [postSruct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrOfPost = [postSruct.init(name: "First Header"),
                     postSruct.init(name: "Second Header"),
                     postSruct.init(name: "Third Header"),
                     postSruct.init(name: "Fourth Header"),
                     postSruct.init(name: "Fifth Header")]

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrOfPost.count
        
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        
        headerView.lbl.text = arrOfPost[section].name
        
        return headerView
        
    }


}

