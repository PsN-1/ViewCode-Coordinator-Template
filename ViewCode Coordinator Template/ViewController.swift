//
//  ViewController.swift
//  ViewCode Coordinator Template
//
//  Created by Pedro Neto on 21/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Template"
        view.backgroundColor = .systemTeal
    }
    
    var count = 0 {
        didSet { textField.text = "Times Tapped: \(count)"}
    }
    
    lazy var textField: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Times Tapped: 0"
        view.font = UIFont.boldSystemFont(ofSize: 20)
        view.textColor = .white
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        view.setTitle("Add button", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .systemPink
        view.addTarget(self, action: #selector(addToCount), for: .touchUpInside)
        return view
    }()
    
    @objc func addToCount() {
        count += 1
    }

    override func loadView() {
        super.loadView()
        
        view.addSubview(textField)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            button.heightAnchor.constraint(equalToConstant: 35),
            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
}

