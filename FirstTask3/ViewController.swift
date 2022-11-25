//
//  ViewController.swift
//  FirstTask3
//
//  Created by Denis Nikulin on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Subviews
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    
    // MARK: - Instance Properties
    /// Эта переменная-счётчик
    private var count: Int = 0 {
        didSet{
            /// При каждом обновлении значения переменной - обновляем текст в лэйбле
            updateCountLabel()
        }
    }
    
    // MARK: - Instance Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonTapedCount(_ sender: Any) {
        count+=1
    }
    
    // MARK: - Private Methods
    private func updateCountLabel() {
        countLabel.text = "Значение счётчика: \(String(count))"
    }
}

