//
//  main.swift
//  FinalProject
//
//  Created by Tech on 2020-03-11.
//  Copyright © 2020 Tech. All rights reserved.
//

import Foundation

let generate:GeneratingQuestions=GeneratingQuestions()
generate.createQuestions()

let constantvalues=ConstantStrings()
var fstFiftyFifty:Int=1
var sec_audience:Int=1
var thd_phone:Int=1
var amount_won_till:Double=0.0
var alreadyQuestionAsked:Bool = false


enum difficultylevels {
    case easy
    case hard
   
}


//first step

print("\t\t\t$$$$$  WELCOME TO THE GAME OF BILLIONARE  $$$$$")
print("Choose your difficulty level,Enter 1 or 2 \n    1.Easy - 3 questions for each  3 rounds \n    2.Difficult - 5 questions for each 5 rounds")

var difficultylevel = Int(readLine()!)


func availableLifeLines(fstFiftyFifty:Int,sec_audience:Int,thd_phone:Int){
    
    print("The Available life lines are")
    if fstFiftyFifty==1 {
        print("\t\t 1. 50 : 50")
    }
    
    if sec_audience==1 {
        print("\t\t 2. Ask the audience")
    }
    
    if thd_phone==1 {
        print("\t\t 3. Phone a Friend")
    }
    
    if fstFiftyFifty==0&&sec_audience==0&&thd_phone==0{
        print("No Lifelines Available for you.....")
    }
    else{
        print("\t\t 4. Dont Want to Use Lifeline")
    }
}

class initialFunctions{
    var question:Questions

    init() {
        self.question=Questions()
    }
    
    func askQuestion()  {
          question=generate.generateRandomQuestions()
        
           print("\n\(question.question) \n\t\t\(question.optionA)\t\t\(question.optionB) \n\t\t\(question.optionC)\t\t\(question.optionD)")
        
            print("\n Are you wanna Use Any LifeLine")
           availableLifeLines(fstFiftyFifty: fstFiftyFifty, sec_audience: sec_audience, thd_phone: thd_phone)
        
    }
}

class Easyround: initialFunctions {

    override init() {
        
    }
    
    func asktheQuestions(Level:Int)  {
        easyRoundfunc(level: Level)
    }
    
    func easyRoundfunc(level:Int) {

           var count:Int=0

        for k in 1...3 {
            print("\t\t This is QUESTION \(k)")
            
            askQuestion()

            let isUseLifeLine=Int(readLine()!)

            if isUseLifeLine==4{

                print("\nPlease enter the option of the answer (1 or 2 or 3 or 4)")
                
                let enteredAnswer = Int(readLine()!)

                //print("\nThe correct answer is \(question.correctanswer)\n")
                
                
                if enteredAnswer==question.correctanswer{
                    
                    print("\t\t Yes,you are correct....")
                    
                    
                    
                    // for removing the already asked questions
                for (index,item) in generate.questionArray.enumerated() {
                if item.question ==  question.question{
                    generate.questionArray.remove(at: index)
                    break
                }
            }
                    
                    count+=1
                    if level==1 {
                        if k==1 {
                            amount_won_till=100.0
                            print("you won \(amount_won_till)")
                        }
                        
                        if k==2 {
                            amount_won_till=500.0
                            print("you won \(amount_won_till)")

                        }
                        if k==3 {
                        amount_won_till=1000.0
                            print("you won \(amount_won_till)")

                        }
                    }
                    
                    if level==2{
                        if k==1 {
                            amount_won_till=8000.0
                            print("you won \(amount_won_till)")
                        }
                        
                        if k==2 {
                            amount_won_till=16000.0
                            print("you won \(amount_won_till)")

                        }
                        if k==3 {
                        amount_won_till=32000.0
                            print("you won \(amount_won_till)")

                        }
                    }
                    if level==3{
                        if k==1 {
                            amount_won_till=125000.0
                            print("you won \(amount_won_till)")
                        }
                        
                        if k==2 {
                            amount_won_till=500000.0
                            print("you won \(amount_won_till)")

                        }
                        if k==3 {
                        amount_won_till=1000000.0
                            print("you won \(amount_won_till)")

                        }
                    }
                    
                    if count==3{
                        if level==3 {
                            print("\t\tCONGRATUALTIONS!!!!!,you have passed Level \(level)")
                            
                        }else{
                            print("\t\tCONGRATUALTIONS!!!!!,you have passed Level \(level) \n\t\tNow you are playing Level \(level+1)")
                            
                        }
                        
                        
                                           if level==3 {
                                               print("YOU WON THE GAME!!!!!!!!!")
                                               break
                                            }
                                           else{
                                            //write condition for walk or level 2
                                            print("\t\t 1.Are You going to quit?\n\t\t 2.Continue to play \(level+1)")
                                            let resumeopt=Int(readLine()!)
                                            if resumeopt==1{
                                                print("Congratulations,your final amount is \(amount_won_till)")
                                                break
                                            }
                                            else{
                                                asktheQuestions(Level: level+1)

                                            }
                                            }
                        
                    }
                
            }
                
                
            else{
                print("Sorry,its incorrect,try next time")
                break
            }
        }
            else if isUseLifeLine==1{
                
                switch question.correctanswer{
                case 1:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t\t\(question.optionB)")
                    break
                    
                case 2:
                    
                    print("\n\(question.question) \n\t\t\(question.optionB)\t\t\(question.optionD)")

                    
                    break
                case 3:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t\t\(question.optionC)")

                    
                    break
                case 4:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t\t\(question.optionD)")

                    
                    break
                default:
                    print("isuselifeline switch is deafult")
                }
                
                break
            }
            else if isUseLifeLine==2{
                
                switch question.correctanswer{
                case 1:
 print("\n\(question.question) \n\t\t\(question.optionA)\t-65%\t\(question.optionB)\t-13% \n\t\t\(question.optionC)\t-16%\t\(question.optionD)\t-6%")
                    break
                    
                case 2:
                    
 print("\n\(question.question) \n\t\t\(question.optionA)\t-13%\t\(question.optionB)\t-65% \n\t\t\(question.optionC)\t-16%\t\(question.optionD)\t-6%")
                    
                    break
                case 3:
 print("\n\(question.question) \n\t\t\(question.optionA)\t-16%\t\(question.optionB)\t-13% \n\t\t\(question.optionC)\t-65%\t\(question.optionD)\t-6%")
                    
                    break
                case 4:
 print("\n\(question.question) \n\t\t\(question.optionA)\t-13%\t\(question.optionB)\t-6% \n\t\t\(question.optionC)\t-16%\t\(question.optionD)\t-65%")
                    
                    break
                default:
                    print("isuselifeline switch is deafult")
                }
                
                
            }
        
            else if isUseLifeLine==3{
                switch question.correctanswer{
                case 1:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t-HighProbability\t\(question.optionB)\t-LowProb \n\t\t\(question.optionC)\t-Never\t\(question.optionD)\t-Never")
                    break
                    
                case 2:
                    
                    print("\n\(question.question) \n\t\t\(question.optionA)\t- Never \t\(question.optionB)\t -HighProbability \n\t\t\(question.optionC)\t -LowProb \t\(question.optionD)\t -Never")
                    
                    break
                case 3:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t -Never\t\(question.optionB)\t -Never \n\t\t\(question.optionC)\t -Confirm \t\(question.optionD)\t -Never")
                    
                    break
                case 4:
                    print("\n\(question.question) \n\t\t\(question.optionA)\t -Never\t\(question.optionB)\t -Never \n\t\t\(question.optionC)\t -Never\t\(question.optionD)\t -HighProbability")
                    
                    break
                default:
                    print("isuselifeline switch is deafult")
                }
            }
        
    }
}

}

func detectDificultyLevel(diifcultylevel_1:difficultylevels){
    switch diifcultylevel_1 {
    case .easy:
        let easyroundClass:Easyround = Easyround()
        easyroundClass.asktheQuestions(Level: constantvalues.Level)
    case .hard:
        print("Watch out for penguins")
    }
}

//func checkingtheAnswerEasy(enteredAnswer:Int,question:Questions,counts:Int,k:Int,levels:Int){
//    print("\nPlease enter the option of the answer (1 or 2 or 3 or 4)")
//
//    let enteredAnswer = Int(readLine()!)
//    for (index,item) in generate.questionArray.enumerated() {
//        if item.question ==  question.question{
//            generate.questionArray.remove(at: index)
//            break
//        }
//    }
//
//    counts=counts+1
//    if levels==1 {
//        if k==1 {
//            amount_won_till=100.0
//            print("you won \(amount_won_till)")
//        }
//
//        if k==2 {
//            amount_won_till=500.0
//            print("you won \(amount_won_till)")
//
//        }
//        if k==3 {
//            amount_won_till=1000.0
//            print("you won \(amount_won_till)")
//
//        }
//    }
//    if levels==2{
//        if k==1 {
//            amount_won_till=8000.0
//            print("you won \(amount_won_till)")
//        }
//
//        if k==2 {
//            amount_won_till=16000.0
//            print("you won \(amount_won_till)")
//
//        }
//        if k==3 {
//            amount_won_till=32000.0
//            print("you won \(amount_won_till)")
//
//        }
//    }
//    if levels==3{
//        if k==1 {
//            amount_won_till=125000.0
//            print("you won \(amount_won_till)")
//        }
//
//        if k==2 {
//            amount_won_till=500000.0
//            print("you won \(amount_won_till)")
//
//        }
//        if k==3 {
//            amount_won_till=1000000.0
//            print("you won \(amount_won_till)")
//
//        }
//    }
//
//    if counts==3{
//        if levels==3 {
//            print("\t\tCONGRATUALTIONS!!!!!,you have passed Level \(levels)")
//
//        }else{
//            print("\t\tCONGRATUALTIONS!!!!!,you have passed Level \(levels) \n\t\tNow you are playing Level \(levels+1)")
//
//        }
//}
//
//}
if(difficultylevel==1){

    detectDificultyLevel(diifcultylevel_1:difficultylevels.easy)
    
}
else{
    detectDificultyLevel(diifcultylevel_1:difficultylevels.hard)

}







