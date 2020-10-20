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
    
    var question: Question?
    var answers: [Answer]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionDescription.text = question?.questionDescription        // Do any additional setup after loading the view.
        
        var answerLabelPrep = ""
        for answer in question!.answers {
             answerLabelPrep += answer.answerDescription
        }
        answerLabel.text = answerLabelPrep
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
