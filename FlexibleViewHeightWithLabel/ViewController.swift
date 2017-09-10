//
//  ViewController.swift
//  FlexibleViewHeightWithLabel
//
//  Created by Dinh Quang Hieu on 9/10/17.
//  Copyright © 2017 Dinh Quang Hieu. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    func setupComponents() {
        let myView = MyView(title: "Lorem Ipsum is simply dummy text of the printing", subTitle: "Lorem Ipsum is simply dummy text of the printing", content: "Lorem Ipsum is simply dummy text of the printing")
        self.view.addSubview(myView)
        
        myView.snp.makeConstraints { (make) in
            make.width.equalToSuperview().multipliedBy(0.5)
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupComponents()
    }

}

