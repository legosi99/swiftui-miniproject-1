//
//  RentInfoPage.swift
//  swiftui-miniproject-1
//
//  Created by Yousif on 01/01/2021.
//

import SwiftUI

struct RentInfoPage: View {
    @State var name: String = ""
    @State var phone: String = ""
    @State var numberHour: Int = 0
    @State var numberBike: Int = 0
    
    @State private var showButton = false
    
    let bike: BikeInfo
    
    var body: some View {
        VStack{
            Image(bike.bikeImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 180, alignment: .center)
                .shadow(radius: 3)
                .padding()
            
            Section{
                TextField("اسم المستلم", text: $name)
                    .disableAutocorrection(true)
                TextField("الهاتف", text: $phone)
            }.padding()
            
            Section{
                Stepper("\(numberHour)  :عدد الساعات", value: $numberHour, in: 1...48)
                    .font(.system(size: 20))
                Stepper("\(numberBike)  :عدد الدرجات", value: $numberBike, in: 1...48)
                    .font(.system(size: 20))
            }.padding()
            
            Spacer()
            
            let result = numberHour * numberBike
            
            Text("\(result)")
            Text("المبلغ الكلي")
            
            NavigationLink(
                destination: ReceiptPage(hourBinding: $numberHour, NumberBinding: $numberBike, nameBinding: $name,phoneBinding: $phone),
                label: {
                    if(result > 0){
                        Text("اضغط هنا للمتابعه")
                            .padding()
                            .frame(width: 300, height: 60)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                })
            Spacer()
        }.padding()
    }
}

struct RentInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        RentInfoPage(bike: bikeInfos[0])
    }
}
