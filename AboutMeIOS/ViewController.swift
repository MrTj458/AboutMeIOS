//
//  ViewController.swift
//  AboutMeIOS
//
//  Created by Hodsdon, Trevor on 1/6/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var smileyFace: UIImageView!
    var smileyVisible : Bool = true
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeToFrom(sender: UIButton)
    {
        performSegueWithIdentifier("toFrom", sender: sender)
    }

    @IBAction func changeSmiley(sender: UIButton)
    {
        if(smileyFace.alpha == 1.0 && smileyVisible == true)
        {
            smileyFace.alpha = 0.75
        }
        else if(smileyFace.alpha == 0.75 && smileyVisible == true)
        {
            smileyFace.alpha = 0.5
        }
        else if(smileyFace.alpha == 0.5 && smileyVisible == true)
        {
            smileyFace.alpha = 0.25
        }
        else if(smileyFace.alpha == 0.25 && smileyVisible == true)
        {
            smileyFace.alpha = 0.0
            smileyVisible = false
        }
        else if(smileyFace.alpha == 0.0 && smileyVisible == false)
        {
            smileyFace.alpha = 0.25
        }
        else if(smileyFace.alpha == 0.25 && smileyVisible == false)
        {
            smileyFace.alpha = 0.5
        }
        else if(smileyFace.alpha == 0.5 && smileyVisible == false)
        {
            smileyFace.alpha = 0.75
        }
        else if(smileyFace.alpha == 0.75 && smileyVisible == false)
        {
            smileyFace.alpha = 1.0
            smileyVisible = true
        }
    }
}

