//
//  TestViewController.swift
//  LoginTest
//
//  Created by 김초희 on 2020/11/02.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var recievedData = "" // 전 뷰에서 받은 패밀리 코드 저장위한 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = recievedData
    }
}
