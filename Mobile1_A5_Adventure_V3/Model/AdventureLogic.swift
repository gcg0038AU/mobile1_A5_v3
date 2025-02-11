//
//  AdventureLogic.swift
//  Mobile1_A5_Adventure_V3
//
//  Created by Jake Gordin on 2/10/25.
//

import Foundation
struct AdventureLogic {
    var adventureIndex = 0
    let adventure = [
        //0
        Adventure("Castle Foyer", "You find yourself standing in a haunted castle. You must find the hidden treasure! There are two exits: a plain wooden door, and a gilded, ornate door.", "Wooden Door", "Ornate Door", 1, 2),
        //1
        Adventure("Underground Canal", "A vast underground canal runs under the castle. There is a scary, skeleton boatman here on a small skiff. He holds out a boney hand, wordlessly.", "Give Coin", "Shake Their Hand", 3, 4),
        //2
        Adventure("Feast Hall", "A long and opulant great hall lies before you. The central table is piled high with delicious-smelling spiced meat! Your stomach rumbles...", "Have a Snack", "Move Along", 5, 6),
        //3
        Adventure("Paid in Full", "Cautiously, you place a gold coin in the skeletal boatman's hand. A low hiss rattles from their skull as they beckon you onboard. Halfway across, the boatman discovers it is a novelty chocolate coin! Furious, the boatman whips around and pushes you into the icy waters.", "", "Continue", -1, 8),
        //4
        Adventure("A New Friend", "At first, the boatman recoils at the gesture, but your hearty handshake has won you a firm ally. 'I'm so glad to make a new friend', the boatman says somberly, 'it gets awfully lonely down here. I will take you across to the treasure vault in thanks.'", "", "Continue", -1, 9),
        //5
        Adventure("How Delicious!", "After a few hungry mouthfuls of the spiced meat, you being to feel sleepy and sluggish. Just what was in those spices? For that matter, what was the meat? These thoughts race through your mind as your suddenly doze off in one of the large armchairs.", "", "Continue", -1, 8),
        //6
        Adventure("Keep it Moving", "Despite the temptation, you move along to a door at the other end of the hallway. After a maze of twists and turns through the corridors, you blunder into a trapdoor that deposits you back at the castle's entrance.", "", "Continue", -1, 0),
        //7
        Adventure("Victory", "Congratulations! You have secured the treasure and can enjoy financial security for generations.", "", "Restart", -1, 0),
        //8
        Adventure("Untimely Demise", "Sadly, your quest is at an end. You have fallen to the dangers of the Haunted Castle.", "", "Restart", -1, 0),
        //9
        Adventure("Treasure Vault", "What splendor! Gold, jewels, and mint-condition collectables adorn this treasure vault. What will you examine first?", "Jewels", "Collectables", 10, 11),
        //10
        Adventure("Rare Jewels", "After a cursory examination, it is clear to your trained treasure-hunting eyes that there is a fortune in rare jewels here for the taking! You quickly fill your pockets and head for the exit, whistling a happy tune.", "", "Continue", -1, 7),
        //11
        Adventure("Speculative Market", "You quickly fill your knapsack with the mint-condition action figures, comic books, and baseball cards carefully displayed on the shelves. However, they are thoroughly cursed, and your arms fall clean off. How unfortunate.", "", "Continue", -1, 8)
    ]
    mutating func updateIndex(index: Int) {
        adventureIndex = index
    }
    func getHeader() -> String {
        return adventure[adventureIndex].header
    }
    func getBody() -> String {
        return adventure[adventureIndex].mainBody
    }
    func getButtonTitle(button: Int) -> String {
        var text = ""
        if (button == 1) {
            text = adventure[adventureIndex].optionOne
        }
        else if (button == 2) {
            text = adventure[adventureIndex].optionTwo
        }
        return text
    }
    func getButtonKey(button: Int) -> Int {
        var key = -1
        if (button == 1) {
            key = adventure[adventureIndex].optionOneKey
        }
        else if (button == 2) {
            key = adventure[adventureIndex].optionTwoKey
        }
        return key
    }
}
