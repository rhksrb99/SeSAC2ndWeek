//
//  DatePickerViewController.swift
//  SeSAC2ndWeek
//
//  Created by 박관규 on 2022/07/13.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet var lb_anniversary: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 14이상의 버전이면 datePicker의 스타일을 inline으로
        // 14이하의 버전이면 datePicker의 스타일을 wheels로.
        if #available(iOS 14.0, *) {
            datePicker.preferredDatePickerStyle = .inline
        }else{
            datePicker.preferredDatePickerStyle = .wheels
        }
        
        // 기본적인 날짜 포맷팅
        let format = DateFormatter()
        format.dateFormat = "yyyy년\nMM월 dd일"
        let result = format.string(from: Date())
        print(result)
        
        // 오늘로부터 100일 뒤의 계산
        let dateFirst = Calendar.current.date(byAdding: .day, value: 100, to: Date())
        let dateSecond = Calendar.current.date(byAdding: .day, value: 200, to: Date())
        let dateThird = Calendar.current.date(byAdding: .day, value: 300, to: Date())
        let dateFourth = Calendar.current.date(byAdding: .day, value: 400, to: Date())
        
        // 위에서 받아온 오늘로부터의 100일 뒤의 계산을 다시 한번 포맷팅
        let dateresult1 = format.string(from: dateFirst!)
        let dateresult2 = format.string(from: dateSecond!)
        let dateresult3 = format.string(from: dateThird!)
        let dateresult4 = format.string(from: dateFourth!)
        
        // switch문을 사용하여 계산된 기념일 label에 순서대로 넣기
        for i in 0...3{
            switch lb_anniversary[i] {
            case lb_anniversary[0] : lb_anniversary[0].text = "\(dateresult1)"
            case lb_anniversary[1] : lb_anniversary[1].text = "\(dateresult2)"
            case lb_anniversary[2] : lb_anniversary[2].text = "\(dateresult3)"
            case lb_anniversary[3] : lb_anniversary[3].text = "\(dateresult4)"
            default:
                return
            }
        }
    }
    
    // MARK: - Functions
    
    // 해당 함수를 사용하여 결과 값을 하나씩 만들어 그 값을 아래의 포멧해주는 함수를 사용하여 포멧하면 될 거같은데 외않되?외???
    // 기념일 날짜 계산 함수
    func dateCalculate(){
        for i in stride(from: 100, through: 400, by: 100){
            let date = Calendar.current.date(byAdding: .day, value: i, to: Date())
        }
    }
    
    // 계산된 기념일 받아와서 포멧해주는 함수
    func dateformat(formatTarget:DateFormatter){
        formatTarget.dateFormat = "yyyy년\nMM월 dd일"
    }
}
