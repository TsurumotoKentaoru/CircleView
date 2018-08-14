//
//  CircleView.swift
//  Template
//
//  Created by 鶴本賢太朗 on 2018/08/14.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

// 円を描画するView
class CircleView: UIView {
    
    private var circleLayer: CAShapeLayer
    internal var borderColor: UIColor = .clear  // 輪郭の色
    internal var fillColor: UIColor = .red      // 円の中の色
    internal var lineWidth: CGFloat = 0         // 輪郭の太さ
    
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
