//
//  ViewController.swift
//  UITableViewDemoUsingSwift
//
//  Created by Hardik Trivedi on 26/05/2016.
//  Copyright © 2016 TheiHartFirm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var marrData: NSMutableArray = NSMutableArray()

//    MARK: View Life Cycle Methods
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.loadData()
    }
    
//    MARK: UITableView Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return marrData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
//    ** Uncomment below code for Simple tableView
        /*
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = marrData.objectAtIndex(indexPath.row).valueForKey("name") as? String
        
        return cell
        */
        
//  below code for Custom tableView
        
        let customCell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        customCell.lblColorName.text = marrData.objectAtIndex(indexPath.row).valueForKey("name") as?String
        customCell.vwColor.backgroundColor = marrData.objectAtIndex(indexPath.row).valueForKey("color") as? UIColor
        
        return customCell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.backgroundColor = marrData.objectAtIndex(indexPath.row).valueForKey("color") as? UIColor
    }
    
//    MARK: Other Methods
    
    func loadData()
    {
        marrData = [["name": "Red", "color": UIColor.redColor()], ["name": "Blue", "color": UIColor.blueColor()], ["name": "Green", "color": UIColor.grayColor()], ["name": "Black", "color": UIColor.blackColor()], ["name": "Yellow", "color": UIColor.yellowColor()]]
    }

}

