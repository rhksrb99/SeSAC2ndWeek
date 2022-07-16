//
//  EmotionDiaryViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/12.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    @IBOutlet var btnEmotion: [UIButton]!
    @IBOutlet var label1: [UILabel]!
    @IBOutlet weak var btn_Reset: UIButton!
    
    var num = ["num1":0, "num2":0, "num3":0, "num4":0, "num5":0, "num6":0, "num7":0, "num8":0, "num9":0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Functions
    
    
    
    // 버튼 클릭 시 label에 1씩 증가 시키는 함수 생성
    func btnClickedCount(number:Int){
        for i in 1...9 {
            if i == number{
                num["num" + "\(i)"]! += 1
                // label의 배열은 0부터 시작하는 이유로
                // for문의 i-1을 해줘야한다.
                label1[i-1].text = String(num["num" + "\(i)"]!)
            }
        }
    }
    
    // 버튼 클릭 시 label의 숫자 전체 초기화
    func btnResetClicked(){
        for i in 0...8 {
            label1[i].text = "0"
        }
    }
    
    
    // MARK: - IBActions
    
    @IBAction func btn_ResetClicked(_ sender: UIButton) {
        btnResetClicked()
    }
    
    
    @IBAction func btn_emotionClicked(_ sender: UIButton) {
        // 버튼의 tag를 1~9로 지정함.
        switch sender.tag{
        case 1: btnClickedCount(number: sender.tag)
        case 2: btnClickedCount(number: sender.tag)
        case 3: btnClickedCount(number: sender.tag)
        case 4: btnClickedCount(number: sender.tag)
        case 5: btnClickedCount(number: sender.tag)
        case 6: btnClickedCount(number: sender.tag)
        case 7: btnClickedCount(number: sender.tag)
        case 8: btnClickedCount(number: sender.tag)
        case 9: btnClickedCount(number: sender.tag)
        default:
            return
        }
    }
}
