//
//  FamilyMemberViewController.swift
//  FamilyIntro
//
//  Created by shark boy on 9/30/23.
//

import UIKit

class FamilyMemberViewController: UIViewController {

    var familyMember: Person
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var memberDescription: UILabel!
    
    @IBOutlet weak var popsImage: UIImageView!
    @IBOutlet weak var grandmaImage: UIImageView!
    @IBOutlet weak var momImage: UIImageView!
    @IBOutlet weak var fryImage: UIImageView!
    
    func hideImages() {
        popsImage.isHidden = true
        grandmaImage.isHidden = true
        momImage.isHidden = true
        fryImage.isHidden = true
        
    }
    
    init?(coder: NSCoder, familyMember: Person) {
        self.familyMember = familyMember
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        hideImages()
        updateLabels()

        // Do any additional setup after loading the view.
    }
    func updateLabels() {
        name.text = familyMember.rawValue
        memberDescription.text = familyMember.descripton
        switch familyMember {
        case .mom:
            momImage.isHidden = false
        case .pops:
            popsImage.isHidden = false
        case .fry:
            fryImage.isHidden = false
        case .grandma:
            grandmaImage.isHidden = false
        }
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
