//
//  QuestionViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/17.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit
import FirebaseDatabase // FirebaseDatabase 추가하기 [성태]

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionDescription: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var answeredUsers: UILabel!
    @IBOutlet weak var wordCountLabel: UILabel!
    
    var ref: DatabaseReference? // 인스턴스 [셩태]
    var row: Int?
    var question: Question? 
    var answers: [Answer]?
    var answerInput: String?
    var answeredUsersLabel: String = ""
   
    var doneSaving: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.isEnabled = false
        ref = Database.database().reference()   // 인스턴스 [성태]
        questionDescription.text = question!.questionDescription
        //질문 답변한 사람 표시하기
        answeredUserDescription()
        saveButton.layer.cornerRadius = 25
        saveButton.layer.borderWidth = 2.0
        saveButton.layer.borderColor = UIColor.lightGray.cgColor
        answerTextView.layer.borderWidth = 0.5
        answerTextView.layer.cornerRadius = 10

        answerTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    // 답변 저장 버튼 클릭 이벤트
    @IBAction func saveAnswer(_ sender: Any) {
        //ref?.child("answerLists").childByAutoId().setValue(answerTextView.text) // 답변저장 누르면 내용 전송  Set value  [성태]
      // 성태 님 , 아래 추가사항 입니다.
        exampleFamily.answers[row!].append(Answer(answeredUser: currentUser, answerDescription: answerTextView.text))
        print(exampleFamily.answers)
        if let doneSaving  = doneSaving {
            doneSaving()
        }
        
        ref?.child("answerLists").childByAutoId().setValue(answerTextView.text, withCompletionBlock: { (error, ref) in
            exampleFamily.answers[self.row!].append(Answer(answeredUser: currentUser, answerDescription: self.answerTextView.text))
            print(exampleFamily.answers)
            self.navigationController?.popViewController(animated: true)
            self.dismiss(animated: true, completion: nil)
        })

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
        if segue.identifier == "AnswerDone" {
            if let destination = segue.destination as? AnswerTableViewController {
                destination.answers = answers
                            destination.question = question
                            destination.row = row
            }
        } else if segue.identifier == "AnswerCancel" {
            
        }
    
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? AnswerTableViewController{
//            destination.answers = answers
//            destination.question = question
//            destination.row = row
//        }

}





extension QuestionViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            let currentText = answerTextView.text ?? ""
            guard let stringRange = Range(range, in: currentText) else { return false }
    
            let changedText = currentText.replacingCharacters(in: stringRange, with: text)
    
            return changedText.count <= 200
        
        }
    func textViewDidChange(_ textView: UITextView) {
        if textView.text.count < 5 {
            wordCountLabel.text = "최소 5자 이상 입력 \(textView.text.count)/200"
            saveButton.isEnabled = false
            saveButton.layer.borderColor = UIColor.lightGray.cgColor
        } else{
        wordCountLabel.text = "\(textView.text.count)/200"
            saveButton.isEnabled = true
            saveButton.layer.borderColor = UIColor.black.cgColor
        }

    }
}
