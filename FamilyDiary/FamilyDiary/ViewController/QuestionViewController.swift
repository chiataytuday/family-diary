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
    
    var question: Question?
    var answers: [Answer]?
    var answer: String?
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

    }
    
    // 답변 저장 버튼 클릭 이벤트
    @IBAction func saveAnswer(_ sender: Any) {
        answer = answerTextView.text
        question?.answers.append(Answer(answeringUserId: 0, answerDescription: answerTextView.text)) // 실제로는 로그인 된 유저의 아이디를 넣어야 함
        print(question)
    }
    
    func answeredUserDescription() {
        var answeredUsersName : String = ""
        for user in question!.answeredUsers {
            answeredUsersName += "\(user.name) "
        }
        if answeredUsersName == "" {
            answeredUsers.text = "아직 아무도 답변하지 않았어요."
        } else {
            answeredUsers.text = "답변한 유저: \(answeredUsersName)"
        }

    }
    
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//        let currentText = answerTextView.text ?? ""
//        guard let stringRange = Range(range, in: currentText) else { return false }
//
//        let changedText = currentText.replacingCharacters(in: stringRange, with: text)
//
//        return changedText.count <= 16
//    }
    //글자 수 제한하기


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
        print(textView.text.count)
    }
    
    
}
