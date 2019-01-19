//
//  ViewController.swift
//  Quizzly
//


import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    let numOfQuestions = 16
    let bearNames = ["Grizz", "Panda", "Ice Bear"]
    let bearCharacters = ["You're a natural leader who uses joy to balance the extremes of the personalities around you. People are naturally drawn to you. You always put your all into everything, even if you don't know what you're doing.", "You want to be charming. Meanwhile, you're a sensitive, docile person. You might be easily embarrassed but you still like to get some attention from others. You are quite talented in arts.", "You have a mysterious personality. You aren't what people expect you to be, and you don't always open up to others about your feelings. You are talented in many areas and those around you are often in awe of what you can do."]
    let grizzIndex = 0
    let pandaIndex = 1
    let iceBearIndex = 2
    
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var bearScores = [0, 0, 0]
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        progressLabel.text = "\(questionNumber+1) / \(numOfQuestions)"
        
        progressBar.frame.size.width = (view.frame.size.width / 16) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if questionNumber < numOfQuestions {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            let result = highestScoreBear()
            var message : String = ""
            
            if result == bearNames[grizzIndex]{
                message = bearCharacters[grizzIndex]
            }
            else if result == bearNames[pandaIndex]{
                message = bearCharacters[pandaIndex]
            }
            else{
                message = bearCharacters[iceBearIndex]
            }
            
            let alert = UIAlertController(title: "You are \(result)!", message: message + "\n\n\n\n\n\n\n\n\n", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Do it again!", style: .default, handler: { (UIAlertAction) in
                self.startOver()})
            
            var imageView = UIImageView(frame: CGRect(x: 78, y: 145, width: 125, height: 125))
            imageView.image = UIImage(named: result)
            alert.view.addSubview(imageView)
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func highestScoreBear() -> String {
        
        if bearScores[0] == bearScores[1] && bearScores[1] == bearScores[2] && bearScores[2] == 0 {
            return bearNames[2]
        }
        
        var highest = bearNames [0]
        var highestIndex = 0
        
        for i in 1...2 {
            if (bearScores[i]>bearScores[highestIndex]) {
                highest = bearNames[i]
                highestIndex = i
            }
        }
        
        return highest
    }
    
    func checkAnswer() {
        let bear = allQuestions.list[questionNumber].matchingBearIfTrue
        
        if pickedAnswer == true {
            if bear == bearNames[grizzIndex] {
                bearScores[grizzIndex] += 1
            }
            else if bear == bearNames[pandaIndex] {
                bearScores[pandaIndex] += 1
            }
            else {
                bearScores[iceBearIndex] += 1
            }
        }
        
        updateUI()
    }
    
    
    func startOver() {
        questionNumber = 0
        bearScores = [0, 0, 0]
        
        updateUI()
        nextQuestion()
    }
    

    
}
