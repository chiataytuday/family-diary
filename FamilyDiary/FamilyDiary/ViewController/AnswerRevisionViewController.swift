//
//  AnswerRevisionViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/11/04.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class AnswerRevisionViewController: UIViewController {

    @IBOutlet weak var questionDescription: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var wordCounterLabel: UILabel!
    @IBOutlet weak var answeredUser: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    
    @IBAction func saveButton(_ sender: Any) {
        exampleFamily.answers[row!][findIndexOfAnswer()] = Answer(answeredUser: currentUser, answerDescription: answerTextView.text)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    
    var row: Int?
    var question: Question?
    var answers: [Answer]?
    var answerInput: String?
    var answeredUsersLabel: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        saveButton.layer.cornerRadius = 25
        saveButton.layer.borderWidth = 2.0
        answerTextView.layer.borderWidth = 0.5
        answerTextView.layer.cornerRadius = 10
        answerTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        
        questionDescription.text = question!.questionDescription
        answeredUserDescription()
        // 해당 답변을 작성한 유저에 대해서 띄우기.
        answerTextView.text = answers?[findIndexOfAnswer()].answerDescription
        wordCounterLabel.text = "\(answerTextView.text.count)/200"
        
    }
    
//
//    @IBAction func saveAnswer(_ sender: Any) {
//        exampleFamily.answers[row!].append(Answer(answeredUser: currentUser, answerDescription: answerTextView.text))
//        print(exampleFamily.answers)
//        navigationController?.popViewController(animated: true)
//        dismiss(animated: true, completion: nil)
//    }
    
    func answeredUserDescription() {
        var answeredUsersName : String = ""
        for answer in answers!{
            answeredUsersName += "\(answer.answeredUser.userName)"
        }
        if answeredUsersName == "" {
            answeredUser.text = "아직 아무도 답변하지 않았어요."
        } else {
            answeredUser.text = "답변한 유저: \(answeredUsersName)"
        }
    }
    
    func findIndexOfAnswer() -> Int {
        let index = answers?.index(where: {$0.answeredUser.userName == currentUser.userName})
        return index!
    }
}

extension AnswerRevisionViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            let currentText = answerTextView.text ?? ""
            guard let stringRange = Range(range, in: currentText) else { return false }
    
            let changedText = currentText.replacingCharacters(in: stringRange, with: text)
    
        
            return changedText.count <= 200
        
        }
    func textViewDidChange(_ textView: UITextView) {
        if textView.text.count < 5 {
            wordCounterLabel.text = "최소 5자 이상 입력 \(textView.text.count)/200"
            saveButton.isEnabled = false
            saveButton.layer.borderColor = UIColor.lightGray.cgColor
        } else{
        wordCounterLabel.text = "\(textView.text.count)/200"
            saveButton.isEnabled = true
            saveButton.layer.borderColor = UIColor.black.cgColor
        }
    }
}
