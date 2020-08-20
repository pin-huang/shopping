//
//  ViewController.swift
//  shopping
//
//  Created by Pincheng Huang on 2020/8/18.
//

import UIKit // 匯入工具 UIKit

class ViewController: UIViewController {

    @IBOutlet var TotalPrice: [UITextField]!
    @IBOutlet var containerViews: [UIView]!
    
    
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    // 宣告載入 app 後，哪一個 container view 頁面要顯示
        containerViews[0].isHidden = false
        containerViews[1].isHidden = true
        
    }

    // 宣告一個名為 clear() 的清除功能，將先前設的三個 IBOutlet (TotalPrice 、 OrderQty 、 StepperCount) 所連結到的元件內容全歸零
    func clear()  {
        for text in TotalPrice {
            text.text = "0"
        }
        for text in OrderQty {
            text.text = "0"
        }
        for stepper in StepperCount {
            stepper.value = 0
        }
    }
    
    // 設置 IBAction 以連結 清除 按鈕到 func clear()
    @IBAction func clickClear(_ sender: UIButton) {
        clear()
    }
    
    
    // 設置一個名為 selectingCategory 的 IBAction 來連動 segment control 與 container view，並使用 forEach 跟 isHidden 預設首頁要顯示哪一頁
    @IBAction func selectingCategory(_ sender: UISegmentedControl) {
        
        containerViews.forEach {
           $0.isHidden = true
        }
        containerViews[sender.selectedSegmentIndex].isHidden = false
     }
    
    // 
    
    
    }
    


