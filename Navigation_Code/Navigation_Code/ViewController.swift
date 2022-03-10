//
//  ViewController.swift
//  Navigation_Code
//
//  Created by Coditas on 10/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        button.setTitle("Go to Nav Controller", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    
    }
    
    @objc private func didTapButton() {
        let rootVC = secondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
    }

    
    
    class secondViewController: UIViewController{
        
        private let button = UIButton()
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemRed
            title = "Bienvenue"
            
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "LetGo", style: .plain, target: self, action: #selector(LetGoSelf))

            button.setTitle("Switch the  Controller", for: .normal)
            view.addSubview(button)
            button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
            button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        

        }
        
        @objc private func didTapButton() {
            let vc = UIViewController()
            vc.view.backgroundColor = .white
            navigationController?.pushViewController(vc, animated: true)
        }
        @objc private func LetGoSelf() {
            dismiss(animated: true, completion: nil)
        }
        
    }

    
    
}

