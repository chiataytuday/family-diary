//
//  QuestionListTableViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/16.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class QuestionListTableViewController: UITableViewController  {
    
    var rowHeight : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rowHeight = UIScreen.main.traitCollection.userInterfaceIdiom == .phone ? 70 : 70
        self.tableView.rowHeight = self.rowHeight
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the 	number of rows
        return questionList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionList", for: indexPath) as! QuestionTableViewCell
        // 질문 Cell에, 정보 넣는 부분
        // 질문 번호 부여, 만약 답변 안된 경우 붉은 색으로 미답변 표시
        
        // 만약에, 현재 유저가 대답한 유저에 속해 있다면..
        if checkIfCurrentUserAnswered(answerArray: answerList[indexPath.row]) {
            cell.questionID.text = "질문 \(String(questionList[indexPath.row].questionId))."
            cell.questionID.textColor = UIColor.black
        } else {
            cell.questionID.text = "미답변."
            cell.questionID.textColor = UIColor.red
        }
        
        cell.questionDescription.text = questionList[indexPath.row].questionDescription
        
        // 답변한 유저 적기
        var answeredUsersName : String = ""
        for answer in  answerList[indexPath.row] {
            answeredUsersName += "\(answer.answeredUser.userName)."
        }
        if answeredUsersName == "" {
            cell.questionAnsweredUser.text = "아직 아무도 답변하지 않았어요."
        } else {
            cell.questionAnsweredUser.text = "답변한 사람 : \(answeredUsersName)"
        }
        
        return cell
    }
    
    //만약 조건 A 일때는 QuestionViewController Scene으로 가고, B 일때는 AnswerViewController로 가는 방법?
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 사용자가 답변을 완료 했을 때

        if checkIfCurrentUserAnswered(answerArray: answerList[indexPath.row]) {
            performSegue(withIdentifier: "showAnswers", sender: indexPath)}
        else {
            performSegue(withIdentifier: "showDetails", sender: indexPath)
            
        }
    }
    
    // 세그웨이 데이터를 as? AnswerViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? QuestionViewController{
            destination.answers = answerList[(tableView.indexPathForSelectedRow?.row)!]
            destination.question = questionList[(tableView.indexPathForSelectedRow?.row)!]
            destination.row = (tableView.indexPathForSelectedRow?.row)!
        } else if let destination = segue.destination as? AnswerTableViewController{
            destination.answers = answerList[(tableView.indexPathForSelectedRow?.row)!]
            destination.question = questionList[(tableView.indexPathForSelectedRow?.row)!]
            destination.row = (tableView.indexPathForSelectedRow?.row)!
        }
}

    // 질문의 배열에서 현재 유저가 들어잇는가
    
    
}
