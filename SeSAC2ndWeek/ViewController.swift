//
//  ViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 코너를 깎을 수 있는
//        topView.layer.cornerRadius = 20
//        topView.layer.shadowPath
        // cornerRadius에 대한 적용 유무
//        topView.clipsToBounds = true
        // 한쪽의 코너에만 깍는 값을 주고싶을 때
        topView.layer.maskedCorners = [.layerMinXMaxYCorner]
        topView.layer.cornerRadius = 30
        
    }


}

