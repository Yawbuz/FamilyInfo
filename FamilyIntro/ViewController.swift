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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // how do I take the button's name and // use that to change the value of the variable initialized here
    var familyMember = Person() // to unfuck, delete this and put this var inside the below @IBAction func
    
    @IBAction func familyMemberPressed(_ sender: UIButton) {
    // make vairable that takes in sender and uses that sender to assign a specific enumeration type to self
        familyMember = Person { // might want to put this outside the @IBAtion func.. we'll see if i can assign a value from this object to one in FMVC(FamilyMemberViewController) while also executing the segue
            switch sender {
            case pops:
                return .pops
            case mom:
                return .mom
            case fry:
                return .fry
            case grandma:
                return .grandma
            default:
                return .fry
            
            }
            
        }
        
        
        
//        prepare(for: FamilyMember, sender: Any?) // this allows the first view controller to pass data to the other view controller
            performSegue(withIdentifier: "FamilyMember", sender: nil) // this executes the segue
        }
    @IBSegueAction func FamilyMember(_ coder: NSCoder) -> FamilyMemberViewController? {
        return FamilyMemberViewController(coder: coder familyMember)
    }
    
    }
    // to display corresponding information on the familymember scene

