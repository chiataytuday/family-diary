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
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var testLabel: UILabel! // 잘 저장되는지 확인용
    
    var question: Question?
    var answers: [Answer]?
    var answer: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionDescription.text = question?.questionDescription        // Do any additional setup after loading the view.
        
        var answerLabelPrep = ""
        for answer in question!.answers {
             answerLabelPrep += answer.answerDescription
        }
        
        answerLabel.text = answerLabelPrep
        
        answerTextView.layer.borderWidth = 1.0 // 답변 입력하는 곳 테두리줌
    }
    
    // 답변 저장 버튼 클릭 이벤트
    @IBAction func saveAnswer(_ sender: Any) {
        answer = answerTextView.text
        question?.answers.append(Answer(answeringUserId: 0, answerDescription: answerTextView.text)) // 실제로는 로그인 된 유저의 아이디를 넣어야 함
        print(question)
        testLabel.text = answer // 잘 저장되는지 확인용
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
