

import Foundation


class BeerManager {
    
    static let shared = BeerManager()
    
    var orderedBeerCount1 = 0
    var orderedBeerCount2 = 0
    var orderedBeerCount3 = 0
    
    var beers: [Beer] = [
        Beer(name: "Old Boy", price: 1.0, balance: 100),
        Beer(name: "Star Wars", price: 2.0, balance: 100),
        Beer(name: "True Man", price: 3.0, balance: 100)
    ]
    
    
    var totalRevenue: Double = 0.0

    private init() {}
   
  
    func sellBeer() -> String {
        let totalBeerCount = orderedBeerCount1 + orderedBeerCount2 + orderedBeerCount3
        
        var totalRevenue = Double(orderedBeerCount1) * beers[0].price + Double(orderedBeerCount2) * beers[1].price + Double(orderedBeerCount3) * beers[2].price
        
        self.totalRevenue += totalRevenue
        
        orderedBeerCount1 = 0
        orderedBeerCount2 = 0
        orderedBeerCount3 = 0
        
        return "Вы продали \(totalBeerCount) пива на сумму \(totalRevenue) рублей."
        
    }
    
    
    
    
    func calculateOrderSummary() -> String {
        var summary = ""
        var totalOrderPrice: Double = 0.0
        
        // Обрабатываем каждый вид пива по отдельности
        
        if orderedBeerCount1 > 0 {
            let totalPrice = Double(orderedBeerCount1) * beers[0].price
            totalOrderPrice += totalPrice
            summary += "\(orderedBeerCount1) * \(beers[0].price) - \(beers[0].name), "
        }
        
        if orderedBeerCount2 > 0 {
            let totalPrice = Double(orderedBeerCount2) * beers[1].price
            totalOrderPrice += totalPrice
            summary += "\(orderedBeerCount2) * \(beers[1].price) - \(beers[1].name), "
        }
        
        if orderedBeerCount3 > 0 {
            let totalPrice = Double(orderedBeerCount3) * beers[2].price
            totalOrderPrice += totalPrice
            summary += "\(orderedBeerCount3) * \(beers[2].price) - \(beers[2].name), "
        }
        
        summary += "Total Revenue = \(totalOrderPrice)"
        return summary
        
    }
        
    
    func startDay() -> String {
        // Обнуляем заказы на пиво в начале дня
        orderedBeerCount1 = 0
        orderedBeerCount2 = 0
        orderedBeerCount3 = 0
        
        let revenueMessage = "Пока ничего не продали."
              
        
        // Сбрасываем общую выручку
        totalRevenue = 0.0
        
        for beer in beers {
            beer.balance = 100
        }
        
        return revenueMessage
    }
    
    
    func endDay() -> String {
        
        let revenueMessage = "Общая выручка за день: \(totalRevenue) рублей."
            // После вывода сообщения, можно сбросить общую выручку для следующего дня
            totalRevenue = 0.0
            return revenueMessage
        }
    
}
