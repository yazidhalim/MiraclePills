//
//  ViewController.swift
//  MiraclePills
//
//  Created by Yazid Halim on 27/04/2017.
//  Copyright © 2017 Yazid Halim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var success: UIImageView!
    @IBOutlet weak var pillEmoji: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var entername: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var enterstreet: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var entercity: UITextField!
    @IBOutlet weak var state: UILabel!
    
    
    
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //what will happen when btn is pressed
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //allocate the number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    //give the name on each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    //what will happen when u select row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
    }
    
    /* @IBAction func buynowpressed(_ sender: Any) {
        pillEmoji.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        divider.isHidden = true
        fullname.isHidden = true
        entername.isHidden = true
        street.isHidden = true
        enterstreet.isHidden = true
        city.isHidden = true
        entercity.isHidden = true
        state.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtn.isHidden = true
        success.isHidden = false
    } */
    
    @IBAction func buynowpressed(_ sender: Any) {
        for x in view.subviews as [UIView] {
            x.isHidden = true
        }
        success.isHidden = false
    }
    
    
}

