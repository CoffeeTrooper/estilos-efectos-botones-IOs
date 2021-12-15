//
//  ViewController.swift
//  ExtensionesApp
//
//  Created by Sofia Alejandra on 9/13/21.
//  Copyright © 2021 Sofia Alejandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bounceButton: UIButton!
    
    @IBOutlet weak var shineButton: UIButton!
    @IBOutlet weak var jumpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Se le aplica el border redondeado a los botones al cargar la app

        bounceButton.round()
        shineButton.round()
        jumpButton.round()
    }

    //Actions de botones
    

    @IBAction func bounceButtonAction(_ sender: Any) {
        bounceButton.bounce()
    }
    
    @IBAction func shineButtonAction(_ sender: Any) {
        shineButton.shine()
    }
    
    @IBAction func jumpButtonAction(_ sender: Any) {
        jumpButton.jump()
    }
}

 
