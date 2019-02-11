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
    
    internal var strokeColor: UIColor = .white
    internal var fillColor: UIColor = .white
    internal var lineWidth: CGFloat = 0
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    private var shapeLayer: CAShapeLayer {
        return self.layer as! CAShapeLayer
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setLayerPath()
    }
}

extension CircleView {
    private func setLayerPath() {
        self.shapeLayer.strokeColor = self.strokeColor.cgColor
        self.shapeLayer.fillColor = self.fillColor.cgColor
        self.shapeLayer.lineWidth = self.lineWidth
        let path: UIBezierPath = UIBezierPath(ovalIn: self.shapeLayer.bounds)
        self.shapeLayer.path = path.cgPath
    }
}
