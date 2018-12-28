//
//  File.swift
//  DailySampler
//
//  Created by 兼子友花 on 12/26/18.
//  Copyright © 2018 兼子友花. All rights reserved.
//

import Foundation
import RealmSwift

class diary: Object {
    @objc dynamic var date = "" //日付はString型
    @objc dynamic var context = "" //文章はString型
    @objc dynamic var photo: NSData? = nil //写真はUIImageだがそれをData型に変換してRealmに保存できるようにする
    
    override static func primaryKey() -> String? {
       //primaryKeyは重複してはいけない意味
        return "date"
    }
    
}
