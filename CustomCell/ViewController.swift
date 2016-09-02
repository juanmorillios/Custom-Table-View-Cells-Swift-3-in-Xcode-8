//
//  ViewController.swift
//  CustomCell
//
//  Created by Juan Morillo on 2/9/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}

class TableViewController: UITableViewController {

    var arrayOfCellData = [cellData]()
    
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell : 1, text : "", image : ), ]
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
   
    
    
}

