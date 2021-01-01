//
//  ContentView.swift
//  swiftui-miniproject-1
//
//  Created by Yousif on 30/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(bikeInfos){ bike in
                NavigationLink(
                    destination: RentInfoPage(bike: bike)){
                    ListContent(bikes: bike)
                }
            }
            .navigationTitle("تأجير دراجات")
        }
    }
}

struct ListContent: View {
    let bikes: BikeInfo
    var body: some View {
        HStack(spacing: 30){
            Text(bikes.bikeNumber)
                .padding()
                .frame(width: 50, height: 50)
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: 3)
            Image(bikes.bikeImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
