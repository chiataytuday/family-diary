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
    
    var questionsInFamily = exampleFamily.questions // Family 데이터에 저장된 질문들 불러오기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rowHeight = UIScreen.main.traitCollection.userInterfaceIdiom == .phone ? 70 : 70
        self.tableView.rowHeight = self.rowHeight
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the 	number of rows
        return questionsInFamily.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionList", for: indexPath) as! QuestionTableViewCell
        // 질문 Cell에, 정보 넣는 부분
        // 질문 번호 부여, 만약 답변 안된 경우 붉은 색으로 미답변 표시
        
        //        let indexOfPerson1 = people.firstIndex{$0 === person1} // 0
        if let answeredUser = questionsInFamily[indexPath.row].answeredUsers.first(where: {$0 === currentUser}) {
            cell.questionID.text = "질문 \(String(exampleFamily.questions[indexPath.row].questionId))."
            cell.questionID.textColor = UIColor.black
        } else {
            cell.questionID.text = "미답변."
            cell.questionID.textColor = UIColor.red
        }
        
        cell.questionDescription.text = questionList[indexPath.row].questionDescription
        
        // 답변한 유저 적기
        var answeredUsersName : String = ""
        for user in questionList[indexPath.row].answeredUsers  {
            answeredUsersName += "\(user.name). "
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
        //if 사용가 답변했을 때
        if false {
            performSegue(withIdentifier: "showDetails", sender: indexPath)}
        else {
            performSegue(withIdentifier: "showAnswers", sender: indexPath)
        }
        //else
        //perfor "showAnswers"
    }
    
    // 세그웨이 데이터를 as? AnswerViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? QuestionViewController{
            destination.question = questionList[(tableView.indexPathForSelectedRow?.row)!]
        } else if let destination = segue.destination as? AnswerTableViewController{
            destination.question = questionList[(tableView.indexPathForSelectedRow?.row)!]

 
}
}

    
}
