//
//  ViewController.swift
//  AnswerBall
//
//  Created by David Baldwin on 4/12/18.
//  Copyright © 2018 David Baldwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var data = Data()
    @IBOutlet weak var answer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func getAnswer(_ sender: Any) {
        answer.text = data.getAnswer()
        answer.isHidden = false
        data.playSound()
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        getAnswer(UIEvent.self)
    }
}

