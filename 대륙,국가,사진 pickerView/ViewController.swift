//
//  ViewController.swift
//  대륙,국가,사진 pickerView
//
//  Created by Inno on 30/11/2018.
//  Copyright © 2018 Inno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var continentArray : [String] = ["Asia", "Europe", "America"]
    var asiaCityArray : [String] = ["싱가폴"]
    var europeCityArray : [String] = ["파리", "로마"]
    var americaCityArray : [String] = ["뉴욕", "쿠바", "샌프란시스코"]
    
    var asiaCityImageArray = ["sg"]
    var europeCityImageArray = ["paris", "rome"]
    var americaCityImageArray = ["newYork", "cuba", "san"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        imageView.image = UIImage.init(named: asiaCityImageArray[0])
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var number = 3
        if component == 1 {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                number = asiaCityArray.count
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                number = europeCityArray.count
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                number = americaCityArray.count
            }
        }
        return number
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var string = continentArray[row]
        if component == 1 {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                string = asiaCityArray[row]
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                string = europeCityArray[row]
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                string = americaCityArray[row]
            }
        }
        return string
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 1 {
            if pickerView.selectedRow(inComponent: 0) == 0 {
                imageView.image = UIImage.init(named: asiaCityImageArray[row])
                label.text = asiaCityArray[row]
            } else if pickerView.selectedRow(inComponent: 0) == 1 {
                imageView.image = UIImage.init(named: europeCityImageArray[row])
                label.text = europeCityArray[row]
            } else if pickerView.selectedRow(inComponent: 0) == 2 {
                imageView.image = UIImage.init(named: americaCityImageArray[row])
                label.text = americaCityArray[row]
            }
        }
    }
    
    func sss() {
        
    }
    
    
}
