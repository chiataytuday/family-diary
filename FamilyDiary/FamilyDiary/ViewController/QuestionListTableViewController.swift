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

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionList.count
    }

  

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionList", for: indexPath) as! QuestionTableViewCell
        
        // 질문 Cell에, 정보 넣는 부분
        // 질문 번호 부여, 만약 답변 안된 경우 붉은 색으로 미답변 표시
        if questionList[indexPath.row].userAnswered == true {
            cell.questionID.text = "질문 \(String(questionList[indexPath.row].questionId))."
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
        if true {
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
//        if segue.identifier == "showDetails" {
//            (sender as? IndexPath)?.row // 선택된 셀의 정보
//        } else if segue.identifier == "showAnswers" {
//            (sender as? IndexPath)?.row
//        }
        }
//        else if let destination = segue.destination as? AnswerViewController{
//            destination.question = questionList[(tableView.indexPathForSelectedRow?.row)!]
//        }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}

