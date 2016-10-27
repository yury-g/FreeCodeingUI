//
//  ViewController.swift
//  FreeCodeingUI
//
//  Created by yodyodsmall on 10/27/16.
//  Copyright © 2016 yuryg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Activity1: UIActivityIndicatorView!
    @IBAction func mySwitch(_ sender: UISwitch) {
   
        let myButton = sender
        
        if myButton.isOn {
            Activity1.startAnimating()
        } else{
            Activity1.stopAnimating()
        }
    }
    @IBOutlet weak var Act1: UIActivityIndicatorView!
    @IBOutlet weak var Act2: UIActivityIndicatorView!
    @IBOutlet weak var Act3: UIActivityIndicatorView!
    @IBAction func mySegmentedControllerPressed(_ sender: UISegmentedControl) {
        let myIndex = sender.selectedSegmentIndex
        switch myIndex {  //Test Look at "myIndex"
        case 0:
        print("Selected \(myIndex)")
        Act1.startAnimating()
        Act2.stopAnimating()
        Act3.stopAnimating()
        case 1:
            Act2.startAnimating()
            Act1.stopAnimating()
            Act3.stopAnimating()

            print("Selected \(myIndex)")
        case 2:
            Act3.startAnimating()
            Act2.stopAnimating()
            Act1.stopAnimating()

            print("Selected \(myIndex)")

        default:
            Act3.stopAnimating()
            Act2.stopAnimating()
            Act1.stopAnimating()
        print("Nothing Selected")
        }
    
    
    }
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
   
        let alert : UIAlertController = UIAlertController(title: "Erase your Brain?", message: "Re-format neurons?", preferredStyle: .alert)
        
        let myAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) {
            (_:UIAlertAction) in
            print("canel pressed")
            self.myLabel.text = "user canceled"
            self.myLabel.textColor = UIColor.red
        }

        let myAction2: UIAlertAction = UIAlertAction(title: "Yes", style: .destructive) {
            (_:UIAlertAction) in
            print("installing")
            self.myLabel.text = "installing"
            self.myLabel.textColor = UIColor.red
        }
        
        let myAction3: UIAlertAction = UIAlertAction(title: "Later", style: .default) {
            (_:UIAlertAction) in
           // print("installing")
            self.myLabel.text = "Undecided"
          //  self.myLabel.textColor = UIColor.red
        }
        
        alert.addAction(myAction)
        alert.addAction(myAction2)
      //  alert.addAction(myAction3)
    
        self.present(alert, animated: true)
//        self.present(alert, animated: true){
            self.myLabel.text = "Make A selection"
        }
        
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

