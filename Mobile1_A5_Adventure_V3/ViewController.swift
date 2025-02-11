//
//  ViewController.swift
//  Mobile1_A5_Adventure2
//
//  Created by Jake Gordin on 2/10/25.
//

import UIKit
struct Adventure {
    init(_ head: String, _ desc: String, _ opOne: String, _ opTwo: String, _ optOneKey: Int, _ optTwoKey: Int) {
        header = head
        mainBody = desc
        optionOne = opOne
        optionTwo = opTwo
        optionOneKey = optOneKey
        optionTwoKey = optTwoKey
    }
    var header : String
    var mainBody : String
    var optionOne : String
    var optionTwo : String
    var optionOneKey : Int
    var optionTwoKey : Int
}
class ViewController: UIViewController {
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var body: UILabel!
    var adventureIndex = 0
    let adventure = [
        //0
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 7, 8),
        //1
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //2
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //3
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //4
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //5
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //6
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must escape with the hidden treasure!", "West", "East", 0, 0),
        //7
        Adventure("Victory", "Congratulations! You have secured the treasure and can enjoy financial security for generations.", "", "Restart", -1, 0),
        //8
        Adventure("Untimely Demise", "Sadly, your quest is at an end. You have fallen to the dangers of the Haunted Castle.", "", "Restart", -1, 0)
        
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    func updateUI() {
        headingLabel.text = adventure[adventureIndex].header
        body.text = adventure[adventureIndex].mainBody
        button1.setTitle(adventure[adventureIndex].optionOne, for: .normal)
        button2.setTitle(adventure[adventureIndex].optionTwo, for: .normal)
        if (button1.currentTitle == "") {
            button1.isHidden = true
        }
        else {
            button1.isHidden = false
        }
    }
    @IBAction func button1Press(_ sender: Any) {
        adventureIndex = adventure[adventureIndex].optionOneKey
        updateUI()
    }
    @IBAction func button2Press(_ sender: Any) {
        adventureIndex = adventure[adventureIndex].optionTwoKey
        updateUI()
    }
}
