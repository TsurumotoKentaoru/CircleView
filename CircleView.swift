//
//  CircleView.swift
//  
//
//  Created by 鶴本賢太朗 on 2018/08/14.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

// 円を描画するView
class CircleView: UIView {
    
    private let circleLayer: CAShapeLayer
    
    // 輪郭の色
    internal var borderColor: UIColor = .clear {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    // 円の中の色
    internal var fillColor: UIColor = .white {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    // 輪郭の太さ
    internal var lineWidth: CGFloat = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        self.circleLayer = CAShapeLayer()
        super.init(frame: frame)
        self.layer.addSublayer(circleLayer)
    }
    
    required init(coder aDecoder: NSCoder) {
        self.circleLayer = CAShapeLayer()
        super.init(coder: aDecoder)!
        self.layer.addSublayer(circleLayer)
    }
    
    override func draw(_ rect: CGRect) {
        self.circleLayer.frame = self.bounds
        self.circleLayer.strokeColor = self.borderColor.cgColor
        self.circleLayer.fillColor = self.fillColor.cgColor
        self.circleLayer.lineWidth = self.lineWidth
        self.circleLayer.path = UIBezierPath(ovalIn: self.bounds).cgPath
    }
}
