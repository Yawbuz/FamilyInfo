//
//  ViewController.swift
//  FamilyIntro
//
//  Created by shark boy on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pops: UIButton!
    @IBOutlet weak var mom: UIButton!
    @IBOutlet weak var fry: UIButton!
    @IBOutlet weak var grandma: UIButton!
    
    // variable that is changed and passed on to the next view controller
    var memberSelected: Person? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func familyMemberPressed(_ sender: UIButton) {
        // make vairable that takes in sender and uses that sender to assign a specific enumeration type to self
        // we'll see if i can assign a value from this object to one in FMVC(FamilyMemberViewController) while also executing the segue
        switch sender {
        case pops:
            memberSelected = .pops
        case mom:
            memberSelected = .mom
        case fry:
            memberSelected = .fry
        case grandma:
            memberSelected = .grandma
        default:
            memberSelected = .fry
            
        }
        performSegue(withIdentifier: "FamilyMember", sender: nil) // this executes the segue

    }
        
        // might need a prepare(for:sender:)... still don't know exactly what it does
        
        @IBSegueAction func FamilyMember(_ coder: NSCoder) -> FamilyMemberViewController? {
            if let member = memberSelected {
                return FamilyMemberViewController(coder: coder, familyMember: memberSelected!)
            }
            return nil
            }
}
    // to display corresponding information on the familymember scene

