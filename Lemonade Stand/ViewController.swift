//
//  ViewController.swift
//  Lemonade Stand
//
//  Created by Mark Stuver on 11/17/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Stats & Inventory
    @IBOutlet weak var moneyInBankLabel: UILabel!
    @IBOutlet weak var daysInBusinessLabel: UILabel!
    @IBOutlet weak var lemonsInInventoryLabel: UILabel!
    @IBOutlet weak var cubesInInventoryLabel: UILabel!
    @IBOutlet weak var sugarInInventoryLabel: UILabel!
    
    // Purchase Supplies
    @IBOutlet weak var lemonPurchaseLabel: UILabel!
    @IBOutlet weak var iceCubePurchaseLabel: UILabel!
    @IBOutlet weak var sugarPurchaseLabel: UILabel!
    @IBOutlet weak var amountInCartLabel: UILabel!
    
    // Prep Today's Lemonade
    @IBOutlet weak var lemonMixLabel: UILabel!
    @IBOutlet weak var iceCubeMixLabel: UILabel!
    @IBOutlet weak var sugarMixLabel: UILabel!
    @IBOutlet weak var tasteAdjustLabel: UIImageView!
    
    // Global Variables - Stats & Inventory
    var lemonsInInventory = 0
    var iceCubesInInventory = 0
    var sugarInInventory = 0
    var moneyInBank = 0
    var daysInBusiness = 0
    
    // Global Variables - Purchase Supplies
    var amountInCart = 0
    var lemonInCart = 0
    var iceCubesInCart = 0
    var sugarInCart = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resetGame()
        self.resetPurchaseSupplies()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - ActionButtons

    // Purchase Supplies
    
    @IBAction func purchaseLemonAddButtonPressed(sender: AnyObject!) {
        
        if amountInCart > moneyInBank {
            
           
            showAlertWithText(message:"You do not not have enough funds to cover the amount in your shopping cart!")
            
            amountInCart -= 2
        }
        else {

            lemonInCart += 1
            amountInCart += 2
            self.lemonPurchaseLabel.text = "\(lemonInCart)"
            self.amountInCartLabel.text = "$\(amountInCart)"
        }
}
    
    
    
    @IBAction func purchaseLemonRemoveButtonPressed(sender: AnyObject) {
        if amountInCart > moneyInBank {
            
            
            showAlertWithText(message:"You do not have enough funds to cover the amount in your shopping cart!")
        }
        else {
            
            if lemonInCart > 0 {
            lemonInCart -= 1
            amountInCart -= 2
            self.lemonPurchaseLabel.text = "\(lemonInCart)"
            self.amountInCartLabel.text = "$\(amountInCart)"
        }
        else {
            
            println("No Negative amount allowed!!")
            }
        }
    }
    
    
    @IBAction func purchaseIceCubeAddButtonPressed(sender: AnyObject) {
        
        iceCubesInCart += 1
        amountInCart += 1
        self.iceCubePurchaseLabel.text = "\(iceCubesInCart)"
        
        
        self.amountInCartLabel.text = "$\(amountInCart)"

    }
    @IBAction func purchaseIceCubeRemoveButtomPressed(sender: AnyObject) {
        
        if iceCubesInCart > 0 {
            iceCubesInCart -= 1
            amountInCart -= 1
            self.iceCubePurchaseLabel.text = "\(iceCubesInCart)"
            self.amountInCartLabel.text = "$\(amountInCart)"
        }
        else {
            
            println("No Negative amount allowed!!")
            
        }

    }
    @IBAction func purchaseSugarAddButtonPressed(sender: AnyObject) {
        
        sugarInCart += 1
        amountInCart += 1
        self.sugarPurchaseLabel.text = "\(sugarInCart)"
        self.amountInCartLabel.text = "$\(amountInCart)"
    }
    @IBAction func purchaseSugarRemoveButtomPressed(sender: AnyObject) {
        
        if sugarInCart > 0 {
            sugarInCart -= 1
            amountInCart -= 1
            self.sugarPurchaseLabel.text = "\(sugarInCart)"
            self.amountInCartLabel.text = "$\(amountInCart)"
        }
        else {
            
            println("No Negative amount allowed!!")
            
        }

    }
    
    // Prep Today's Lemonade
    @IBAction func mixLemonAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func mixLemonRemoveButtonPressed(sender: AnyObject) {
    }
    @IBAction func mixIceCubeAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func mixIceCubeRemoveButtomPressed(sender: AnyObject) {
    }
    @IBAction func mixSugarAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func mixSugarRemoveButtomPressed(sender: AnyObject) {
    }
    
    
    // Check Out
    @IBAction func checkOutButtonPressed(sender: AnyObject) {
        

        resetPurchaseSupplies()
    }
    
    // Open Store
    @IBAction func openStoreButtonPressed(sender: AnyObject) {
    }

    

    
    
    
    // Helper Methods
    
    func resetGame() {
        
        lemonsInInventory = 1
        iceCubesInInventory = 1
        sugarInInventory = 1
        daysInBusiness = 0
        moneyInBank = 10
        amountInCart = 0
        
        moneyInBankLabel.text = "$\(moneyInBank)"
        daysInBusinessLabel.text = "\(daysInBusiness)"
        lemonsInInventoryLabel.text = "\(lemonsInInventory)"
        cubesInInventoryLabel.text = "\(iceCubesInInventory)"
        sugarInInventoryLabel.text = "\(sugarInInventory)"
    }
    
    func resetPurchaseSupplies() {
        
        amountInCart = 0
        lemonInCart = 0
        iceCubesInCart = 0
        sugarInCart = 0
        
        amountInCartLabel.text = "$\(amountInCart)"
        lemonPurchaseLabel.text = "\(lemonInCart)"
        iceCubePurchaseLabel.text = "\(iceCubesInCart)"
        sugarPurchaseLabel.text = "\(sugarInCart)"
    }
    
    
    
    // Used to show an alert to the user
func showAlertWithText (header : String = "Warning", message : String) {
        
        
    var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    
    }

    
   

}

