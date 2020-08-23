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

        var constraints = [NSLayoutConstraint]()

        let constraintTop = NSLayoutConstraint(item: label,
            attribute: LayoutConstraintUtil.Attribute.top,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.top,
            multiplier: 1.0,
            constant: 10)
        constraints.append(constraintTop)

        let constraintBottom = NSLayoutConstraint(item: label,                                                  attribute: LayoutConstraintUtil.Attribute.bottom,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: imageView,
            attribute: LayoutConstraintUtil.Attribute.top,
            multiplier: 1.0,
            constant: 0)
        constraints.append(constraintBottom)

        let constraintLeft = NSLayoutConstraint(item: label,
            attribute: LayoutConstraintUtil.Attribute.leading,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.leading,
            multiplier: 1.0,
            constant: 10)
        constraints.append(constraintLeft)

        let constraintRight = NSLayoutConstraint(item: label,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            multiplier: 1.0,
            constant: -10)
        constraints.append(constraintRight)
        
        let constraintHeight = NSLayoutConstraint(item: label,
            attribute: LayoutConstraintUtil.Attribute.height,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: label,
            attribute: LayoutConstraintUtil.Attribute.height,
            multiplier: 1.0,
            constant: 200)
        constraints.append(constraintHeight)

        self.view.addConstraints(constraints)

        var imageConstraints = [NSLayoutConstraint]()

        let imageConstraintTop = NSLayoutConstraint(item: imageView,
            attribute: LayoutConstraintUtil.Attribute.top,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: label,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            multiplier: 1.0,
            constant: 0)
        imageConstraints.append(imageConstraintTop)

        let imageConstraintBottom = NSLayoutConstraint(item: imageView,                                                  attribute: LayoutConstraintUtil.Attribute.bottom,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            multiplier: 1.0,
            constant: -10)
        imageConstraints.append(imageConstraintBottom)

        let imageConstraintLeft = NSLayoutConstraint(item: imageView,
            attribute: LayoutConstraintUtil.Attribute.leading,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.leading,
            multiplier: 1.0,
            constant: 10)
        imageConstraints.append(imageConstraintLeft)

        let imageConstraintRight = NSLayoutConstraint(item: imageView,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: self.view.safeAreaLayoutGuide,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            multiplier: 1.0,
            constant: -10)
        imageConstraints.append(imageConstraintRight)

        self.view.addConstraints(imageConstraints)
    }

}

