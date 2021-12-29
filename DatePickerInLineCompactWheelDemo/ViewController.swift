//
//  ViewController.swift
//  DatePickerInLineCompactWheelDemo
//
//  Created by Asmita Borawake on 21/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.addTarget(self, action: #selector(dateSelection), for: .valueChanged)
    }

    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0 : datePicker.preferredDatePickerStyle = .compact
        case 1 : datePicker.preferredDatePickerStyle = .inline
        case 2: datePicker.preferredDatePickerStyle = .wheels
        default : break
        }
    }
    
    @objc func dateSelection(){
        
        
        let dateformater = DateFormatter()
        dateformater.dateStyle = .full
        dateformater.timeStyle = .medium
        let date = dateformater.string(from: datePicker.date)
        label.text =  date
        print(date)
    }
    
}

