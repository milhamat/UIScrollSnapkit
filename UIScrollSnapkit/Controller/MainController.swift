//
//  ViewController.swift
//  UIScrollSnapkit
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/12/20.
//

import UIKit

class MainController: UIViewController {

    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainView = MainView.init(frame: self.view.frame)
        self.view = self.mainView
    }
}

