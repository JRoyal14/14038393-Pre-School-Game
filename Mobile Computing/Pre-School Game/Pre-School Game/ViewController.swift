//
//  ViewController.swift
//  Pre-School Game
//
//  Created by jr14abl on 10/03/2017.
//  Copyright © 2017 jr14abl. All rights reserved.
//

import UIKit
import AVFoundation



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
    
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 10
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue( CGPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.addAnimation(animation, forKey: "position")
        
    }
    
}




class ViewController: UIViewController {
    
    @IBOutlet var QuestionLabel: UILabel!
    
    
    @IBOutlet weak var Button0: UIButtonShake!
    
    //@IBOutlet var Button0: UIButton!
    
    @IBOutlet weak var Button1: UIButtonShake!
    
    //@IBOutlet var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButtonShake!
    
    //@IBOutlet var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButtonShake!
    
    //@IBOutlet var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButtonShake!
    
    //@IBOutlet var Button4: UIButton!
    
    @IBOutlet weak var Button5: UIButtonShake!
    
    //@IBOutlet var Button5: UIButton!
    
    @IBOutlet weak var Button6: UIButtonShake!
    
    //@IBOutlet var Button6: UIButton!
    
    @IBOutlet weak var Button7: UIButtonShake!
    
    //@IBOutlet var Button7: UIButton!
    
    @IBOutlet weak var Button8: UIButtonShake!
    
    //@IBOutlet var Button8: UIButton!
    
    @IBOutlet weak var Button9: UIButtonShake!
    
    //@IBOutlet var Button9: UIButton!
    
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
    
    @IBOutlet weak var StarShake1: StarMovement!
    
    @IBOutlet weak var Play: UIButton!
    
    var CorrectAnswer = String()
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("welldone", ofType:"mp3")!)
    
    var ButtonAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view, typically from a nib.
        
        ButtonAudioPlayer =  try! AVAudioPlayer(contentsOfURL: ButtonAudioURL)
        
        Hide()
        ButtonUnHide()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 9
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
        case 5:
            QuestionLabel.text = "3+2 = ?"
            CorrectAnswer = "5"
            
            break
        case 6:
            QuestionLabel.text = "3+3 = ?"
            CorrectAnswer = "6"
            
            break
        case 7:
            QuestionLabel.text = "4+3 = ?"
            CorrectAnswer = "7"
            
            break
        case 8:
            QuestionLabel.text = "5+3 = ?"
            CorrectAnswer = "8"
            
            break
        case 9:
            QuestionLabel.text = "5+4 = ?"
            CorrectAnswer = "9"
            
            break
        
        
        default:
            break
        
        }
    }
    func playhide() {
    Play.hidden = true
    QuestionLabel.hidden = false
    }
    func Hide(){
        LabelEnd.hidden = true
        Next.hidden = true
        StarShake1.hidden = true
        QuestionLabel.hidden = true
    }
    func UnHide(){
        LabelEnd.hidden = false
        Next.hidden = false
        StarShake1.hidden = false
        
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
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        
    }
    
   func Button1Action(sender: AnyObject) {
        if (CorrectAnswer == "1"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
    
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }

    
    }
    
    func Button2Action(sender: AnyObject) {
        if (CorrectAnswer == "2"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        
    }
    
    func Button3Action(sender: AnyObject) {
        if (CorrectAnswer == "3"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
   func Button4Action(sender: AnyObject) {
        if (CorrectAnswer == "4"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
    }
    }
    
    func Button5Action(sender: AnyObject) {
        if (CorrectAnswer == "5"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
    func Button6Action(sender: AnyObject) {
        if (CorrectAnswer == "6"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
    func Button7Action(sender: AnyObject) {
        if (CorrectAnswer == "7"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
    func Button8Action(sender: AnyObject) {
        if (CorrectAnswer == "8"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "9"){
            Button9.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
    func Button9Action(sender: AnyObject) {
        if (CorrectAnswer == "9"){
            UnHide()
            ButtonHide()
            StarShake1.StarShake()
            LabelEnd.text = ("Well Done!")
            QuestionLabel.text = (CorrectAnswer)
            ButtonAudioPlayer.play()
        }
        else if (CorrectAnswer == "0"){
            Button0.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "1"){
            Button1.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "2"){
            Button2.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
            
        else if (CorrectAnswer == "3"){
            Button3.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "4"){
            Button4.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "5"){
            Button5.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "6"){
            Button6.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "7"){
            Button7.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
        else if (CorrectAnswer == "8"){
            Button8.shakeB()
            QuestionLabel.textColor = UIColor .redColor()
            delay(0.5){
                self.QuestionLabel.textColor = UIColor .whiteColor()
            }
        }
    }
    
    func Next(sender: AnyObject) {
        RandomQuestions()
        Hide()
        ButtonUnHide()
        playhide()
    }
    
    @IBAction func PlayAction(sender: AnyObject) {
        
        RandomQuestions()
        playhide()
        Apple1.shake()
        Apple2.shake()
        Apple3.shake()
        Apple4.shake()
        Apple5.shake()
        Apple6.shake()
        Apple7.shake()
        Apple8.shake()
        Apple9.shake()
        
        
    }
    

}

