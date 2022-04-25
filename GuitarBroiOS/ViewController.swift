//
//  ViewController.swift
//  GuitarBroiOS
//
//  Created by Dustin Johns on 4/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyMenuButton: UIButton!
    @IBOutlet weak var majorMinorMenuButton: UIButton!
    @IBOutlet weak var scaleMenuButton: UIButton!
    @IBOutlet weak var tuningMenuButton: UIButton!
    
    @IBOutlet weak var sixthStringLabel: UILabel!
    @IBOutlet weak var fifthStringLabel: UILabel!
    @IBOutlet weak var fourthtringLabel: UILabel!
    @IBOutlet weak var thirdStringLabel: UILabel!
    @IBOutlet weak var secondStringLabel: UILabel!
    @IBOutlet weak var firstStringLabel: UILabel!
    
    @IBOutlet weak var sixthStringFret1: UIButton!
    @IBOutlet weak var sixthStringFret2: UIButton!
    @IBOutlet weak var sixthStringFret3: UIButton!
    @IBOutlet weak var sixthStringFret4: UIButton!
    @IBOutlet weak var sixthStringFret5: UIButton!
    @IBOutlet weak var sixthStringFret6: UIButton!
    @IBOutlet weak var sixthStringFret7: UIButton!
    @IBOutlet weak var sixthStringFret8: UIButton!
    @IBOutlet weak var sixthStringFret9: UIButton!
    @IBOutlet weak var sixthStringFret10: UIButton!
    @IBOutlet weak var sixthStringFret11: UIButton!
    @IBOutlet weak var sixthStringFret12: UIButton!

    @IBOutlet weak var fifthStringFret1: UIButton!
    @IBOutlet weak var fifthStringFret2: UIButton!
    @IBOutlet weak var fifthStringFret3: UIButton!
    @IBOutlet weak var fifthStringFret4: UIButton!
    @IBOutlet weak var fifthStringFret5: UIButton!
    @IBOutlet weak var fifthStringFret6: UIButton!
    @IBOutlet weak var fifthStringFret7: UIButton!
    @IBOutlet weak var fifthStringFret8: UIButton!
    @IBOutlet weak var fifthStringFret9: UIButton!
    @IBOutlet weak var fifthStringFret10: UIButton!
    @IBOutlet weak var fifthStringFret11: UIButton!
    @IBOutlet weak var fifthStringFret12: UIButton!

    @IBOutlet weak var fourthStringFret1: UIButton!
    @IBOutlet weak var fourthStringFret2: UIButton!
    @IBOutlet weak var fourthStringFret3: UIButton!
    @IBOutlet weak var fourthStringFret4: UIButton!
    @IBOutlet weak var fourthStringFret5: UIButton!
    @IBOutlet weak var fourthStringFret6: UIButton!
    @IBOutlet weak var fourthStringFret7: UIButton!
    @IBOutlet weak var fourthStringFret8: UIButton!
    @IBOutlet weak var fourthStringFret9: UIButton!
    @IBOutlet weak var fourthStringFret10: UIButton!
    @IBOutlet weak var fourthStringFret11: UIButton!
    @IBOutlet weak var fourthStringFret12: UIButton!

    @IBOutlet weak var thirdStringFret1: UIButton!
    @IBOutlet weak var thirdStringFret2: UIButton!
    @IBOutlet weak var thirdStringFret3: UIButton!
    @IBOutlet weak var thirdStringFret4: UIButton!
    @IBOutlet weak var thirdStringFret5: UIButton!
    @IBOutlet weak var thirdStringFret6: UIButton!
    @IBOutlet weak var thirdStringFret7: UIButton!
    @IBOutlet weak var thirdStringFret8: UIButton!
    @IBOutlet weak var thirdStringFret9: UIButton!
    @IBOutlet weak var thirdStringFret10: UIButton!
    @IBOutlet weak var thirdStringFret11: UIButton!
    @IBOutlet weak var thirdStringFret12: UIButton!

    @IBOutlet weak var secondStringFret1: UIButton!
    @IBOutlet weak var secondStringFret2: UIButton!
    @IBOutlet weak var secondStringFret3: UIButton!
    @IBOutlet weak var secondStringFret4: UIButton!
    @IBOutlet weak var secondStringFret5: UIButton!
    @IBOutlet weak var secondStringFret6: UIButton!
    @IBOutlet weak var secondStringFret7: UIButton!
    @IBOutlet weak var secondStringFret8: UIButton!
    @IBOutlet weak var secondStringFret9: UIButton!
    @IBOutlet weak var secondStringFret10: UIButton!
    @IBOutlet weak var secondStringFret11: UIButton!
    @IBOutlet weak var secondStringFret12: UIButton!
    
    @IBOutlet weak var firstStringFret1: UIButton!
    @IBOutlet weak var firstStringFret2: UIButton!
    @IBOutlet weak var firstStringFret3: UIButton!
    @IBOutlet weak var firstStringFret4: UIButton!
    @IBOutlet weak var firstStringFret5: UIButton!
    @IBOutlet weak var firstStringFret6: UIButton!
    @IBOutlet weak var firstStringFret7: UIButton!
    @IBOutlet weak var firstStringFret8: UIButton!
    @IBOutlet weak var firstStringFret9: UIButton!
    @IBOutlet weak var firstStringFret10: UIButton!
    @IBOutlet weak var firstStringFret11: UIButton!
    @IBOutlet weak var firstStringFret12: UIButton!
    
    var sixthStringFrets: [UIButton] = [];
    var fifthStringFrets: [UIButton] = [];
    var fourthStringFrets: [UIButton] = [];
    var thirdStringFrets: [UIButton] = [];
    var secondStringFrets: [UIButton] = [];
    var firstStringFrets: [UIButton] = [];

    override func viewDidLoad() {
        super.viewDidLoad()

        sixthStringFrets.append(sixthStringFret1)
        sixthStringFrets.append(sixthStringFret2)
        sixthStringFrets.append(sixthStringFret3)
        sixthStringFrets.append(sixthStringFret4)
        sixthStringFrets.append(sixthStringFret5)
        sixthStringFrets.append(sixthStringFret6)
        sixthStringFrets.append(sixthStringFret7)
        sixthStringFrets.append(sixthStringFret8)
        sixthStringFrets.append(sixthStringFret9)
        sixthStringFrets.append(sixthStringFret10)
        sixthStringFrets.append(sixthStringFret11)
        sixthStringFrets.append(sixthStringFret12)
        
        fifthStringFrets.append(fifthStringFret1)
        fifthStringFrets.append(fifthStringFret2)
        fifthStringFrets.append(fifthStringFret3)
        fifthStringFrets.append(fifthStringFret4)
        fifthStringFrets.append(fifthStringFret5)
        fifthStringFrets.append(fifthStringFret6)
        fifthStringFrets.append(fifthStringFret7)
        fifthStringFrets.append(fifthStringFret8)
        fifthStringFrets.append(fifthStringFret9)
        fifthStringFrets.append(fifthStringFret10)
        fifthStringFrets.append(fifthStringFret11)
        fifthStringFrets.append(fifthStringFret12)
        
        fourthStringFrets.append(fourthStringFret1)
        fourthStringFrets.append(fourthStringFret2)
        fourthStringFrets.append(fourthStringFret3)
        fourthStringFrets.append(fourthStringFret4)
        fourthStringFrets.append(fourthStringFret5)
        fourthStringFrets.append(fourthStringFret6)
        fourthStringFrets.append(fourthStringFret7)
        fourthStringFrets.append(fourthStringFret8)
        fourthStringFrets.append(fourthStringFret9)
        fourthStringFrets.append(fourthStringFret10)
        fourthStringFrets.append(fourthStringFret11)
        fourthStringFrets.append(fourthStringFret12)

        thirdStringFrets.append(thirdStringFret1)
        thirdStringFrets.append(thirdStringFret2)
        thirdStringFrets.append(thirdStringFret3)
        thirdStringFrets.append(thirdStringFret4)
        thirdStringFrets.append(thirdStringFret5)
        thirdStringFrets.append(thirdStringFret6)
        thirdStringFrets.append(thirdStringFret7)
        thirdStringFrets.append(thirdStringFret8)
        thirdStringFrets.append(thirdStringFret9)
        thirdStringFrets.append(thirdStringFret10)
        thirdStringFrets.append(thirdStringFret11)
        thirdStringFrets.append(thirdStringFret12)
        
        secondStringFrets.append(secondStringFret1)
        secondStringFrets.append(secondStringFret2)
        secondStringFrets.append(secondStringFret3)
        secondStringFrets.append(secondStringFret4)
        secondStringFrets.append(secondStringFret5)
        secondStringFrets.append(secondStringFret6)
        secondStringFrets.append(secondStringFret7)
        secondStringFrets.append(secondStringFret8)
        secondStringFrets.append(secondStringFret9)
        secondStringFrets.append(secondStringFret10)
        secondStringFrets.append(secondStringFret11)
        secondStringFrets.append(secondStringFret12)

        firstStringFrets.append(firstStringFret1)
        firstStringFrets.append(firstStringFret2)
        firstStringFrets.append(firstStringFret3)
        firstStringFrets.append(firstStringFret4)
        firstStringFrets.append(firstStringFret5)
        firstStringFrets.append(firstStringFret6)
        firstStringFrets.append(firstStringFret7)
        firstStringFrets.append(firstStringFret8)
        firstStringFrets.append(firstStringFret9)
        firstStringFrets.append(firstStringFret10)
        firstStringFrets.append(firstStringFret11)
        firstStringFrets.append(firstStringFret12)
    }
    
    @IBAction func keySelectionChanged(_ sender: Any) {
        
        updateFretBoard()
    }
    
    @IBAction func majorMinorSelectionChanged(_ sender: Any) {
        
        updateFretBoard()
    }
    
    @IBAction func scaleSelectionChanged(_ sender: Any) {
        
        updateFretBoard()
    }
    
    @IBAction func tuningSelectionChanged(_ sender: Any) {
        
        updateFretBoard()
    }
    
    func updateFretBoard()
    {
        
    }
}

