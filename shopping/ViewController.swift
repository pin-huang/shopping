//
//  ViewController.swift
//  shopping
//
//  Created by Pincheng Huang on 2020/8/18.
//

import UIKit // 匯入工具 UIKit

class ViewController: UIViewController {

    @IBOutlet var containerViews: [UIView]!
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        containerViews[0].isHidden = false
        containerViews[1].isHidden = true
        
    }

    @IBAction func selectingCategory(_ sender: UISegmentedControl) {
        
        containerViews.forEach {
           $0.isHidden = true
        }
        containerViews[sender.selectedSegmentIndex].isHidden = false
     }
    
    
    
    
    }
    


