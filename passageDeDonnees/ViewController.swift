//
//  ViewController.swift
//  passageDeDonnees
//
//  Created by digital on 29/11/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    var textToSend = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let curText = self.textField.text
        
        if let currentText = curText{
            self.textToSend = currentText
        }
        
        self.performSegue(withIdentifier: "toDetails", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier{
            if id == "toDetails"{
                if let dest = segue.destination as? DetailViewController{
                    dest.textReceived = self.textToSend
                }
            }
        }
    }
}

