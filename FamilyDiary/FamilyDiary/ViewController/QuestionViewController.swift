//
//  QuestionViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/17.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionDescription: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var answeredUsers: UILabel!
    @IBOutlet weak var wordCountLabel: UILabel!
    
    var row: Int?
    var question: Question? 
    var answers: [Answer]?
    var answerInput: String?
    var answeredUsersLabel: String = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionDescription.text = question!.questionDescription
        //질문 답변한 사람 표시하기
        answeredUserDescription()
     
//
//        answerLabel.text = answerLabelPrep
        saveButton.layer.cornerRadius = 25
        saveButton.layer.borderWidth = 2.0
        answerTextView.layer.borderWidth = 0.5
        answerTextView.layer.cornerRadius = 10
        answerTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    // 답변 저장 버튼 클릭 이벤트
    @IBAction func saveAnswer(_ sender: Any) {
        answerList[row!].append(Answer(answeredUser: currentUser, answerDescription: answerTextView.text))
        print(answerList)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    
    func answeredUserDescription() {
        var answeredUsersName : String = ""
        for answer in answers!{
            answeredUsersName += "\(answer.answeredUser.userName)"
        }
        if answeredUsersName == "" {
            answeredUsers.text = "아직 아무도 답변하지 않았어요."
        } else {
            answeredUsers.text = "답변한 유저: \(answeredUsersName)"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AnswerTableViewController{
            destination.answers = answers
            destination.question = question
            destination.row = row
        }
    }
}





extension QuestionViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            let currentText = answerTextView.text ?? ""
            guard let stringRange = Range(range, in: currentText) else { return false }
    
            let changedText = currentText.replacingCharacters(in: stringRange, with: text)
    
        
            return changedText.count <= 200
        
        }
    func textViewDidChange(_ textView: UITextView) {
        wordCountLabel.text = "\(textView.text.count)/200"
    }
}
