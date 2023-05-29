//
//  ThirdViewController.swift
//  Игра для котят
//
//  Created by Miras Maratov on 25.05.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
// MARK: - property
    
    var message = UILabel(frame: CGRect(x: 0, y: 0, width: 240, height: 120))
    var closeButton = UIButton(frame: CGRect(x: 20, y: 80, width: 80, height: 20))
    
// MARK: - life cycle func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure2()
    }
// MARK: - flow func
    
    private func configure2(){
        view.backgroundColor = .green
        message.text = "Скоро здесь будет таблица"
        message.center = view.center
        closeButton.setTitle("<< Назад", for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        closeButton.backgroundColor = .clear
        self.view.addSubview(message)
        self.view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
    }
    
    @objc private func closeVC() {
        self.dismiss(animated: true)
    }
    
}
