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
    
    @IBOutlet var redNum: UILabel!
    @IBOutlet var greenNum: UILabel!
    @IBOutlet var blueNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        windowColor.layer.cornerRadius = 20
        
        redSlider.value = 0.3
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSlider.thumbTintColor = .white

        greenSlider.value = 0.4
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.thumbTintColor = .white

        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .white
        
        greenNum.text = String(format: "%.2f", greenSlider.value)
        blueNum.text = String(format: "%.2f", blueSlider.value)
        redNum.text = String(format: "%.2f", redSlider.value)
        
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        
}
  
    @IBAction func red() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        redNum.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func green() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        greenNum.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blue() {
        windowColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
        blueNum.text = String(format: "%.2f", blueSlider.value)
    }
    
}
