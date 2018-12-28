//
//  ViewController.swift
//  DailySampler
//
//  Created by 兼子友花 on 12/26/18.
//  Copyright © 2018 兼子友花. All rights reserved.
//

import UIKit
import JBDatePicker

class ViewController: UIViewController, JBDatePickerViewDelegate {
    //これによりclass内のデータの受け渡しが可能
    
    @IBOutlet var datePicker: JBDatePickerView! //部品を定義づける
    @IBOutlet var writeButton: UIButton!
     var date: String!
    
    lazy var dateFormatter: DateFormatter = {
        var formatter = DateFormatter()
        formatter.timeStyle = .none
        formatter.dateStyle = .medium
        return formatter
        //タイムラグをなくす
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        datePicker.delegate = self//受け渡しがこのクラス内で行われる（delegateがクラス自身）
    }
    
    func didSelectDay(_ dayView: JBDatePickerDayView) {
        print("date selected: \(dayView.date!)")
         date = dateFormatter.string(from: dayView.date!)
    }

    @IBAction func writeButtonPushed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toDiary", sender: nil)
//        画面遷移をしたいタイミングでこれをかく
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        受け渡す内容
        if (segue.identifier == "toDiary") {
           let diaryView = segue.destination as! DiaryViewController
            diaryView.date = self.date
//            dateは変数で初期値がセットされる
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        datePicker.updateLayout()
    }
    
}
