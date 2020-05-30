//
//  firstViewController.swift
//  miniProjectTwo
//
//  Created by MADELINE on 5/23/20.
//  Copyright © 2020 MADELINE. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

        @IBOutlet weak var message: UILabel!
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }

        @IBAction func topButtonPressed(_ sender: UIButton) {
            buttonPressed(button : 0 )
        }
        
        @IBAction func middleButtonPressed(_ sender: UIButton) {
            buttonPressed(button : 1 )
        }
        
        @IBAction func lastButtonPressed(_ sender: UIButton) {
            buttonPressed(button : 2 )
        }
        
        func buttonPressed(button : Int ) {
            if button == 0 {
                message.text = "I love strawberries too!"
            }
            else if button == 1 {
                message.text = "CITRUS FRUITS >>>>"
            }
            else {
                message.text = "WATERMELON SUGAR!!!"
            }
        }
        
    }



