//
//  ServiceSelectionViewController.swift
//  AgroAid
//
//  Created by Vitor Spessoto on 23/08/21.
//

import UIKit

class ServiceSelectionViewController: UIViewController {

    @IBOutlet weak var askHelpButton: DSButton!
    @IBOutlet weak var myOffersButton: DSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        askHelpButton.configure(with: .secondaryDefault)
        myOffersButton.configure(with: .secondaryDefault)
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
