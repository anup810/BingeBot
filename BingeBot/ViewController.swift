//
//  ViewController.swift
//  BingeBot
//
//  Created by Anup Saud on 2024-06-09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingebotLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showStackView: UIStackView!
    
    var shows:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        showStackView.isHidden = true
        randomShowStackView.isHidden = true
        
        
    }

    @IBAction func randomBingeShowBtnWasPressed(_ sender: UIButton) {
        randomShowLabel.text = shows.randomElement()
        bingebotLabel.isHidden = false
        randomShowLabel.isHidden = false
    }
    @IBAction func addShowBtnWasPressed(_ sender: UIButton) {
        guard let showName = addShowTextField.text else{return}
        shows.append(showName)
        updateShowLabel()
        addShowTextField.text = ""
        showStackView.isHidden = false
        if shows.count >= 2{
            randomShowStackView.isHidden = false
            bingebotLabel.isHidden = true
            randomShowLabel.isHidden = true
            
            
        }

    }
    func updateShowLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
    
}

