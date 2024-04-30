//
//  ViewController.swift
//  Mentor
//
//  Created by Erik Bye on 3/25/24.
//

import UIKit
import SnapKit

protocol ViewControllerDeleage {
    func handleButtonPress(_ sourceButton: UIButton)
}

class ViewController: UIViewController {
    
    var delegate: ViewControllerDeleage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        
        let label = UILabel()
        label.text = "HELLO WORLD"
        label.textAlignment = .center
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(200)
        }
        
        let button = UIButton()
        button.setTitle("BUTTON", for: .normal)
        button.setTitle("BUTTON Selected", for: .highlighted)
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        button.addTarget(self, action: #selector(handleButtonAction(_:)), for: .touchUpInside)
    }
    
    @objc func handleButtonAction(_ source: UIButton) {
        delegate?.handleButtonPress(source)
    }
}

