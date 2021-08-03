//
//  resTestClass.swift
//  testFramework
//
//  Created by namik kaya on 25.06.2021.
//

import Foundation

protocol ResTestClassDelegate:AnyObject {
    func rest(cvp: String?)
}

extension ResTestClassDelegate {
    func rest(cvp: String?) {}
}
// test2 commit1
// test2 commit2
class resTestClass:NSObject {
    weak var delegate:ResTestClassDelegate?
    override init() {
        super.init()
    }
    
    func question(q: String?) {
        delegate?.rest(cvp: "\(q ?? "") - el cevap")
    }
}
