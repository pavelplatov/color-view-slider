//
//  ViewController.swift
//  color view + slider
//
//  Created by Павел Платов on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        
    }
    
    @IBAction func redSlide(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func greenSlide(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func blueSlide(_ sender: Any) {
        updateColor()
    }
    func updateColor() {
        
        let redValue = CGFloat(redSlider.value) / 255.0
        let greenValue = CGFloat(greenSlider.value) / 255.0
        let blueValue = CGFloat(blueSlider.value) / 255.0
        let color = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
            
            mainView.backgroundColor = color
    }
    
    
    
}
