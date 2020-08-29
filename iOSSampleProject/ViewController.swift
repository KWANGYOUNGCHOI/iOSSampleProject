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
        
//        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
//
//        textView.center = self.view.center
//        textView.textAlignment = NSTextAlignment.justified
//        textView.textColor = UIColor.blue
//        textView.backgroundColor = UIColor.lightGray
//        textView.text = "It is textview"
//
//        self.view.addSubview(textView)
        
        let label = UILabel()
        label.textColor = UIColor.blue
        label.backgroundColor = UIColor.lightGray
        label.text = "It is TextView"
        self.view.addSubview(label)
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "miyeon1.jpg")
        self.view.addSubview(imageView)

        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addConstraints([
            LayoutConstraintUtil.addTopTop(item: label, toItem: self.view.safeAreaLayoutGuide, constant: 10),
            LayoutConstraintUtil.addLeadingLeading(item: label, toItem: self.view.safeAreaLayoutGuide, constant: 10),
            LayoutConstraintUtil.addTrailingTrailing(item: label, toItem: self.view.safeAreaLayoutGuide, constant: -10),
            LayoutConstraintUtil.addBottomTop(item: label, toItem: imageView, constant: -10),
        ])

        self.view.addConstraints([
            LayoutConstraintUtil.addTopBottom(item: imageView, toItem: label, constant: 0),
            LayoutConstraintUtil.addLeadingLeading(item: imageView, toItem: self.view.safeAreaLayoutGuide, constant: 10),
            LayoutConstraintUtil.addTrailingTrailing(item: imageView, toItem: self.view.safeAreaLayoutGuide, constant: -10),
            LayoutConstraintUtil.addBottomBottom(item: imageView, toItem: self.view.safeAreaLayoutGuide, constant: -10)
        ])
        
        self.view.addConstraints([
            LayoutConstraintUtil.addSameHeight(item: label, toItem: imageView)
        ])
    }

}

