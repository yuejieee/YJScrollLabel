//
//  ViewController.swift
//  ScrollLabel
//
//  Created by Kingpin on 2017/5/3.
//  Copyright © 2017年 yuejieee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let titleRect = CGRect.init(x: 0, y: 0, width: 300, height: 40)
        let titleLabel = UILabel.init(frame: titleRect)
        titleLabel.center = CGPoint.init(x: self.view.center.x, y: 200)
        self.view.addSubview(titleLabel)
        titleLabel.text = "YJScrollLabel"
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: 2)
        titleLabel.textAlignment = .center
        
        let rect = CGRect.init(x: 0, y: 0, width: 250, height: 30)
        let scrollLabel = ScrollLabel.init(frame: rect)
        scrollLabel.center = self.view.center
        self.view.addSubview(scrollLabel)
        scrollLabel.setTitle("😀😁🤣😂😄😅😆😇😉😊🙂😊🙂🙃☺️😋😌😍😘")
        scrollLabel.backgroundColor = UIColor.init(white: 0, alpha: 0.8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

