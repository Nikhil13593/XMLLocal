//
//  ViewController.swift
//  XMLLocal
//
//  Created by Nikhil Patil on 10/04/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit

var bollywoodActors = [String]()
var tollywoodActors = [String]()
var hollywoodActors = [String]()
var kollywoodActors = [String]()

class ViewController: UIViewController,XMLParserDelegate {
    
    var XMLParserObj:XMLParser!
    var tableViewVC:TableViewController!
    
    
    var celebrities:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func parserDidStartDocument(_ parser: XMLParser)
    {
        // print("Did Start Document")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
    {
        // print("Did Start Element --> \(elementName)")
        
        if(elementName == "Bollywood" || elementName == "Tollywood" || elementName == "Hollywood" || elementName == "Kollywood")
        {
            celebrities = elementName
        }
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String)
    {
        
        
        var trimmedString = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if(trimmedString.count > 0)
        {
            if(celebrities! == "Bollywood")
            {
                bollywoodActors.append(trimmedString)
                print("Bollywood Actors ---> \(bollywoodActors)")
            }
            else if(celebrities! == "Tollywood")
            {
                tollywoodActors.append(trimmedString)
                print("Tollywood Actors ---> \(tollywoodActors)")
            }
            else if(celebrities! == "Hollywood")
            {
                hollywoodActors.append(trimmedString)
                print("Hollywood Actors ---> \(hollywoodActors)")
            }
            else if(celebrities! == "Kollywood")
            {
                kollywoodActors.append(trimmedString)
                print("Kollywood Actors ---> \(kollywoodActors)")
            }
            
        }
        
        // print("found Characters --> \(trimmedString)")
        
    }
    
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
    {
        // print("Did End Element --> \(elementName)")
    }
    
    func parserDidEndDocument(_ parser: XMLParser)
    {
        // print("Did End Document")
    }
    
    @IBAction func onLoadDataTap(_ sender: UIButton) {
        
        var XMLFilePath = Bundle.main.path(forResource: "ActorsData", ofType: "xml")
        
        XMLParserObj = XMLParser(contentsOf: URL(fileURLWithPath: XMLFilePath!))
        
        XMLParserObj.delegate = self
        
        XMLParserObj.parse()
        
        tableViewVC = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        
        self.present(tableViewVC, animated: true) {
            
            self.tableViewVC.tableView.reloadData()
        }
        
    }

}

