//
//  detailsViewController.swift
//  property
//
//  Created by NewHorizons on 10/24/20.
//  Copyright © 2020 Educations. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {
var ffarea = ""
    var ffbed = ""
    var ffprice = ""
    var ffdesc = ""
    var ffimage = #imageLiteral(resourceName: "pp1")
    
    @IBOutlet weak var fdesc: UILabel!
    @IBOutlet weak var fprice: UILabel!
    @IBOutlet weak var fbed: UILabel!
    @IBOutlet weak var farea: UILabel!
    @IBOutlet weak var fimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
fimg.image = ffimage
        fdesc.text = ffdesc
        fbed.text = ffbed
        farea.text = ffarea
        fprice.text = ffprice
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
