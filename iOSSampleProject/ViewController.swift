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
        
        let textView = UITextView()
        self.view.addSubview(textView)

        textView.translatesAutoresizingMaskIntoConstraints = false

        var constraints = [NSLayoutConstraint]()

        let constraintTop = NSLayoutConstraint(item: textView,
            attribute: LayoutConstraintUtil.Attribute.top,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.top,
            multiplier: 1.0,
            constant: 10)
        constraints.append(constraintTop)

        let constraintBottom = NSLayoutConstraint(item: textView,                                                  attribute: LayoutConstraintUtil.Attribute.bottom,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            multiplier: 1.0,
            constant: -10)
        constraints.append(constraintBottom)

        let constraintLeft = NSLayoutConstraint(item: textView,
            attribute: LayoutConstraintUtil.Attribute.leading,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.leading,
            multiplier: 1.0,
            constant: 10)
        constraints.append(constraintLeft)

        let constraintRight = NSLayoutConstraint(item: textView,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            multiplier: 1.0,
            constant: -10)
        constraints.append(constraintRight)

        self.view.addConstraints(constraints)
        
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
        textView.text = "It is TextView"
    }

}

