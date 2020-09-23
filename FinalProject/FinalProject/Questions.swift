//
//  Questions.swift
//  FinalProject
//
//  Created by Tech on 2020-03-11.
//  Copyright © 2020 Tech. All rights reserved.
//

import Foundation

class Questions{

    
    
    var question:String
    var correctanswer:Int
    var optionA :String
    var optionB :String
    var optionC :String
    var optionD :String
    // empty constructor is must
    init() {
        self.question = ""
        self.correctanswer = 0
        self.optionA = ""
        self.optionB = ""
        self.optionC = ""
        self.optionD = ""
    }
     init(question: String, correctanswer: Int, optionA: String, optionB: String,optionC: String, optionD: String) {
        self.question = question
        self.correctanswer = correctanswer
        self.optionA = optionA
        self.optionB = optionB
        self.optionC = optionC
        self.optionD = optionD
    }

}
