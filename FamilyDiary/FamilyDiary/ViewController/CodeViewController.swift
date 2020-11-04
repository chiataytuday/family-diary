//
//  CodeViewController.swift
//  FamilyDiary
//
//  Created by 김초희 on 2020/11/04.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var inputButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // text init
        appName.text = "패밀리 다이어리"
        descriptionLabel.text = "가족 대표이시라면 가족에게 아래 코드를 알려주세요"
        descriptionLabel.numberOfLines = 0 // 자동 줄바꿈
        codeLabel.text = randomAlphaNumericString(length: 7)
        copyButton.setTitle("코드 복사하기", for: .normal)
        inputButton.setTitle("코드 입력하기", for: .normal)
    }
    

    @IBAction func copyCode(_ sender: Any) {
        // copy code to clipboard
        UIPasteboard.general.string = codeLabel.text
    }
    
    @IBAction func enterCode(_ sender: Any) {
        let alert = UIAlertController(
            title: "코드 입력하기",
            message: "가족 대표에게 받은 코드를 입력해주세요",
            preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (ok) in
            let code = alert.textFields?[0].text
            // TODO : 여기서 입력받은 code 변수의 데이터가 유효한 패밀리 코드인지 확인하고, 없는 패밀리 코드면 리젝시켜야함
            self.performSegue(withIdentifier: "toQuestionList", sender: code) // 다음 질문 리스트 화면으로 이동
        }
        
        let cancel = UIAlertAction(title: "cancel", style: .cancel) { (cancel) in
            // nothing
        }
        
        alert.addTextField { (inputTextField) in
            inputTextField.placeholder = "코드를 입력하세요"
        }
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true) {

        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toQuestionList" {
            // 데이터를 전달할 뷰 컨트롤러가 존재하는지 확인
            let tabBarController = segue.destination as! TabBarViewController
//            let viewController: TabBarViewController = segue.destination as! TabBarViewController
            let data = sender as? String

            // 뷰 컨트롤러가 존재한다면 데이터 전달
            tabBarController.receiveFamilyCode = data ?? "send failed"
        }
    }
    
    
    // 난수 생성 함수
    func randomAlphaNumericString(length: Int) -> String {
        let allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let allowedCharsCount = UInt32(allowedChars.count)
        var randomString = ""
        for _ in 0..<length {
            let randomNum = Int(arc4random_uniform(allowedCharsCount))
            let randomIndex = allowedChars.index(allowedChars.startIndex, offsetBy: randomNum)
            let newCharacter = allowedChars[randomIndex]
            randomString += String(newCharacter)
        }
        return randomString
    }

}
