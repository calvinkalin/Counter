//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Kalin on 18.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButtonPlus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    private var counter: Int = 0
    @IBAction func buttonDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = String(counter)
    }
    
}

