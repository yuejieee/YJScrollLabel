//
//  ScrollLabel.swift
//  ScrollLabel
//
//  Created by Kingpin on 2017/5/3.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

import UIKit

class ScrollLabel: UIView {
    
    private var scrollView: UIScrollView!
    private var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupSubviews(frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews(_ frame: CGRect) {
        self.scrollView = UIScrollView()
        self.addSubview(self.scrollView)
        self.scrollView.frame = frame
        self.scrollView.isScrollEnabled = false
        
        self.label = UILabel()
        self.label.frame = frame
        self.scrollView.addSubview(self.label)
        self.label.textColor = UIColor.black
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        self.scrollView.frame = self.bounds
        self.scrollView.contentSize = CGSize.init(width: self.label.frame.size.width, height: 0)
        
        self.label.center = CGPoint.init(x: self.label.frame.size.width / 2, y: self.scrollView.center.y)
        
        if self.label.frame.size.width > self.scrollView.frame.size.width {
            self.setAnimate()
        }
    }
    
    private func setAnimate() {
        let offsetX = self.scrollView.contentOffset.x
        let labelW = self.label.frame.size.width
        let scrollW = self.scrollView.frame.size.width
        
        if offsetX == 0 {
            UIView.animate(withDuration: 10, animations: {
                self.scrollView.contentOffset = CGPoint.init(x: labelW - scrollW, y: 0)
            }) { (finish) in
                if finish {
                    self.setAnimate()
                }
            }
        } else {
            UIView.animate(withDuration: 10, animations: {
                self.scrollView.contentOffset = CGPoint.init(x: 0, y: 0)
            }) { (finish) in
                if finish {
                    self.setAnimate()
                }
            }
        }
    }

    // MARK: - public method
    /*
     * title: label内容
     * alignment: 文字对齐方式
     * font: 字体大小
     */
    func setTitle(_ title: NSString, _ alignment: NSTextAlignment = .left, _ font: UIFont = UIFont.systemFont(ofSize: 15)) {
        self.label.text = title as String
        self.label.textAlignment = alignment
        self.label.font = font
        self.label.sizeToFit()
    }
    
    func <#name#>(<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}
