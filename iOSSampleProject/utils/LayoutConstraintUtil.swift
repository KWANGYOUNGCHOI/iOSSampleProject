//
//  LayoutConstraintUtil.swift
//  iOSSampleProject
//
//  Created by CHOI KWANGYOUNG on 2020/08/23.
//  Copyright © 2020 CHOI KWANGYOUNG. All rights reserved.
//

import UIKit

class LayoutConstraintUtil {
    class Attribute {
        static let top = NSLayoutConstraint.Attribute.top
        static let left = NSLayoutConstraint.Attribute.left
        static let leading = NSLayoutConstraint.Attribute.leading
        static let right = NSLayoutConstraint.Attribute.right
        static let trailing = NSLayoutConstraint.Attribute.trailing
        static let bottom = NSLayoutConstraint.Attribute.bottom
        static let height = NSLayoutConstraint.Attribute.height
        static let width = NSLayoutConstraint.Attribute.width
    }
    
    class Relation {
        static let equal = NSLayoutConstraint.Relation.equal
        static let lessThanOrEqual = NSLayoutConstraint.Relation.lessThanOrEqual
        static let greaterThanOrEqual = NSLayoutConstraint.Relation.greaterThanOrEqual
    }
}
