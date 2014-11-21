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
    
    // Prep Today's Lemonade
    @IBOutlet weak var lemonMixLabel: UILabel!
    @IBOutlet weak var iceCubeMixLabel: UILabel!
    @IBOutlet weak var sugarMixLabel: UILabel!
    @IBOutlet weak var tasteAdjustLabel: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resetGame()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - ActionButtons

    // Purchase Supplies
    
    @IBAction func purchaseLemonAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func purchaseLemonRemoveButtonPressed(sender: AnyObject) {
    }
    @IBAction func purchaseIceCubeAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func purchaseIceCubeRemoveButtomPressed(sender: AnyObject) {
    }
    @IBAction func purchaseSugarAddButtonPressed(sender: AnyObject) {
    }
    @IBAction func purchaseSugarRemoveButtomPressed(sender: AnyObject) {
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
    }
    
    // Open Store
    @IBAction func openStoreButtonPressed(sender: AnyObject) {
    }

    

    
    
    
    // Helper Methods
    
    func resetGame() {
        
        self.moneyInBankLabel.text = "$10"
        self.daysInBusinessLabel.text = "0"
        self.lemonsInInventoryLabel.text = "1"
        self.cubesInInventoryLabel.text = "1"
        self.sugarInInventoryLabel.text = "1"
    }
    
    
   

}

