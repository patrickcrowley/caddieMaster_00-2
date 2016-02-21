//
//  coursePage.swift
//  caddieMaster
//
//  Created by John King on 2/21/16.
//  Copyright © 2016 John King. All rights reserved.
//

import UIKit

class coursePage: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var mapPlaceHolder: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var courseFinal = ["",""]
    var courseSource = ["NJ", "NY", "PA", "MA"];
    var stateCourses = ["states": ["NJ", "NY", "PA", "MA"], "NJ":["Stony Brook","Hopewell","Mountain View"], "NY": ["NYC Golf","Buffalo Golf","Syracuse Golf"], "PA": ["golf 1","golf 2","Mountain View"], "MA": ["Stony Brook","Hopewell","Mountain View"]]
    var ind = 0;
    var x = 0;
    var state : String = "states";
    
    
    @IBAction func buttonPress(sender: AnyObject) {
        
        
        ind = pickerView.selectedRowInComponent(0)
        state = courseSource[ind]
        mapPlaceHolder.text = state;
        courseFinal[x] = state;
        self.pickerView.reloadAllComponents();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Connect data:
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stateCourses[state]!.count;
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        
        return stateCourses[state]![row];
        
        
        
    }
    
    
    
}