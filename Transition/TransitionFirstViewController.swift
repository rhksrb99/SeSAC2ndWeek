//
//  TransitionFirstViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {

    @IBOutlet weak var lb_randomNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lb_randomNumber.text = "\(Int.random(in: 1...100))"
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    
    // 돌아가고싶은 화면의 controller에 작성해야한다.
    // 1.
    @IBAction func unwindTransitionFirstVC(kidultSegue:UIStoryboardSegue) {
        
    }

}
