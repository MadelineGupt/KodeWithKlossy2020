//
//  secondViewController.swift
//  miniProjectTwo
//
//  Created by MADELINE on 5/23/20.
//  Copyright © 2020 MADELINE. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
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
                message.text = "Are you okay...blind twice if you need help..."
            }
            else if button == 1 {
                message.text = "can't wait for fall!"
            }
            else {
                message.text = "you're a real one"
            }
        }
        
    }


