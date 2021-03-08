//
//  VendingMachineAppTests.swift
//  VendingMachineAppTests
//
//  Created by 박정하 on 2021/03/03.
//

import XCTest

class VendingMachineAppTests: XCTestCase {
    
    override func setUpWithError() throws {
        
    }
    
    override func tearDownWithError() throws {
    }
    
//    func testValidate() throws {
//        let testArray : [Beverage] = [BeverageCreater().makeHOT6(Date().makeDatewithString(yyyyMMdd: "20210225"))]
//        let testclass : testClass = testClass()
//        let vendingMachine : VendingMachine = VendingMachine.init(Money: Money.init(money: 2000))
//        testclass.beverageList.forEach{vendingMachine.addBeverage(beverage: $0)}
//        XCTAssertEqual(vendingMachine.isValidateList(), testArray)
//    }
//
//    func testHotBeverage() throws {
//        let testArray : [Beverage] = [BeverageCreater().makeCaffeMocha(Date().makeDatewithString(yyyyMMdd: "20200226")),
//                                      BeverageCreater().makeCaffeLatte(Date().makeDatewithString(yyyyMMdd: "20200227"))]
//        let testclass : testClass = testClass()
//        let vendingMachine : VendingMachine = VendingMachine.init(Money: Money.init(money: 1000))
//        testclass.beverageList.forEach{vendingMachine.addBeverage(beverage: $0)}
//        XCTAssertEqual(vendingMachine.isHotList(), testArray)
//    }
//
//    func testcanBuyBeverage() throws {
//        let testArray : [Beverage] = [BeverageCreater().makeHOT6(Date().makeDatewithString(yyyyMMdd: "20210225"))]
//        let testclass : testClass = testClass()
//        let vendingMachine : VendingMachine = VendingMachine.init(Money: Money.init(money: 2000))
//        testclass.beverageList.forEach{vendingMachine.addBeverage(beverage: $0)}
//        XCTAssertEqual(vendingMachine.canBuyBeverageList(), testArray)
//    }
//
//    func testcurrentBeverage() throws{
//        let testArray : [String: Int] = ["HOT6": 1, "진짜 리얼 딸기 우유": 1, "바나나는 원래 하얗다.": 1, "카페라떼": 1, "카페모카": 1, "SOMERSBY": 1, "코카콜라제로": 2, "몬스터": 1]
//        let testclass : testClass = testClass()
//        let vendingMachine : VendingMachine = VendingMachine.init(Money: Money.init(money: 2000))
//        testclass.beverageList.forEach{vendingMachine.addBeverage(beverage: $0)}
//        vendingMachine.addBeverage(beverage: BeverageCreater().makeCoke(Date().makeDatewithString(yyyyMMdd: "20200227")))
//        XCTAssertEqual(vendingMachine.currentBeverages(), testArray)
//    }
    
    func testDateFormatter() throws {
        let date = Date().makeDatewithString(yyyyMMdd: "20210302").descriptDateToString()
        XCTAssertEqual(date, "20210302")
    }
    
    func testFactory() throws{
        let BF : BeverageCreater = BeverageCreater()
        XCTAssertEqual(BF.makeBeverage(beveragetype: BananaMilk.self, Date().makeDatewithString(yyyyMMdd: "20200303")) ,BF.makeBeverage(beveragetype: Coke.self, Date().makeDatewithString(yyyyMMdd: "20200303")))
    }
}
