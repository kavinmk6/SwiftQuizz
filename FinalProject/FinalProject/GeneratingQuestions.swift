//
//  GeneratingQuestions.swift
//  FinalProject
//
//  Created by Tech on 2020-03-11.
//  Copyright © 2020 Tech. All rights reserved.
//

import Foundation

class GeneratingQuestions {
    var questionArray = [Questions]()

    init() {
    }

    func createQuestions(){
        let q1 = Questions(question: "Which is the most populated country?", correctanswer: 1, optionA: "a.china", optionB: "b.japan",optionC:"c.india",optionD:"d.canada")
        
        let q2 = Questions(question: "In which year did Maradona score a goal with his hand?", correctanswer: 3, optionA: "a.1995", optionB: "b.1990",optionC:"c.1986",optionD:"d.1999")
        
        let q3 = Questions(question: "What was the Olympic city of 1992 ?", correctanswer: 4, optionA: "a.korea", optionB: "b.japan",optionC:"c.india",optionD:"d.barcelona")
        
        let q4 = Questions(question: "Where were the Olympic Games held in 1996 ?", correctanswer: 2, optionA: "a.brazil", optionB: "b.atlanta",optionC:"c.georgia",optionD:"d.usa")
        
        let q5 = Questions(question: "What is the nickname of the Belgian national soccer team?", correctanswer: 3, optionA: "a.red bulls", optionB: "b.white fox",optionC:"c.red devils",optionD:"d.black wolf")
        
        let q6 = Questions(question: "Which car won Fernando Alonso his first tittle in Formula 1 with?", correctanswer: 4, optionA: "a.elantra", optionB: "b.benz",optionC:"c.scorpio",optionD:"d.renault")
        
        let q7 = Questions(question: "In which country were the first Olympic Games held?", correctanswer: 1, optionA: "a.greece", optionB: "b.japan",optionC:"c.pakistan",optionD:"d.turkey")
        
         let q8 = Questions(question: "Who was the inventor of the steam engine?", correctanswer: 1, optionA: "a.James Watt", optionB: "b.japan",optionC:"c.pakistan",optionD:"d.turkey")
        
         let q9 = Questions(question: "What is the lightest existing metal?", correctanswer: 2, optionA: "a.greece", optionB: "b.Aluminium",optionC:"c.pakistan",optionD:"d.turkey")
        
         let q10 = Questions(question: "What color is cobalt?", correctanswer: 3, optionA: "a.greece", optionB: "b.japan",optionC:"c.blue",optionD:"d.turkey")
        questionArray.append(q1)
        questionArray.append(q2)
        questionArray.append(q3)
        questionArray.append(q4)
        questionArray.append(q5)
        questionArray.append(q6)
        questionArray.append(q7)
        questionArray.append(q8)
        questionArray.append(q9)
        questionArray.append(q10)

        
    }
    func generateRandomQuestions() ->Questions {
        
       

        if let question = questionArray.randomElement() {
                    
                   let Q:Questions=questionArray.randomElement()!
                    return Q

                }
        
        return Questions()
            }
}
