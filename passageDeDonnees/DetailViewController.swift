//
//  DetailViewController.swift
//  passageDeDonnees
//
//  Created by digital on 29/11/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var textReceived = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text = textReceived
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
