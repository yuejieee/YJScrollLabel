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
        
        let rect = CGRect.init(x: 0, y: 0, width: 250, height: 30)
        let scrollLabel = ScrollLabel.init(frame: rect)
        scrollLabel.center = self.view.center
        self.view.addSubview(scrollLabel)
        scrollLabel.setTitle("test😀😁🤣😂😄😅😆😇😉😊🙂😊🙂🙃☺️😋😌😍😘test")
        scrollLabel.backgroundColor = UIColor.lightGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

