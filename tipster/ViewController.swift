//
//  ViewController.swift
//  tipster
//
//  Created by Tyree Stevenson on 12/1/15.
//  Copyright © 2015 Tyree Stevenson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "0.00"
        totalLabel.text = "0.00"
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
        defaults.setInteger(123, forKey: "another_key_that_you_choose")
        defaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
        defaults.setInteger(123, forKey: "another_key_that_you_choose")
        defaults.synchronize()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
    var tippercentages = [0.1,0.15,0.2]
    let tippercentage = tippercentages[tipControl.selectedSegmentIndex]
    
    let billAmount = NSString(string: billField.text!).doubleValue
    let tip = billAmount * tippercentage
    let total = billAmount + tip
    tipLabel.text = "$\(tip)"
    totalLabel.text = "$\(total)"
    tipLabel.text = String(format: "$%.2f", tip)
    tipLabel.text = String(format: "$%.2f", tip)
    }

    @IBAction func onTap(sender: AnyObject) {
    view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
  
}
