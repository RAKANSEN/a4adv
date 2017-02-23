import Foundation
import Darwin

public struct future_value {
    public let p: Double
    public let r: Double
    public let t: Double
    
    public init(principal: Double, apr: Double, years: Double){
        self.p = principal
        self.r = apr
        self.t = years
    }
    
    func print_future(){
        let res = p * pow(1+r,Double(t)) //future value calcuation
        let resString = round(res*100)/100 //FV rounded to two decimals
        
        //print out for the future value calculations
        print("Future Value Calculation Results")
        print("Principal Deposit: $\(p)")
        print("APR:  \(r*100)%")
        print("Number of Years:  \(t)")
        print("Future Value Single Sum:  $\(resString)")
    }
}
