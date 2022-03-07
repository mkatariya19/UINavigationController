//
//  ViewController.swift
//  datapassing2
//
//  Created by Coditas on 06/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "other") as! otherViewController
        
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in
            self.label.text = text
            
        }
        
        present(vc,animated: true)
    }


}

