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
        
        arrayOfCellData = [cellData(cell : 1, text : "Barcelona 1", image : #imageLiteral(resourceName: "barcelos-705973_640") ),
                           cellData(cell : 2, text : "Barcelona 2", image : #imageLiteral(resourceName: "barcelos-705968_640") ),
                        cellData(cell : 1, text : "Garden", image : #imageLiteral(resourceName: "gardens-458292_640") )]
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return arrayOfCellData.count
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1 {
        
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        
        
        } else  if arrayOfCellData[indexPath.row].cell == 2 {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
            
        } else {
        
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        
        
        }

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
        
            return 250
 
        }
        else if arrayOfCellData[indexPath.row].cell == 2 {
         
           return 90
        }
        else {
        
            return 250
        }
    
    }
   
    
    
}

