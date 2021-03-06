//
//  AnswerTableViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/28.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit
import FirebaseDatabase // FirebaseDatabase 가져오기 [성태]

class AnswerTableViewController: UITableViewController {
    

    @IBOutlet weak var questionLabel: UILabel!
    
    var row : Int?
    var answers : [Answer]?
    var question: Question?
    
    var rowHeight : CGFloat!
    
    var ref: DatabaseReference? // 인스턴스 [셩태]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rowHeight = UIScreen.main.traitCollection.userInterfaceIdiom == .phone ? 175 : 175
        self.tableView.rowHeight = self.rowHeight
        
        
        questionLabel.text = question?.questionDescription
        
        ref = Database.database().reference()   // 인스턴스 [성태]
        
    }
    
    @IBAction func unwindToAnswerTableView(segue:UIStoryboardSegue) {
        print("Unwind to Answer Table View")
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exampleFamily.answers[row!].count
        
//        return answers!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerTableViewCell
        cell.userName.text = exampleFamily.answers[row!][indexPath.row].answeredUser.userName
        cell.userAnswerDescription.text = exampleFamily.answers[row!][indexPath.row].answerDescription
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {

            return nil
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? AnswerRevisionViewController{
                destination.doneRevising = { [weak self] in
                    self?.tableView.reloadData()
                    print(self?.answers)
                }
            destination.answers = answers
            destination.question = question
            destination.row = row
        }
}
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
