//
//  ViewController.swift
//  Storyboard
//
//  Created by MAC on 04/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hi everyone"
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textfield.becomeFirstResponder()
    }
    
    
    @IBAction func buttonWasPress(_ sender: Any) {
        
        let name = textfield.text ?? ""
        label.text = "Hi \(name)"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textfield.becomeFirstResponder()
    }
    

    @IBAction func buttonbrow(_ sender: Any) {
        
        
    }
}

