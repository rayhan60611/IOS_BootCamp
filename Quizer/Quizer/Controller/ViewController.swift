//
//  ViewController.swift
//  Quizer
//
//  Created by Macbook Pro 2017 (Rayhan) on 2/11/22.
//

import UIKit

class ViewController: UIViewController {
   

    @IBOutlet weak var tureButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var qLebel: UILabel!
    
    var quizBrain = QuizBrain()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // qLebel.text = quizBrain.question[questionNo].questionNoS
        updateQuestion()
        
        }
    
    
    
    
    @IBAction func keypress(_ sender: UIButton) {
        var userAnswer = sender.currentTitle!
        
        var returnAnswer = quizBrain.checkAnswer(userAnswer)
        if returnAnswer {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil , repeats: false)
       
    }
    
    
    @objc func updateQuestion(){
        qLebel.text = quizBrain.getQuestion()
        progressBar.progress = quizBrain.getProgress()
        tureButton.backgroundColor = UIColor.white
        falseButton.backgroundColor = UIColor.white
        
       
    }
    
    
}

