//
//  SecondViewController.swift
//  LifePointCalculator
//
//  Created by Student on 12/8/15.
//  Copyright © 2015 George O'Brien. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet weak var plusMinusSegment: UISegmentedControl!
    @IBOutlet weak var lifePointSegment: UISegmentedControl!
    @IBOutlet weak var playerOneLife: UILabel!
    @IBOutlet weak var playerTwoLife: UILabel!
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func playerOneTap(sender: AnyObject)
    {
    
        if plusMinusSegment.selectedSegmentIndex == 0
        {
            playerOneLife.text = (NSString(string: playerOneLife.text!).intValue + returnValue(lifePointSegment.selectedSegmentIndex)).description
        }
        else
        {
            playerOneLife.text = (NSString(string: playerOneLife.text!).intValue - returnValue(lifePointSegment.selectedSegmentIndex)).description
        }
    }
    
    @IBAction func playerTwoTap(sender: AnyObject)
    {
        if plusMinusSegment.selectedSegmentIndex == 0
        {
            playerTwoLife.text = (NSString(string: playerTwoLife.text!).intValue + returnValue(lifePointSegment.selectedSegmentIndex)).description
        }
        else
        {
            playerTwoLife.text = (NSString(string: playerTwoLife.text!).intValue - returnValue(lifePointSegment.selectedSegmentIndex)).description
        }
    }

    @IBAction func playerOneHalf(sender: AnyObject)
    {
        playerOneLife.text = ((NSString(string: playerOneLife.text!).integerValue) / 2).description
    }
    
    @IBAction func playerTwoHalf(sender: AnyObject)
    {
        playerTwoLife.text = ((NSString(string: playerTwoLife.text!).integerValue) / 2).description
    }
    
    @IBAction func onResetTap(sender: AnyObject)
    {
        playerOneLife.text = "8000"
        playerTwoLife.text = "8000"
    }
    
    func returnValue(index : Int) -> Int
    {
        if index == 0
        {
            return 10
        }
        else if index == 1
        {
            return 50
        }
        else if index == 2
        {
            return 100
        }
        else if index == 3
        {
            return 500
        }
        else if index == 4
        {
            return 1000
        }
        return 4000
    }
}
