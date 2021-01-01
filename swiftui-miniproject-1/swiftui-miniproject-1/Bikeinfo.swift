//
//  Bikeinfo.swift
//  swiftui-miniproject-1
//
//  Created by Yousif on 01/01/2021.
//

import Foundation
import SwiftUI

struct BikeInfo: Identifiable {
    let bikeNumber: String
    let bikeImage: String
    let id = UUID()
}


let bikeInfos = [
    BikeInfo(bikeNumber: "1", bikeImage: "bike1"),
    BikeInfo(bikeNumber: "2", bikeImage: "bike2"),
    BikeInfo(bikeNumber: "3", bikeImage: "bike3"),
    BikeInfo(bikeNumber: "4", bikeImage: "bike4"),
    BikeInfo(bikeNumber: "5", bikeImage: "bike5"),
    BikeInfo(bikeNumber: "6", bikeImage: "bike6"),
    BikeInfo(bikeNumber: "7", bikeImage: "bike7"),
    BikeInfo(bikeNumber: "8", bikeImage: "bike8"),
    BikeInfo(bikeNumber: "9", bikeImage: "bike9"),
    BikeInfo(bikeNumber: "10", bikeImage: "bike10"),
]
