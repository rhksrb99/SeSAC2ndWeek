//
//  TransitionSecondViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var tv_main: UITextView!
    /*
     1. 앱 실행하면 데이터를 가져와 텍스트 뷰에 보여주어야 함.
     2. 바뀐 데이터를 저장해주어야 함.
     -> UserDefault
     
     */
    
    @IBOutlet weak var lb_count: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondViewController",#function)
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            // 가지고 오는 과정               만약 가져오는 값이 Int라면
            //                                   Int 넣기
            tv_main.text = UserDefaults.standard.string(forKey: "nickname")
            
        }else {
            tv_main.text = "어른이"
        }
        
        lb_count.text = "\(UserDefaults.standard.integer(forKey: "count"))"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondViewController",#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondViewController",#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondViewController",#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondViewController",#function)
    }
    
    // 저장하기 버튼
    @IBAction func btn_save(_ sender: UIButton) {
        UserDefaults.standard.set(tv_main.text, forKey: "nickname")
        print("저장!")
    }
    
    @IBAction func btn_count(_ sender: UIButton) {
        // 기존 데이터 값 가져오기
        let currntValue = UserDefaults.standard.integer(forKey: "count")
        // 감정 + 1
        let updateValue = currntValue + 1
        // 새로운 값 저장
        UserDefaults.standard.set(updateValue, forKey: "count")
        // 레이블에 새로운 값 출력
        lb_count.text = "\(UserDefaults.standard.integer(forKey: "count"))"
    }
}
