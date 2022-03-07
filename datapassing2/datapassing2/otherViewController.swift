//
//  otherViewController.swift
//  datapassing2
//
//  Created by Coditas on 06/03/22.
//

import UIKit

class otherViewController: UIViewController {
    
    @IBOutlet var field : UITextField!
    
    public var completionHandler: ((String?) -> Void)?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func didTapSave(){
        
        completionHandler?(field.text)
        
        dismiss(animated: true, completion: nil)
    }
    

}
