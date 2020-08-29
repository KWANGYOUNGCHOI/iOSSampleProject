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
    
    public static func addSameHeight(item view1: Any, toItem view2: Any) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.height,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.height,
            multiplier: 1.0,
            constant: 0)
    }
    
    public static func addSameWidth(item view1: Any, toItem view2: Any) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.width,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.width,
            multiplier: 1.0,
            constant: 0)
    }
    
    public static func addHeight(item view: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
            attribute: LayoutConstraintUtil.Attribute.height,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view,
            attribute: LayoutConstraintUtil.Attribute.height,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addWidth(item view: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view,
            attribute: LayoutConstraintUtil.Attribute.width,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view,
            attribute: LayoutConstraintUtil.Attribute.width,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addTopTop(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.top,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.top,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addTopBottom(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.top,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addLeadingLeading(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.leading,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.leading,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addLeadingTrailing(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.leading,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addTrailingTrailing(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addTrailingLeading(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.trailing,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.leading,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addBottomBottom(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            multiplier: 1.0,
            constant: constant)
    }
    
    public static func addBottomTop(item view1: Any, toItem view2: Any, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: view1,
            attribute: LayoutConstraintUtil.Attribute.bottom,
            relatedBy: LayoutConstraintUtil.Relation.equal,
            toItem: view2,
            attribute: LayoutConstraintUtil.Attribute.top,
            multiplier: 1.0,
            constant: constant)
    }
}
