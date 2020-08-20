//
//  TableViewController.swift
//  shopping
//
//  Created by Pincheng Huang on 2020/8/19.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var StepperCount: [UIStepper]!
    @IBOutlet var OrderQty: [UITextField]!
    
    
    // 宣告一個名為 prices 的常數，並以 array 依序存入每個商品價格
    let prices = [120, 230, 50]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    

    
    @IBAction func clickStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        OrderQty[sender.tag].text = "\(num)"
        calculator()
    }
    
    // 宣告一個名為 calculator() 的計算功能，將先前設的 prices 陣列帶入
    func calculator() {
        var sum = 0
        for (i,price) in prices.enumerated() {
            sum += Int(StepperCount[i].value) * price
        }
        for text in TotalPrice {
            text.text = "\(sum)"
        }
    }
    

}
