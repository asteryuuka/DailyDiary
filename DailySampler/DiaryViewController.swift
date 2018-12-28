//
//  DairyViewController.swift
//  DailySampler
//
//  Created by 兼子友花 on 12/27/18.
//  Copyright © 2018 兼子友花. All rights reserved.
//

import UIKit
import RealmSwift
//Writeのボタンで送られたDateの情報とcontextとphotoの情報がここに集まる。これをRealmに保存する。

class DiaryViewController: UIViewController {
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var contextTextView: UITableView!
    
    var date: String! //送られてきたdateのデータの受け皿を用意する
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        dateLabel.text = date
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func savebuttonpushed(_sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
