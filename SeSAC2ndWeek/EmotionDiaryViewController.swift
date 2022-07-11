//
//  EmotionDiaryViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/12.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_9: UIButton!
    
    @IBOutlet var label1: [UILabel]!
    
    var num = ["num1":0, "num2":0, "num3":0, "num4":0, "num5":0, "num6":0, "num7":0, "num8":0, "num9":0]
    
    var btnArr: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for items in 1...9{
//            btnArr.append("btn_\(items)")
        }
    }
    
    
    // MARK: - Functions
    
    func btnClickedCount(btn:UIButton, number:Int){
        for i in 0...8 {
            if i == number{
                num["num" + "\(i+1)"]! += i+1
                label1[i].text = String(num["num" + "\(i+1)"]!)
            }
        }
    }
    
    func btnArray(){
        
    }
    
    
    // MARK: - IBActions
    
    @IBAction func btn_1(_ sender:UIButton){
        btnClickedCount(btn: btn_1, number: 0)
    }
    
    @IBAction func btn_2(_ sender: UIButton) {
        btnClickedCount(btn: btn_2, number: 1)
    }
    
    @IBAction func btn_3(_ sender: UIButton) {
        btnClickedCount(btn: btn_3, number: 2)
    }
    
    @IBAction func btn_4(_ sender: UIButton) {
        btnClickedCount(btn: btn_4, number: 3)
    }
    
    @IBAction func btn_5(_ sender: UIButton) {
        btnClickedCount(btn: btn_5, number: 4)
    }
    
    @IBAction func btn_6(_ sender: UIButton) {
        btnClickedCount(btn: btn_6, number: 5)
    }
    
    @IBAction func btn_7(_ sender: UIButton) {
        btnClickedCount(btn: btn_7, number: 6)
    }
    
    @IBAction func btn_8(_ sender: UIButton) {
        btnClickedCount(btn: btn_8, number: 7)
    }
    
    @IBAction func btn_9(_ sender: UIButton) {
        btnClickedCount(btn: btn_9, number: 8)
    }
    
    
    
    
    
}
