//
//  resTestClass.swift
//  testFramework
//
//  Created by namik kaya on 25.06.2021.
//

import Foundation
// test1 commit 1
protocol ResTestClassDelegate:AnyObject {
    func rest(cvp: String?)
}

extension ResTestClassDelegate {
    func rest(cvp: String?) {}
}

class resTestClass:NSObject {
    weak var delegate:ResTestClassDelegate?
    override init() {
        super.init()
    }
    
    func question(q: String?) {
        delegate?.rest(cvp: "\(q ?? "") - el cevap")
    }
}
