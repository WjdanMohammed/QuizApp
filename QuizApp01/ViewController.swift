//
//  ViewController.swift
//  QuizApp
//
//  Created by WjdanMo on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView   = UIStackView()
    
    let headLine = UILabel(frame: CGRect(x: 20, y: 120, width: 380, height: 30))
    let question = UILabel(frame: CGRect(x: 20, y: 200, width: 380, height: 30))
    let questionBtn = UIButton(frame: CGRect(x: 115, y: 240, width: 200, height: 30))
    var answer = UILabel(frame: CGRect(x: 20, y: 320, width: 380, height: 30))
    let answerBtn = UIButton(frame: CGRect(x: 115, y: 360, width: 200, height: 30))
    
    var questions = ["What does NS in NSObject mean ?","Whats the capital of Saudi Arabia ?","what color is the sky", "What architecture is used in iOS?"]
    var answers = ["NeXTSTEP opertaing system.","Riyadh","blue", "MVC architecture"]
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headLine.textColor = .black
        headLine.textAlignment = .center
        headLine.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        headLine.text = "Guess the answers "
        
        question.textColor = .black
        question.textAlignment = .center
        question.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
    
        questionBtn.setTitle("Random question", for: .normal)
        questionBtn.addTarget(self, action: #selector(chooseQuestion), for: .touchUpInside)
        questionBtn.backgroundColor = .orange
        questionBtn.layer.cornerRadius = 8
        
        answer.textColor = .black
        answer.textAlignment = .center
        answer.font = UIFont(name: "HelveticaNeue-Bold", size: 17)

        answerBtn.setTitle("Show answer", for: .normal)
        answerBtn.addTarget(self, action: #selector(showAnswer), for: .touchUpInside)
        answerBtn.backgroundColor = .orange
        answerBtn.layer.cornerRadius = 8
        
        view.addSubview(headLine)
        view.addSubview(question)
        view.addSubview(questionBtn)
        view.addSubview(answer)
        view.addSubview(answerBtn)
    }
    
    
    @objc func chooseQuestion(){
        question.text = questions.randomElement()
        currentIndex = questions.firstIndex(of: question.text!)!
        answer.text = "????"
    }
    
    @objc func showAnswer(){
        answer.text = answers[currentIndex]
    }
    
    
}

