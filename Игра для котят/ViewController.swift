//
//  ViewController.swift
//  Игра для котят
//
//  Created by Miras Maratov on 25.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: - property

    var gameName = UILabel(frame: CGRect(x: 0, y: 0, width: 120, height: 100))
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var tableButton: UIButton!
    @IBOutlet weak var settingButton: UIButton!
    
// MARK: - life cycle func
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()

    }
}

// MARK: - flow func

private extension ViewController {
    
    func configureView(){
        
        self.view.addSubview(gameName)
        
        startButton.backgroundColor = .blue
        tableButton.backgroundColor = .blue
        settingButton.backgroundColor = .blue
        startButton.layer.cornerRadius = 12
        tableButton.layer.cornerRadius = 12
        settingButton.layer.cornerRadius = 12
        startButton.frame.size.width = 200
        startButton.frame.size.height = 80
        tableButton.frame.size.width = 200
        tableButton.frame.size.height = 80
        settingButton.frame.size.width = 200
        settingButton.frame.size.height = 80
        
        gameName.text = "Игра для котят"
        gameName.frame.origin.x = view.frame.size.width / 2 - 60
        gameName.frame.origin.y = 80
        tableButton.frame.origin.x = view.frame.midX - 100
        tableButton.frame.origin.y = view.frame.midY - 40
        startButton.frame.origin.x = tableButton.frame.origin.x
        settingButton.frame.origin.x = tableButton.frame.origin.x
        startButton.frame.origin.y = tableButton.frame.origin.y - startButton.frame.size.height * 2
        settingButton.frame.origin.y = tableButton.frame.origin.y + startButton.frame.size.height * 2
        startButton.setTitle("Играть", for: .normal)
        tableButton.setTitle("Таблица рекордов", for: .normal)
        settingButton.setTitle("Настройки", for: .normal)
        
    }
    
}
