//
//  ViewController.swift
//  Life Counter
//
//  Created by Yilin Chen on 4/19/22.
//

import UIKit

class ViewController: UIViewController {
    let dataSource = DataSource()

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton2: UIButton!
    @IBOutlet weak var minusButton2: UIButton!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var plusFiveButton1: UIButton!
    @IBOutlet weak var minusFiveButton1: UIButton!
    @IBOutlet weak var plusFiveButton2: UIButton!
    @IBOutlet weak var minusFiveButton2: UIButton!
    @IBOutlet weak var Message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text = "\(dataSource.score1)"
        scoreLabel2.text = "\(dataSource.score2)"
        Message.text = "\(dataSource.display)"
    }
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func plusButtonDidTouchUpInside(_ sender: Any) {
        dataSource.increase1()
        scoreLabel.text = "\(dataSource.score1)"
    }
    
    
    @IBAction func minusButtonDidTouchUpInside(_ sender: Any) {
        dataSource.decrease1()
        scoreLabel.text = "\(dataSource.score1)"
        dataSource.messageDisplay()
        Message.text = "\(dataSource.display)"
    }
    
    
    @IBAction func plusButton2(_ sender: Any) {
        dataSource.increase2()
        scoreLabel2.text = "\(dataSource.score2)"
    }
    
    @IBAction func minusButton2(_ sender: Any) {
        dataSource.decrease2()
        scoreLabel2.text = "\(dataSource.score2)"
        dataSource.messageDisplay()
        Message.text = "\(dataSource.display)"
    }
    
    @IBAction func plusFive1(_ sender: Any) {
        dataSource.increase1Five()
        scoreLabel.text = "\(dataSource.score1)"
    }
    
    @IBAction func minusFive1(_ sender: Any) {
        dataSource.decrease1Five()
        scoreLabel.text = "\(dataSource.score1)"
        dataSource.messageDisplay()
        Message.text = "\(dataSource.display)"
    }
    
    @IBAction func plusFive2(_ sender: Any) {
        dataSource.increase2Five()
        scoreLabel2.text = "\(dataSource.score2)"
    }
    
    @IBAction func minusFive2(_ sender: Any) {
        dataSource.decrease2Five()
        scoreLabel2.text = "\(dataSource.score2)"
        dataSource.messageDisplay()
        Message.text = "\(dataSource.display)"
    }
    
}
