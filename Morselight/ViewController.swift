//
//  ViewController.swift
//  Morselight
//
//  Created by Benedicte Tronstad on 22/09/14.
//  Copyright (c) 2014 Benedicte Tronstad. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var txtbx_Input: UITextField!
    @IBOutlet var btn_OK: UIButton!
    @IBOutlet var MorseLightImageView: UIImageView!
    @IBOutlet var MorseResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func PlayMorse(chrToPlay:[String]) ->String {
        
        var txtLetter:String = ""
        
        for item in chrToPlay {
            switch item{
            case "short":
                //self.MorseLightImageView.image = UIImage(named: "AppleLogo")
                //NSThread.sleepForTimeInterval(0.5)
                txtLetter = txtLetter + "."
            
            case "long":
                txtLetter = txtLetter + "-"
                
                
            case "newchar":
                txtLetter = txtLetter + " "
                
            case "wordSpace":
                txtLetter = txtLetter + "   "
                
            default:
                NSThread.sleepForTimeInterval(0.5)
            }
        }

        return txtLetter
        
    }

    
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        textField.resignFirstResponder()
        return true;
    }

    @IBAction func btn_PressOK(sender: UIButton) {
        
        //self.MorseLightImageView.image = UIImage(named: "AppleLogo")
        
        var mrc = MorseLightCharacter()
        var inputtxt = self.txtbx_Input.text.lowercaseString
        var labelResult:String = ""
        
        for c in inputtxt {
            switch c {
            case "a":
                labelResult = labelResult + PlayMorse(mrc.chr_a)
            case "b":
                labelResult = labelResult + PlayMorse(mrc.chr_b)
            case "c":
                labelResult = labelResult + PlayMorse(mrc.chr_c)
            case "d":
                labelResult = labelResult + PlayMorse(mrc.chr_d)
            case "e":
                labelResult = labelResult + PlayMorse(mrc.chr_e)
            case "f":
                labelResult = labelResult + PlayMorse(mrc.chr_f)
            case "g":
                labelResult = labelResult + PlayMorse(mrc.chr_g)
            case "h":
                labelResult = labelResult + PlayMorse(mrc.chr_h)
            case "i":
                labelResult = labelResult + PlayMorse(mrc.chr_i)
            case "j":
                labelResult = labelResult + PlayMorse(mrc.chr_j)
            case "k":
                labelResult = labelResult + PlayMorse(mrc.chr_k)
            case "l":
                labelResult = labelResult + PlayMorse(mrc.chr_l)
            case "m":
                labelResult = labelResult + PlayMorse(mrc.chr_m)
            case "n":
                labelResult = labelResult + PlayMorse(mrc.chr_n)
            case "o":
                labelResult = labelResult + PlayMorse(mrc.chr_o)
            case "p":
                labelResult = labelResult + PlayMorse(mrc.chr_p)
            case "q":
                labelResult = labelResult + PlayMorse(mrc.chr_q)
            case "r":
                labelResult = labelResult + PlayMorse(mrc.chr_r)
            case "s":
                labelResult = labelResult + PlayMorse(mrc.chr_s)
            case "t":
                labelResult = labelResult + PlayMorse(mrc.chr_t)
            case "u":
                labelResult = labelResult + PlayMorse(mrc.chr_u)
            case "v":
                labelResult = labelResult + PlayMorse(mrc.chr_v)
            case "w":
                labelResult = labelResult + PlayMorse(mrc.chr_w)
            case "x":
                labelResult = labelResult + PlayMorse(mrc.chr_x)
            case "y":
                labelResult = labelResult + PlayMorse(mrc.chr_y)
            case "z":
                labelResult = labelResult + PlayMorse(mrc.chr_z)
            case " ":
                labelResult = labelResult + PlayMorse(mrc.chr_wordspace)
            default:
                labelResult = labelResult + PlayMorse(mrc.chr_b)
            }
        }
        
        //self.txtbx_Input.text.removeAll(keepCapacity: true)
        self.MorseResult.text = labelResult
        textFieldShouldReturn(txtbx_Input)
    }
}

class MorseLightCharacter {
    var chr_a:[String] = ["short","long"]
    var chr_b:[String] = ["long","short","short","short"]
    var chr_c:[String] = ["long","short","long","short"]
    var chr_d:[String] = ["long","short","short"]
    var chr_e:[String] = ["short"]
    var chr_f:[String] = ["short","short","long","short"]
    var chr_g:[String] = ["long","long","short"]
    var chr_h:[String] = ["short","short","short","short"]
    var chr_i:[String] = ["short","short"]
    var chr_j:[String] = ["short","long","long","long"]
    var chr_k:[String] = ["long","short","long"]
    var chr_l:[String] = ["short","long","short","short"]
    var chr_m:[String] = ["long","long"]
    var chr_n:[String] = ["long","short"]
    var chr_o:[String] = ["long","long","long"]
    var chr_p:[String] = ["short","long","long","short"]
    var chr_q:[String] = ["long","long","short","long"]
    var chr_r:[String] = ["short","long","short"]
    var chr_s:[String] = ["short","short","short"]
    var chr_t:[String] = ["long"]
    var chr_u:[String] = ["short","short","long"]
    var chr_v:[String] = ["short","short","short","long"]
    var chr_w:[String] = ["short","long","long"]
    var chr_x:[String] = ["long","short","short","long"]
    var chr_y:[String] = ["long","short","long","long"]
    var chr_z:[String] = ["long","long","short","short"]
    var chr_pause:[String] = ["short"]
    var chr_wordspace:[String] = ["long"]
    
    init () {
        
    }
}



