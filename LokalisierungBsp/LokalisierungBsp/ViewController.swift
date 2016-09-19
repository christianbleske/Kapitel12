//
//  ViewController.swift
//  LokalisierungBsp
//
//  Created by Christian Bleske on 05.03.15.
//  Copyright (c) 2015 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = NSLocalizedString("LblText", comment: "-")
        button.setTitle(NSLocalizedString("BtnTitle", comment: "-"), for:UIControlState())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func button_Pressed(_ sender: AnyObject) {
        showAlertViewWithTitle(NSLocalizedString("DlgTitel", comment: "-"), message: NSLocalizedString("DlgMessage", comment: "-"))
    }
    
    func showAlertViewWithTitle(_ title:String, message:String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        
        let OKAction = UIAlertAction(title: NSLocalizedString("DlgOkBtnText", comment: "-"), style: .default) { (action) in
            // ...
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }


}

