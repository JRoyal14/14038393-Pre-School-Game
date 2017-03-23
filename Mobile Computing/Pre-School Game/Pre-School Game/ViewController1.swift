//
//  ViewController1.swift
//  GIfmelson
//
//  Created by Melson Fernandes on 22/03/2017.
//  Copyright © 2017 codeking. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    
    
    @IBOutlet weak var BigStar: StarMovement!
    @IBOutlet weak var Click: StarMovement!
    @IBOutlet weak var SmallStar: StarMovement!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    Click.StarShake()
    SmallStar.StarShake()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
