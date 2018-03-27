//
//  ViewController.swift
//  UITextField Delegate Test
//
//  Created by D7703_15 on 2018. 3. 22..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameText.delegate = self // UITextFieldDelegate 객체와 viewController 객체와 연결을 해야만 가능함! (커넥션) 
        nameText.placeholder = "입력을 하세요~~~" //Main.storyboard의 placeholder에서 설정 가능함
        nameText.clearButtonMode = UITextFieldViewMode.whileEditing
        nameText.borderStyle = UITextBorderStyle.line //이건뭐지?
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func nameButton(_ sender: UIButton) {
        helloLabel.text = "Hello" + " \(nameText.text!)"
        nameText.text = ""
        //키패드를 내림
        nameText.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameText.resignFirstResponder()
    }
    
    // ctl + command 키 눌리고 클릭해서 delegate 함수 찾아보기
    // UITextFieldDelegate 메소드 호출
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.blue
        nameText.resignFirstResponder()
        return true
    }
    
    //claer 버튼을 눌렀을때 실행 되는것
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        nameText.backgroundColor = UIColor.green
        return true
    }
}

