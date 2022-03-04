//
//  ViewController.swift
//  DataPassing
//
//  Created by Coditas on 04/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "SecondVC")
        as! SecondViewController
        controller.text = textField.text
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
       
    }
    
}

