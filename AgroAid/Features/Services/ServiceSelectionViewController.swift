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
        overrideUserInterfaceStyle = .light
        askHelpButton.configure(with: .secondaryDefault)
        myOffersButton.configure(with: .secondaryDefault)
    }
    
//    // MARK: - Navigation
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

}
