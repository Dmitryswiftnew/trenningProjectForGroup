//
//  ViewController.swift
//  Home Work 5
//
//  Created by Dmitry on 2.11.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameBeer1: UILabel!
    @IBOutlet weak var countBeer1: UILabel!
    @IBOutlet weak var buttonMinusBeer1: UIButton!
    @IBOutlet weak var buttonPlusBeer1: UIButton!
    
    
    @IBOutlet weak var nameBeer2: UILabel!
    @IBOutlet weak var countBeer2: UILabel!
    @IBOutlet weak var buttonMinusBeer2: UIButton!
    @IBOutlet weak var buttonPlusBeer2: UIButton!
    
    
    @IBOutlet weak var nameBeer3: UILabel!
    @IBOutlet weak var countBeer3: UILabel!
    @IBOutlet weak var buttonMinusBeer3: UIButton!
    @IBOutlet weak var buttonPlusBeer3: UIButton!
    
    
    @IBOutlet weak var sumCountNamePrice: UILabel!
    
    @IBOutlet weak var sell: UIButton!
    @IBOutlet weak var startDay: UIButton!
    @IBOutlet weak var endDay: UIButton!
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        self.nameBeer1.text = "Old Boy"
        self.countBeer1.text = "\(BeerManager.shared.orderedBeerCount1)"
        
        self.nameBeer2.text = "Star Wars"
        self.countBeer2.text = "\(BeerManager.shared.orderedBeerCount2)"
        
        self.nameBeer3.text = "True Man"
        self.countBeer3.text = "\(BeerManager.shared.orderedBeerCount3)"
        
    }


    @IBAction func buttonMinusBeer(_ sender: UIButton) {
        if BeerManager.shared.orderedBeerCount1 > 0 {
            BeerManager.shared.orderedBeerCount1 -= 1
            countBeer1.text = "\(BeerManager.shared.orderedBeerCount1)"
        }
        
    }
    
    
    @IBAction func buttonPlusBeer1(_ sender: UIButton) {
        if BeerManager.shared.orderedBeerCount1 < 100 {
            BeerManager.shared.orderedBeerCount1 += 1
            countBeer1.text = "\(BeerManager.shared.orderedBeerCount1)"
        }
    }
        
        
        @IBAction func buttonMinusBeer2(_ sender: UIButton) {
            if BeerManager.shared.orderedBeerCount2 > 0  {
                BeerManager.shared.orderedBeerCount2 -= 1
                countBeer2.text = "\(BeerManager.shared.orderedBeerCount2)"
            }
            
        }
        
        
        @IBAction func buttonPlusBeer2(_ sender: UIButton) {
            if BeerManager.shared.orderedBeerCount2 < 100 {
                BeerManager.shared.orderedBeerCount2 += 1
                countBeer2.text = "\(BeerManager.shared.orderedBeerCount2)"
                
        }
    }
            
            
            @IBAction func buttonMinusBeer3(_ sender: UIButton) {
                if BeerManager.shared.orderedBeerCount3 > 0 {
                    BeerManager.shared.orderedBeerCount3 -= 1
                    countBeer3.text = "\(BeerManager.shared.orderedBeerCount3)"
                }
            }
            
            
            
            @IBAction func buttonPlusBeer3(_ sender: UIButton) {
                if BeerManager.shared.orderedBeerCount3 < 100 {
                    BeerManager.shared.orderedBeerCount3 += 1
                    countBeer3.text = "\(BeerManager.shared.orderedBeerCount3)"
                }
            }
            
            
            
            @IBAction func sellAllBeer(_ sender: UIButton) {
                let resultMessage = BeerManager.shared.sellBeer()
                
                
                updateBeerCounts()
                
                sumCountNamePrice.text = resultMessage
                
            }
            
    func updateBeerCounts() {
        countBeer1.text = "\(BeerManager.shared.orderedBeerCount1)"
        countBeer2.text = "\(BeerManager.shared.orderedBeerCount2)"
        countBeer3.text = "\(BeerManager.shared.orderedBeerCount3)"
    }
    
    
    
            @IBAction func startDay(_ sender: UIButton) {
//                BeerManager.shared.startDay()
                let startDayMessage = BeerManager.shared.startDay()
                sumCountNamePrice.text = startDayMessage
            
                updateBeerCounts()
                
            }
            
            
            @IBAction func endDay(_ sender: UIButton) {
                let resultMessage = BeerManager.shared.endDay() // Получаем итоговое сообщение
                    sumCountNamePrice.text = resultMessage // Обновляем текст в UILabel
                
                
                
                
                
            }
            
        }
        
    
