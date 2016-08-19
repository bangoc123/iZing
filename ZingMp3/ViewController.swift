//
//  ViewController.swift
//  ZingMp3
//
//  Created by Ngoc on 8/17/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imv_logo: UIImageView!
    
    @IBOutlet weak var lbl_title: UILabel!
    
    @IBOutlet weak var lbl_name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imv_logo!.alpha = 0;
        lbl_title!.alpha = 0;
        lbl_name!.alpha = 0;
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {self.imv_logo.alpha = 1}){ (finished) in
            
            UIView.animateWithDuration(3, animations: {
                
                self.lbl_title!.center = CGPointMake(self.imv_logo!.center.x, 100)
                
                self.lbl_name!.center = CGPointMake(self.imv_logo!.center.x, self.imv_logo!.center.y + 300)
                
                self.lbl_title!.alpha = 1
                
                self.lbl_name!.alpha = 1
                
            })
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

