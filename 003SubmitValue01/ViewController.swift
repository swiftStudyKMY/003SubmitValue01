//
//  ViewController.swift
//  003SubmitValue01
//
//  Created by 김민영 on 11/11/19.
//  Copyright © 2019 김민영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onSwich(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            self.isUpdateText.text = "갱신함."
        }else{
            self.isUpdateText.text = "갱신하지 않음."
        }
        
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let val = Int(sender.value)
        self.intervalText.text = "\(val)분 마다"
    }
    
    /*
     * Any를 타입 지정 후 캐스팅 ( Down Casting )
     * 상위클래스를 하위 클래스로 형변환
     * 타입 캐스팅 오류 발생 가능성 잇음. (guard)
     
     @IBAction func onSwich(_ sender: Any) {
         
         guard let obj = sender as? UISwitch else{
            return
         }
     
         if(obj.isOn == true){
             self.isUpdateText.text = "갱신함."
         }else{
             self.isUpdateText.text = "갱신하지 않음."
         }
         
     }
     
     @IBAction func onStepper(_ sender:  Any) {
         
         let obj = sender as! UIStepper

         let val = Int(obj.value)
         self.intervalText.text = "\(val)분 마다"
     }
     */

}

