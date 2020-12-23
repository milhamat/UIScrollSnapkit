//
//  MainView.swift
//  UIScrollSnapkit
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 23/12/20.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let mainScrollView: UIScrollView = {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
        scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
        return scrollView
    }()
    
    let sampleLabel: UILabel = {
        let label = UILabel()
        label.text = "Test"
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = .white
        
        self.addSubview(self.mainScrollView)
        self.mainScrollView.addSubview(self.sampleLabel)
        
        self.mainScrollView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.sampleLabel.snp.makeConstraints { (make) in
            make.centerY.centerX.equalTo(self.mainScrollView)
        }
        
    }
}
