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
    
    
    init?(coder: NSCoder, familyMember: Person) {
        self.familyMember = familyMember
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()

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
