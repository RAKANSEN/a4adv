import Foundation

public struct future_value {
    public let p: Double
    public let r: Double
    public let t: Double
    
    public init(_ principal: Double, _ apr: Double, _ years: Double){
        self.p = principal
        self.r = apr / 100 //adjusted so that it works the same as the mortgage calculations
        self.t = years
    }
    
    public func print_future(){
        let res = p * pow(1+r,Double(t)) //future value calcuation
        let resString = round(res*100)/100 //FV rounded to two decimals
        
        //print out for the future value calculations
        print(" \n ") //added blank lines for a cleaner printout
        print("Future Value Calculation Results")
        print("Principal Deposit: $\(p)")
        print("APR:  \(r*100)%")
        print("Number of Years:  \(t)")
        print("Future Value Single Sum:  $\(resString)")
        print(" \n ") //added blank lines for a cleaner printout
    }
}
