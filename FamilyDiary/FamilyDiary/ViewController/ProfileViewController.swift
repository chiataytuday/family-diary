//
//  ProfileViewController.swift
//  FamilyDiary
//
//  Created by 김초희 on 2020/11/08.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var completeButton: UIButton!
    var name = ""
    var receiveFamilyCode = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // text init
        appNameLabel.text = "패밀리 다이어리"
        descriptionLabel.text = "프로필 만들기"
        inputField.placeholder = "이름을 입력하세요."
        completeButton.setTitle("완료", for: .normal)
    }
    
    @IBAction func clickCompleteButton(_ sender: Any) {
        name = inputField.text!
        self.performSegue(withIdentifier: "toQuestionList", sender: nil) // 다음 질문 리스트 화면으로 이동
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
