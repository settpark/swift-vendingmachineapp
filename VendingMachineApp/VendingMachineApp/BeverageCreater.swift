//
//  BeverageCreater.swift
//  VendingMachineApp
//
//  Created by 박정하 on 2021/03/03.
//

import UIKit

class BeverageCreater : BeverageFactory {
    func makebananaMilk(_ manufactured: Date) -> Milk {
        return BananaMilk.init(sugarContent: 30, lowfat: false, brand: "서울우유", volume: 180, price: 2100, name: "바나나는 원래 하얗다.", manufactured: manufactured, temperature: 10, kcal: 80)
    }
    func makeStrawBerryMilk(_ manufactured: Date) -> Milk {
        return StrawBerryMilk.init(StrawBerryContent: 30, lowfat: false, brand: "서울우유", volume: 180, price: 2200, name: "진짜 리얼 딸기 우유", manufactured: manufactured, temperature: 10, kcal: 80)
    }
    func makeCider(_ manufactured: Date) -> Cider {
        return Cider.init(appleContent: 30, sugarContent: 0, brand: "와인사랑", volume: 355, price: 11000, name: "SOMERSBY", manufactured: manufactured, temperature: 1, kcal: 180)
    }
    func makeCoke(_ manufactured: Date) -> Coke {
        return Coke.init(product: .zero, sugarContent: 0, brand: "코카콜라", volume: 180, price: 3100, name: "코카콜라제로", manufactured: manufactured, temperature: 1, kcal: 210)
    }
}
