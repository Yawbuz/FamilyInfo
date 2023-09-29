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


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func familyMemberPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "FamilyMember", sender: nil)
    }
    
}

