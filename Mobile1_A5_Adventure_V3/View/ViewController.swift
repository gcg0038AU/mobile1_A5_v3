//
//  ViewController.swift
//  Mobile1_A5_Adventure2
//
//  Created by Jake Gordin on 2/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var body: UILabel!
    var adventureLogic = AdventureLogic()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    func updateUI() {
        headingLabel.text = adventureLogic.getHeader()
        body.text = adventureLogic.getBody()
        button1.setTitle(adventureLogic.getButtonTitle(button: 1), for: .normal)
        button2.setTitle(adventureLogic.getButtonTitle(button: 2), for: .normal)
        if (button1.currentTitle == "") {
            button1.isHidden = true
        }
        else {
            button1.isHidden = false
        }
    }
    @IBAction func button1Press(_ sender: Any) {
        adventureLogic.updateIndex(index: adventureLogic.getButtonKey(button: 1))
        updateUI()
    }
    @IBAction func button2Press(_ sender: Any) {
        adventureLogic.updateIndex(index: adventureLogic.getButtonKey(button: 2))
        updateUI()
    }
}
