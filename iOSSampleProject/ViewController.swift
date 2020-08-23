//
//  ViewController.swift
//  iOSSampleProject
//
//  Created by CHOI KWANGYOUNG on 2020/08/22.
//  Copyright © 2020 CHOI KWANGYOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
        
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
        textView.text = "It is textview"

        self.view.addSubview(textView)
    }


}

