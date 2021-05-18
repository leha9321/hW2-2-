//
//  ViewController.swift
//  hW2курс2урок
//
//  Created by Алексей Трофимов on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var windowColor: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // windowColor.backgroundColor = .red
        
        redSlider.value = 0.3
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .yellow
        redSlider.maximumTrackTintColor = .red
        redSlider.thumbTintColor = .blue

        greenSlider.value = 0.3
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .yellow
        greenSlider.maximumTrackTintColor = .red
        greenSlider.thumbTintColor = .blue

        blueSlider.value = 0.3
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .yellow
        blueSlider.maximumTrackTintColor = .red
        blueSlider.thumbTintColor = .blue
        
}
  
    @IBAction func red() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    @IBAction func green() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    @IBAction func blue() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
    
//withAlphaComponent(CGFloat(redSlider.value))
}
