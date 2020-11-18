//
//  ViewController.swift
//  UiSegmentedControl
//
//  Created by Алексей Гуляев on 15.11.2020.
//

import UIKit

class ViewController: UIViewController {
//Создадим outlet для наших элементов
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    //Поработаем со свойствами надписи
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
    //
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
//Создадим IbAction управления действиями в зависимости от переключения между секциями
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        //так как наша надпись на текущий момент не видна, изменим это
        label.isHidden = false
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "Selected first section of segmets"
            label.textColor = .red
        case 1:
            label.text = "Selected second section of segmets"
            label.textColor = .blue
        case 2:
            label.text = "Selected third section of segmets"
            label.textColor = .yellow
        default:
            print("Something went wrong")
        }
    }
}

