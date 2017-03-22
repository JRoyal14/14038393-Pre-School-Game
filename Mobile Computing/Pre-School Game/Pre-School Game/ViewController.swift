//
//  ViewController.swift
//  Pre-School Game
//
//  Created by jr14abl on 10/03/2017.
//  Copyright © 2017 jr14abl. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var startLocation: CGPoint?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startLocation = touches.first?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?){
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPointMake(self.center.x+dx, self.center.y+dy)
        
    }



}




class ViewController: UIViewController {
    
    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var Button0: UIButton!

    @IBOutlet var Button1: UIButton!
    
    @IBOutlet var Button2: UIButton!
    
    @IBOutlet var Button3: UIButton!
    
    @IBOutlet var Button4: UIButton!
    
    @IBOutlet var Button5: UIButton!
    
    @IBOutlet var Button6: UIButton!
    
    @IBOutlet var Button7: UIButton!
    
    @IBOutlet var Button8: UIButton!
    
    @IBOutlet var Button9: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    
    @IBOutlet var Next: UIButton!
    
    @IBOutlet var Apple1: DraggedImageView!
    @IBOutlet var Apple2: DraggedImageView!
    @IBOutlet var Apple3: DraggedImageView!
    @IBOutlet var Apple4: DraggedImageView!
    @IBOutlet var Apple5: DraggedImageView!
    @IBOutlet var Apple6: DraggedImageView!
    @IBOutlet var Apple7: DraggedImageView!
    @IBOutlet var Apple8: DraggedImageView!
    @IBOutlet var Apple9: DraggedImageView!
    @IBOutlet var Plate: UIImageView!
    
    
    
    
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        RandomQuestions()
        Hide()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 4
        RandomNumber += 1
        
        switch(RandomNumber){
        
        case 1:
            QuestionLabel.text = "1+0 = ?"
            CorrectAnswer = "1"
            
            break
        case 2:
            QuestionLabel.text = "1+1 = ?"
            CorrectAnswer = "2"
            
            break
        case 3:
            QuestionLabel.text = "1+2 = ?"
            CorrectAnswer = "3"
            
            break
        case 4:
            QuestionLabel.text = "2+2 = ?"
            CorrectAnswer = "4"
            break
        
        
        default:
            break
        
        }
    }
    func Hide(){
        LabelEnd.hidden = true
        Next.hidden = true
    }
    func UnHide(){
        LabelEnd.hidden = false
        Next.hidden = false
    }
    
    func ButtonHide(){
        Apple1.hidden = true
        Apple2.hidden = true
        Apple3.hidden = true
        Apple4.hidden = true
        Apple5.hidden = true
        Apple6.hidden = true
        Apple7.hidden = true
        Apple8.hidden = true
        Apple9.hidden = true
        Plate.hidden = true
        
        
        Button0.hidden = true
        Button1.hidden = true
        Button2.hidden = true
        Button3.hidden = true
        Button4.hidden = true
        Button5.hidden = true
        Button6.hidden = true
        Button7.hidden = true
        Button8.hidden = true
        Button9.hidden = true
    }
    
    func ButtonUnHide(){
        Apple1.hidden = false
        Apple2.hidden = false
        Apple3.hidden = false
        Apple4.hidden = false
        Apple5.hidden = false
        Apple6.hidden = false
        Apple7.hidden = false
        Apple8.hidden = false
        Apple9.hidden = false
        Plate.hidden = false
        
        Button0.hidden = false
        Button1.hidden = false
        Button2.hidden = false
        Button3.hidden = false
        Button4.hidden = false
        Button5.hidden = false
        Button6.hidden = false
        Button7.hidden = false
        Button8.hidden = false
        Button9.hidden = false
    }
    
        
    
    func delay(time: Double, closure: () -> () ) {
        dispatch_after(
            dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
    }
    
    
    
    
    
    
    
    func Button0Action(sender: AnyObject) {
        if (CorrectAnswer == "0"){
            UnHide()
            ButtonHide()
            LabelEnd.text = ("You are correct")
        }
        else {
            QuestionLabel.textColor = UIColor .redColor()
            QuestionLabel.textColor = UIColor .blackColor()
            
        }
        
    }
    
   func Button1Action(sender: AnyObject) {
        if (CorrectAnswer == "1"){
            UnHide()
            ButtonHide()
            LabelEnd.text = ("You are correct")
        }
        else {
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .blackColor()
            }
        }
        
    }
    
    func Button2Action(sender: AnyObject) {
        if (CorrectAnswer == "2"){
            UnHide()
            ButtonHide()
            LabelEnd.text = ("You are correct")
        }
        else {
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .blackColor()
            }
        }
        
    }
    
    func Button3Action(sender: AnyObject) {
        if (CorrectAnswer == "3"){
            UnHide()
            ButtonHide()
            LabelEnd.text = ("You are correct")
        }
        else {
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .blackColor()
            }
        }
    }
    
   func Button4Action(sender: AnyObject) {
        if (CorrectAnswer == "4"){
            UnHide()
            ButtonHide()
            LabelEnd.text = ("You are correct")
        }
        else {
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .blackColor()
            }
        }
    }
    
    func Button5Action(sender: AnyObject) {
    }
    
    func Button6Action(sender: AnyObject) {
    }
    
    func Button7Action(sender: AnyObject) {
    }
    
    func Button8Action(sender: AnyObject) {
    }
    
    func Button9Action(sender: AnyObject) {
    }
    
    func Next(sender: AnyObject) {
        RandomQuestions()
        Hide()
        ButtonUnHide()
    }
    

}
