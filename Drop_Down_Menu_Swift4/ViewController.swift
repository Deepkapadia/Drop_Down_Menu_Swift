//
//  ViewController.swift
//  Drop_Down_Menu_Swift4
//
//  Created by DeEp KapaDia on 23/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectBTNoutlet: UIButton!
    
    
    @IBOutlet var interestItems: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        selectBTNoutlet.layer.cornerRadius = selectBTNoutlet.frame.height / 2.0
        
        interestItems.forEach { (itembtn) in
           
            itembtn.layer.cornerRadius = itembtn.frame.height / 2.0
            itembtn.isHidden = true
            
        }
    
        }

    @IBAction func selectBTN(_ sender: UIButton) {
        
        //All Buttons will apear on clicking select button with animation... 
        interestItems.forEach { (itembtn) in
            
            UIView.animate(withDuration: 0.4 , animations: {
                
                itembtn.isHidden = !itembtn.isHidden

                self.view.layoutIfNeeded()
                })
            
        }
        
    }
    
    @IBAction func insterstBTNs(_ sender: UIButton) {
        
        if let BTNlbl = sender.titleLabel?.text{
           
                print(BTNlbl)
            //hide again all buttond by select anyone option....
            interestItems.forEach { (itembtn) in
                
                UIView.animate(withDuration: 0.4 , animations: {
                    
                    itembtn.isHidden = !itembtn.isHidden
                    
                    self.view.layoutIfNeeded()
                })
                
            }
                 
            }
           
        }
        
    }
    



