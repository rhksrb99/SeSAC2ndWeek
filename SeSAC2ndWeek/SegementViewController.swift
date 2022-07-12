//
//  SegementViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/12.
//

import UIKit

// 열거형
enum MusicType: Int {
    case pop = 0
    case kpop = 1
    case jpop = 2
}

class SegementViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func segmentControlValueChaged(_ sender: UISegmentedControl) {
        
        if segmentControl.selectedSegmentIndex == MusicType.pop.rawValue{
            
        }else if segmentControl.selectedSegmentIndex == MusicType.kpop.rawValue{
            
        }
        
        
        
        if segmentControl.selectedSegmentIndex == 0{
            resultLabel.text = "첫번째 세그먼트 선택"
        }else if segmentControl.selectedSegmentIndex == 1{
            resultLabel.text = "두번째 세그먼트 선택"
        }else if segmentControl.selectedSegmentIndex == 2{
            resultLabel.text = "세번째 세그먼트 선택"
        }else{
            resultLabel.text = "오류"
        }
        
    }
}
