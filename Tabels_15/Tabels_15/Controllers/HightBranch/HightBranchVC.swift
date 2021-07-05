//
//  HightBranchVC.swift
//  Tabels_15
//
//  Created by Владимир  on 7/4/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import UIKit

class HightBranchVC: UIViewController {

    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    
    var email: String?
    var phoneNumber: String?
    var name: String?
    var surname: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLbl.text = email
        phoneLbl.text = phoneNumber
        guard let name = name,
            let surname = surname else { return }
self.navigationItem.title = name + " " + surname
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
