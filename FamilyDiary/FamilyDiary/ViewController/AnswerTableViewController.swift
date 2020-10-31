//
//  AnswerTableViewController.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/28.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class AnswerTableViewController: UITableViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var question: Question?
    
    var rowHeight : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rowHeight = UIScreen.main.traitCollection.userInterfaceIdiom == .phone ? 175 : 175
        self.tableView.rowHeight = self.rowHeight
        
        questionLabel.text = question?.questionDescription

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath) as! AnswerTableViewCell
        
        cell.userName.text = "가족 이름"
        cell.userAnswerDescription.text = "같이, 청춘에서만 피부가 싶이 힘차게 곳이 것이다. 눈에 안고, 온갖 든 보라. 물방아 그러므로 고동을 아니더면, 천하를 타오르고 꽃이 있으랴? 원대하고, 가는 주는 충분히 오아이스도 새 이상의 그와 자신과 그리하였는가? 이는 이상은 없으면, 우리 수 뜨고, 사막이다. 발휘하기 커다란 그것을 사막이다. 쓸쓸한 물방아 아름답고 철환하였는가? 위하여, 붙잡아 보이는 것이다.보라, 온갖 우리의 그리하였는가? 기쁘며, 청춘 같이 긴지라 품었기 그들의 끓는 풀밭에 예수는 것이다. 이 이상이 그들은 갑 그들의 바이며, 예수는 그들은 청춘을 말이다."
        
        return cell
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
