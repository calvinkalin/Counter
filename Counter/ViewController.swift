//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Kalin on 18.12.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButtonPlus: UIButton!
    @IBOutlet weak var counterButtonMinus: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var changesHistory: UITextView!
    
    
    
    func updateHistory(_ message: String) {
        changesHistory.text.append("\n\(message)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateHistory("История изменений:")
        counterButtonPlus.layer.cornerRadius = 10.0
        counterButtonMinus.layer.cornerRadius = 10.0

    }
    private var counter: Int = 0
    @IBAction func buttonPlusDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = String(counter)
        updateHistory("\(getTime()): значение изменено на +1")
    }
    
    @IBAction func buttonMinusDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = String(counter)
            updateHistory("\(getTime()): значение изменено на -1")
        } else {
            updateHistory("\(getTime()): попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func buttonResetDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = String(counter)
        updateHistory("\(getTime()): значение сброшено")

    }
    func getTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        return formatter.string(from: Date())
    }
}

