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
    
    var btnArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        label1[1].text = setUserNickname()
        
        for items in 1...9{
            btnArr.append("btn_\(items)")
        }
        
//        // #imageLiteral(
//        let imageLiteral = #imageLiteral(resourceName: "sesac_slime4")
        
    }
    
    
    // MARK: - Functions
    
    // 배경색, 레이블, 이미지
//    func example() -> (UIColor, String, String){
//        let color:[UIColor] = [.black, .red, .blue]
//        let image:[String] = ["sesac_slime6", "sesac_slime7"]
//
//        return (color.randomElement()!, "고래밥", image.randomElement()!)
//    }
//
//
//    func setUserNickname() -> String{
//        let nickname = ["박","관", "규"]
//        let select = nickname.randomElement()
//
//        return "저는 \(select)입니다."
//    }
    
    // 버튼 클릭 시 label에 1씩 증가 시키는 함수 생성
    func btnClickedCount(btn:UIButton, number:Int){
        for i in 0...8 {
            if i == number{
                num["num" + "\(i+1)"]! += 1
                label1[i].text = String(num["num" + "\(i+1)"]!)
            }
        }
    }
    
    func showAlertController(){
//        // 1. 흰색 바탕 만들고 글씨 넣어주기
//        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .alert)
//
//        // 2. 버튼 만들기
//        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
//        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
//        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
//        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
//
//        // 3. 버튼 하나로 만들기
//        alert.addAction(copy)
//        alert.addAction(web)
//        alert.addAction(ok)
//        alert.addAction(cancel)
//
//        // 4. Alert 띄우기
//        present(alert, animated: true, completion: nil)
        
        
        
    }
    
//    func btnClickedEvent(num:Int){
//        UIButton(btnArr[0]).sendActions(for: .touchUpInside)
//    }
    
    // MARK: - IBActions
    
    @IBAction func btn_emotionClicked(_ sender: UIButton) {
        print(sender.tag, sender.currentTitle, sender.currentImage)
        
        // switch문 간소화 시키기
//        for n in 0...8{
//            switch sender.tag{
//            case n : btnClickedCount(btn: "btn_\(n+1)", number: n)
//            default:
//                return
//            }
//        }
        
        
        // switch문을 이용한 버튼 액션
        switch sender.tag{
        case 0 : btnClickedCount(btn: btn_1, number: 0)
        case 1 : btnClickedCount(btn: btn_2, number: 1)
        case 2 : btnClickedCount(btn: btn_3, number: 2)
        case 3 : btnClickedCount(btn: btn_4, number: 3)
        case 4 : btnClickedCount(btn: btn_5, number: 4)
        case 5 : btnClickedCount(btn: btn_6, number: 5)
        case 6 : btnClickedCount(btn: btn_7, number: 6)
        case 7 : btnClickedCount(btn: btn_8, number: 7)
        case 8 : btnClickedCount(btn: btn_9, number: 8)
        default:
            return
        }
        
        // if문을 이용한 버튼액션
//        if sender.tag == 0{
//            btnClickedCount(btn: btn_1, number: 0)
//        }else if sender.tag == 1{
//            btnClickedCount(btn: btn_2, number: 1)
//        }else if sender.tag == 2{
//            btnClickedCount(btn: btn_3, number: 2)
//        }else if sender.tag == 3{
//            btnClickedCount(btn: btn_4, number: 3)
//        }else if sender.tag == 4{
//            btnClickedCount(btn: btn_5, number: 4)
//        }else if sender.tag == 5{
//            btnClickedCount(btn: btn_6, number: 5)
//        }

    }
    
    // 일반적인 버튼액션을 이용
//    @IBAction func btn_1(_ sender:UIButton){
//        btnClickedCount(btn: btn_1, number: 0)
//    }
//
//    @IBAction func btn_2(_ sender: UIButton) {
//        btnClickedCount(btn: btn_2, number: 1)
//    }
//
//    @IBAction func btn_3(_ sender: UIButton) {
//        btnClickedCount(btn: btn_3, number: 2)
//    }
//
//    @IBAction func btn_4(_ sender: UIButton) {
//        btnClickedCount(btn: btn_4, number: 3)
//    }
//
//    @IBAction func btn_5(_ sender: UIButton) {
//        btnClickedCount(btn: btn_5, number: 4)
//    }
//
//    @IBAction func btn_6(_ sender: UIButton) {
//        btnClickedCount(btn: btn_6, number: 5)
//    }
//
//    @IBAction func btn_7(_ sender: UIButton) {
//        btnClickedCount(btn: btn_7, number: 6)
//    }
//
//    @IBAction func btn_8(_ sender: UIButton) {
//        btnClickedCount(btn: btn_8, number: 7)
//    }
//
//    @IBAction func btn_9(_ sender: UIButton) {
//        btnClickedCount(btn: btn_9, number: 8)
//    }
    
    
    
    
    
}
