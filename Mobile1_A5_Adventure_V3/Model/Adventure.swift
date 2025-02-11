//
//  Adventure.swift
//  Mobile1_A5_Adventure_V3
//
//  Created by Jake Gordin on 2/10/25.
//

import Foundation
struct Adventure {
    init(_ head: String, _ desc: String, _ opOne: String, _ opTwo: String, _ optOneKey: Int, _ optTwoKey: Int) {
        header = head
        mainBody = desc
        optionOne = opOne
        optionTwo = opTwo
        optionOneKey = optOneKey
        optionTwoKey = optTwoKey
    }
    var header : String
    var mainBody : String
    var optionOne : String
    var optionTwo : String
    var optionOneKey : Int
    var optionTwoKey : Int
}
