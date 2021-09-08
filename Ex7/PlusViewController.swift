//
//  PlusViewController.swift
//  Ex7
//
//  Created by 安井基哲 on 2021/09/08.
//

import UIKit

class PlusViewController: UIViewController {
    @IBOutlet private weak var number1TextField: UITextField!
    @IBOutlet private weak var number2TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        number1TextField.keyboardType = .numberPad
        number2TextField.keyboardType = .numberPad
    }

    @IBAction func runPlusButton(_ sender: Any) {
        let value1 = Int(number1TextField.text ?? "") ?? 0
        let value2 = Int(number2TextField.text ?? "") ?? 0
        resultLabel.text = String(value1 + value2)
        number1TextField.resignFirstResponder()
        number2TextField.resignFirstResponder()
    }
}
