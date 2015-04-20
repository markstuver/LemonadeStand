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
            // Labels
    @IBOutlet weak var purchaseSuppliesLabel: UILabel!
    @IBOutlet weak var lemonPurchaseLabel: UILabel!
    @IBOutlet weak var iceCubePurchaseLabel: UILabel!
    @IBOutlet weak var sugarPurchaseLabel: UILabel!
    @IBOutlet weak var amountInCartLabel: UILabel!
            // Lemon Buttons
    @IBOutlet weak var lemonPurchaseImageView: UIImageView!
    @IBOutlet weak var twoEachOutlet: UILabel!
    @IBOutlet weak var addLemonsSupplyOutlet: UIButton!
    @IBOutlet weak var subtractLemonsSupplyOutlet: UIButton!
            // IceCubes Buttons
    @IBOutlet weak var IceCubePurchaseImageView: UIImageView!
    @IBOutlet weak var oneEachOutlet: UILabel!
    @IBOutlet weak var addCubesSupplyOutlet: UIButton!
    @IBOutlet weak var subtractCubesSupplyOutlet: UIButton!
            // Sugar Buttons
    @IBOutlet weak var sugarPurchaseImageView: UIImageView!
    
    @IBOutlet weak var oneEach2Outlet: UILabel!
    @IBOutlet weak var addSugarSupplyOutlet: UIButton!
    @IBOutlet weak var subtractSugarSupplyOutlet: UIButton!
            // Check Out Button
    @IBOutlet weak var CheckOutButtonOutlet: UIButton!
    @IBOutlet weak var shoppingCartImageView: UIImageView!
    
    
    
   
    // Prep Today's Lemonade
    
    @IBOutlet weak var prepTodayLemonadeLabel: UILabel!
    @IBOutlet weak var lemonMixLabel: UILabel!
    @IBOutlet weak var iceCubeMixLabel: UILabel!
    @IBOutlet weak var sugarMixLabel: UILabel!
    
    @IBOutlet weak var pitcherImageView: UIImageView!
    @IBOutlet weak var sweetKeyImageView: UIImageView!
    @IBOutlet weak var equalKeyImageView: UIImageView!
    @IBOutlet weak var sourKeyImageView: UIImageView!
    @IBOutlet weak var sweetKeyLabel: UILabel!
    @IBOutlet weak var equalKeyLabel: UILabel!
    @IBOutlet weak var sourKeyLabel: UILabel!
    
    
    @IBOutlet weak var lemonSliceImageView: UIImageView!
    @IBOutlet weak var addLemonSlice: UIButton!
    @IBOutlet weak var subtractLemonSlice: UIButton!
    
    @IBOutlet weak var singleCubeImageView: UIImageView!
    @IBOutlet weak var addSingleCube: UIButton!
    @IBOutlet weak var subtractSingleCube: UIButton!
    
    @IBOutlet weak var sugarSpoonImageView: UIImageView!
    @IBOutlet weak var addSugarSpoon: UIButton!
    @IBOutlet weak var subtractSugarSpoon: UIButton!
    
    @IBOutlet weak var donePrepingButtonOutlet: UIButton!
    
    
    
    // Lemonade Stand
    @IBOutlet weak var storeFrontImageView: UIImageView!
    @IBOutlet weak var todaysVisitorsLabel: UILabel!
    @IBOutlet weak var todaysProfitsLabel: UILabel!
    @IBOutlet weak var todayHeadingLabel: UILabel!
    @IBOutlet weak var openDayOutlet: UIButton!
    @IBOutlet weak var endOfDayOutlet: UIButton!
    
    
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
    
    // Global Variables - Prep Today's Lemonade
    var lemonMix = 0
    var iceCubeMix = 0
    var sugarMix = 0
    
    // Tuple - Pre Today's Lemonade
    var lemonadeTaste = (lemon : 0, iceCube : 0, sugar : 0)
    
 
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
    
    @IBAction func purchaseLemonAddButtonPressed(sender: AnyObject) {
    
        lemonInCart += 1
        amountInCart += 2
        self.lemonPurchaseLabel.text = "\(lemonInCart)"
        self.amountInCartLabel.text = "$\(amountInCart)"
      
    }
    
    
    
    @IBAction func purchaseLemonRemoveButtonPressed(sender: AnyObject) {

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
    
    
    // Check Out
    @IBAction func checkOutButtonPressed(sender: AnyObject) {
        
        
        if amountInCart > moneyInBank {
            
            showAlertWithText(header: "Oops! Transaction Failed!", message: "The amount you are trying to purchase is more then the amount\n available in the bank!\n\n You must make adjustments to your purchase before you can continue!")
        }
        else {
            
            moneyInBank -= amountInCart
            lemonsInInventory += lemonInCart
            iceCubesInInventory += iceCubesInCart
            sugarInInventory += sugarInCart
            
            updateInventoryStatus()
            resetPurchaseSupplies()
            showCheckOutSuccessAlert()
        }
    }
    
    

    
    
    // Prep Today's Lemonade
    @IBAction func mixLemonAddButtonPressed(sender: AnyObject) {
        
        lemonMix += 1
        
        updateLemonadeTaste()
        updatePrepView()
        
    }
    
    
    @IBAction func mixLemonRemoveButtonPressed(sender: AnyObject) {
        
        if lemonMix > 0 {
            lemonMix -= 1
            
            updateLemonadeTaste()
            updatePrepView()
        }
            
        else {
            println("No Negative amount allowed!!")
        }
    }
    
    
    @IBAction func mixIceCubeAddButtonPressed(sender: AnyObject) {
        
        iceCubeMix += 1
        
        updateLemonadeTaste()
        updatePrepView()
    }
    
    
    @IBAction func mixIceCubeRemoveButtomPressed(sender: AnyObject) {
        
        if iceCubeMix > 0 {
            iceCubeMix -= 1
            
            updateLemonadeTaste()
            updatePrepView()
        }
            
        else {
            println("No Negative amount allowed!!")
        }

        
        
    }
    
    
    @IBAction func mixSugarAddButtonPressed(sender: AnyObject) {
        
        sugarMix += 1
        
        updateLemonadeTaste()
        updatePrepView()

    }
    
    
    @IBAction func mixSugarRemoveButtomPressed(sender: AnyObject) {
        
        if sugarMix > 0 {
            sugarMix -= 1
            
        updateLemonadeTaste()
        updatePrepView()        }
            
        else {
            println("No Negative amount allowed!!")
        }

    }
    
    
    
    // Open Store
    @IBAction func donePrepingButtonPressed(sender: AnyObject) {
     
        prepDoneAlert()

       
    }

    // OPEN DAY Button
    @IBAction func openDayButtonPressed(sender: AnyObject) {
        
        self.storeFrontImageView.image = UIImage (named: "openStand")
        self.endOfDayOutlet.hidden = false
        self.openDayOutlet.hidden = true
        
        
    }

    
    // END of DAY Button
    @IBAction func endDayButtonPressed(sender: AnyObject) {
        
        
    }

    
    
    
//MARK: - Helper Methods
    
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
    
    
    func updateInventoryStatus() {
        
        moneyInBankLabel.text = "$\(moneyInBank)"
        daysInBusinessLabel.text = "\(daysInBusiness)"
        lemonsInInventoryLabel.text = "\(lemonsInInventory)"
        cubesInInventoryLabel.text = "\(iceCubesInInventory)"
        sugarInInventoryLabel.text = "\(sugarInInventory)"
    }
    
    
    func updatePrepView() {
        
        if lemonMix <= lemonsInInventory {
 
            lemonMixLabel.text = "\(lemonMix)"

        } else {
            
            lemonMix -= 1
            self.showAlertWithText(header: "Oops!", message: "You do not have enough Lemons in your inventory!")
            updateLemonadeTaste()
        }
        
        if iceCubeMix <= iceCubesInInventory {
            
            iceCubeMixLabel.text = "\(iceCubeMix)"
            lemonadeStrengthUpdateView()
            
        } else {
            
            iceCubeMix -= 1
            self.showAlertWithText(header: "Oops!", message: "You do not have enough Ice Cubes in your inventory!")
            updateLemonadeTaste()
        }
        
        if sugarMix <= sugarInInventory {
            
            sugarMixLabel.text = "\(sugarMix)"
        } else {
            
            sugarMix -= 1
            self.showAlertWithText(header: "Oops!", message: "You do not have enough Sugar in your inventory!")
            updateLemonadeTaste()
        }
        
 
    }
    
    // Update the LemonadeTaste Tuple's data
    func updateLemonadeTaste() {
        
        lemonadeTaste.lemon = lemonMix
        lemonadeTaste.iceCube = iceCubeMix
        lemonadeTaste.sugar = sugarMix
        
        println("\(lemonadeTaste.lemon) \(lemonadeTaste.iceCube) \(lemonadeTaste.sugar)")
        
        
    
        
        
        
        

    }
    
    
    func lemonadeStrengthUpdateView() {
        
        if lemonMix == 0 && iceCubeMix == 1 && sugarMix == 0 {
            
            self.pitcherImageView.image = UIImage (named: "water_low_pitcher")
            
           // if lemonMix == 1 && iceCubeMix == 1 && sugarMix = 0 {
                
                // low & sour
                
           // }
            
        }
            else if lemonMix == 0 && iceCubeMix == 2 && sugarMix == 0 {
                
            self.pitcherImageView.image = UIImage (named: "water_mid_pitcher")
            
            }
        
        else if lemonMix == 0 && iceCubeMix == 3 && sugarMix == 0 {
            
            self.pitcherImageView.image = UIImage (named: "water_pitcher")
            
        }
    }
    
    
    
    
    
    
    
    
    
    // Used to show an alert to the user
func showAlertWithText (header : String = "Warning", message : String) {
        
    
    var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
   
    

    
// Alert message for CheckOut - w/Completion Code to disable Purchase Supplies Area
    func showCheckOutSuccessAlert () {
        
        var alert = UIAlertController(title: "Purchase was Successful!", message: "Now its time to prepare the lemonade to sell to your customers.\n\n Try to determine how your customers prefer their lemonade.\n\n Will they like it on the sour side?\n add more lemons.\n\n or maybe they prefer it on\nthe sweet side, add more sugar.\n\n For every sale that you make\n you will receive $2.\n\nFor every customer that you match\n their lemonade preference exactly,\nyou will receive a bonus that\n will be added to the day's profit!", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
       
        // Dismiss Alert View and Execute Code to Disable Purchase Area
        self.presentViewController(alert, animated: true, completion:{
            
    // Disable Purchase Area of Gameboard
            self.purchaseSuppliesLabel.enabled = false
            
            self.lemonPurchaseLabel.enabled = false
            
            self.iceCubePurchaseLabel.enabled = false
            self.twoEachOutlet.enabled = false
            self.sugarPurchaseLabel.enabled = false
            self.amountInCartLabel.enabled = false
            self.oneEachOutlet.enabled = false
            self.addLemonsSupplyOutlet.enabled = false
            self.subtractLemonsSupplyOutlet.enabled = false
            self.oneEachOutlet.enabled = false
            self.addCubesSupplyOutlet.enabled = false
            self.subtractCubesSupplyOutlet.enabled = false
            
            self.addSugarSupplyOutlet.enabled = false
            self.subtractSugarSupplyOutlet.enabled = false
            
            self.CheckOutButtonOutlet.enabled = false
            
            // Gray Images
            self.lemonPurchaseImageView.image = UIImage (named: "lemons_grayed")
            self.IceCubePurchaseImageView.image = UIImage (named: "iceCubes_grayed")
            self.sugarPurchaseImageView.image = UIImage (named: "sugarBag_grayed")
            self.shoppingCartImageView.image = UIImage(named: "shoppingCart_gray")
            
    // Enable Prep Area on Gameboard
            self.prepTodayLemonadeLabel.enabled = true
            
            self.lemonSliceImageView.image = UIImage (named: "slicedLemon")
            self.addLemonSlice.enabled = true
            self.subtractLemonSlice.enabled = true
            self.lemonMixLabel.enabled = true
            
            self.singleCubeImageView.image = UIImage (named: "singleCube")
            self.addSingleCube.enabled = true
            self.subtractSingleCube.enabled = true
            self.iceCubeMixLabel.enabled = true
            
            self.sugarSpoonImageView.image = UIImage (named: "sugarSpoon")
            self.addSugarSpoon.enabled = true
            self.subtractSugarSpoon.enabled = true
            self.sugarMixLabel.enabled = true
            
            self.sweetKeyImageView.image = UIImage (named: "sweet_key")
            self.equalKeyImageView.image = UIImage (named: "equal_key")
            self.sourKeyImageView.image = UIImage (named: "sour_key")
            
            self.sourKeyLabel.enabled = true
            self.sweetKeyLabel.enabled = true
            self.equalKeyLabel.enabled = true
            
            self.pitcherImageView.image = UIImage (named: "emptyLemonPitcher")
            
            self.donePrepingButtonOutlet.enabled = true
        })
    }
    
    
    // Alert message for CheckOut - w/Completion Code to disable Purchase Supplies Area
    func prepDoneAlert () {
        
        var alert = UIAlertController(title: "Its Go Time!!", message: "Now all you need to do is open your store and see how the customers liked your lemonade!", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        // Dismiss Alert View and Execute Code to Disable Prep Area
        self.presentViewController(alert, animated: true, completion: {
            
        // Disable Prep Area on Gameboard
            self.prepTodayLemonadeLabel.enabled = false
            
            self.lemonSliceImageView.image = UIImage (named: "lemonSlice_grayed")
            self.addLemonSlice.enabled = false
            self.subtractLemonSlice.enabled = false
            self.lemonMixLabel.enabled = false
            
            self.singleCubeImageView.image = UIImage (named: "singleCube_grayed")
            self.addSingleCube.enabled = false
            self.subtractSingleCube.enabled = false
            self.iceCubeMixLabel.enabled = false
            
            self.sugarSpoonImageView.image = UIImage (named: "sugarSpoon_grayed")
            self.addSugarSpoon.enabled = false
            self.subtractSugarSpoon.enabled = false
            self.sugarMixLabel.enabled = false
            
            self.sweetKeyImageView.image = UIImage (named: "sugarKey")
            self.equalKeyImageView.image = UIImage (named: "sugarKey")
            self.sourKeyImageView.image = UIImage (named: "sugarKey")
            
            self.sourKeyLabel.enabled = false
            self.sweetKeyLabel.enabled = false
            self.equalKeyLabel.enabled = false
            
            self.pitcherImageView.image = UIImage (named: "pitcher_gray")
            
            self.donePrepingButtonOutlet.enabled = false
            
        // Enable Store on Gameboard
            
            self.endOfDayOutlet.enabled = true
            
//            self.todayHeadingLabel.hidden = false
//            
//            self.todaysProfitsLabel.hidden = false
//            
//            self.todaysVisitorsLabel.hidden = false
            
            self.storeFrontImageView.image = UIImage(named: "closedStandColor")
            
            self.openDayOutlet.hidden = false
        })
    }

    
    
    
    
}

