//
//  allflatsViewController.swift
//  property
//
//  Created by NewHorizons on 10/24/20.
//  Copyright © 2020 Educations. All rights reserved.
//

import UIKit

class allflatsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   var i = 0
    var farea = "hawally"
    var fbeed = "4"
    var fdesc = "flat 3 Bedroom 1 bathroom with reciption"
    var fprice = "350 KD"
    var descriptions:Array<String> = Array<String>()
    var bedroom:Array<String> = Array<String>()
    
    var area:Array<String> = Array<String>()
    var beedroom:Array<String> = Array<String>()
    var images = [#imageLiteral(resourceName: "pp1"),#imageLiteral(resourceName: "pp2"),#imageLiteral(resourceName: "pp1"),#imageLiteral(resourceName: "pp2"),#imageLiteral(resourceName: "pp1"),#imageLiteral(resourceName: "pp2"),#imageLiteral(resourceName: "pp1"),#imageLiteral(resourceName: "pp2"),#imageLiteral(resourceName: "pp1"),#imageLiteral(resourceName: "pp2")]
    var propertyName:Array<String> = Array<String>()
     var propertyPrice:Array<String> = Array<String>()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return propertyName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = propertyName[indexPath.row]
        cell?.detailTextLabel?.text = propertyPrice[indexPath.row]
        cell?.imageView?.image = images[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        propertyName.append("Hawally flat 3 Bedroom")
        propertyName.append("salmiya flat 4 Bedroom")
propertyName.append("Hawally flat 2 Bedroom")
        propertyName.append("abu halifa flat 3 Bedroom")
        propertyName.append("jabria flat 3 Bedroom")
        propertyName.append("Hawally flat 3 Bedroom")
        propertyName.append("slamiya flat 3 Bedroom")
        propertyName.append("jabria flat 4 Bedroom")
        propertyName.append(farea + " flat " + fbeed + " Bedroom ")
        
        area.append("hawally")
        area.append("salmiya")
        area.append("hawally")
        area.append("abu halifa")
        area.append("jabria")
        area.append("hawally")
        area.append("salmiya")
        area.append("jabria")
        area.append(farea)
        
        bedroom.append("3 bedroom")
        bedroom.append("4 bedroom")
        bedroom.append("2 bedroom")
        bedroom.append("3 bedroom")
        bedroom.append("3 bedroom")
        bedroom.append("3 bedroom")
        bedroom.append("3 bedroom")
        bedroom.append("4 bedroom")
        bedroom.append(fbeed + "bedroom")
        
        propertyPrice.append("250KD")
        propertyPrice.append("350KD")
        propertyPrice.append("150KD")
        propertyPrice.append("450KD")
        propertyPrice.append("550KD")
        propertyPrice.append("450KD")
        propertyPrice.append("350KD")
        propertyPrice.append("250KD")
        propertyPrice.append(fprice)
        
        descriptions.append("flat 3 Bedroom 2 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 2 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 1 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 2 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 1 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 2 bathroom with reciption")
        descriptions.append("flat 3 Bedroom 1 bathroom with reciption7")
        descriptions.append("flat 3 Bedroom 1 bathroom with reciption")
        descriptions.append(fdesc)
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       i = indexPath.row
        performSegue(withIdentifier: "details", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sec = segue.destination as! detailsViewController
        sec.ffarea = area[i]
        sec.ffdesc = descriptions[i]
        sec.ffprice = propertyPrice[i]
        sec.ffbed = bedroom[i]
        sec.ffimage = images[i]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
