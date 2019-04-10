//
//  TableViewController.swift
//  XMLLocal
//
//  Created by Nikhil Patil on 10/04/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.sectionIndexColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(section == 0)
        {
            print(bollywoodActors.count)
            return bollywoodActors.count
        }
        else if(section == 1)
        {
            print(tollywoodActors.count)
            return tollywoodActors.count
        }
        else if(section == 2)
        {
            print(hollywoodActors.count)
            return hollywoodActors.count
        }
        else
        {
            print(kollywoodActors.count)
            return kollywoodActors.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        if(indexPath.section == 0)
        {
            
            tableCell.actorsName.text = "🎭 . \(bollywoodActors[indexPath.row])"
            
        }
        else if(indexPath.section == 1)
        {
            
            tableCell.actorsName.text = "🎭 . \(tollywoodActors[indexPath.row])"
            
        }
        else if(indexPath.section == 2)
        {
            
            tableCell.actorsName.text = "🎭 . \(hollywoodActors[indexPath.row])"
            
        }
        else if(indexPath.section == 3)
        {
            
            tableCell.actorsName.text = "🎭 . \(kollywoodActors[indexPath.row])"
            
        }
        
        tableCell.backgroundView = UIImageView(image: UIImage(named: "Wallpaper"))
        
        return tableCell
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let display = view as! UITableViewHeaderFooterView
        display.textLabel?.font = UIFont(name: "Copperplate", size: 26)
        display.textLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //display.backgroundView = UIImageView(image: UIImage(named: "Wallpaper"))
        display.textLabel?.textAlignment = .center
        
    }
    
    //Title For Header In Section
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        if(section == 0)
        {
            return "Bollywood Actors"
        }
        else if(section == 1)
        {
            return "Tollywood Actors"
        }
        else if(section == 2)
        {
            return "Hollywood Actors"
        }
        else
        {
            return "Kollywood Actors"
        }
        
    }
    
    //Title For Footer In Section
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
    {
        if(section == 0)
        {
            return "--End of Bollywood Actors--"
        }
        else if(section == 1)
        {
            return "--End of Tollywood Actors--"
        }
        else if(section == 2)
        {
            return "--End of Hollywood Actors--"
        }
        else
        {
            return "--End of Kollywood Actors--"
        }
    }
    
    //Section Index Titles
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]?
    {
        return ["B","T","H","K"]
    }
    
    //Section For Section Index Title
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
    {
        if(title == "B")
        {
            return 0
        }
        else if(title == "T")
        {
            return 1
        }
        else if(title == "H")
        {
            return 2
        }
        else
        {
            return 3
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 81
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
