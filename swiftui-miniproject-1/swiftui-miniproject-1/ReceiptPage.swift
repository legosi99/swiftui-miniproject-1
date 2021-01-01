//
//  ReceiptPage.swift
//  swiftui-miniproject-1
//
//  Created by Yousif on 01/01/2021.
//

import SwiftUI

struct ReceiptPage: View {
    @Binding var hourBinding: Int
    @Binding var NumberBinding: Int
    @Binding var nameBinding: String
    @Binding var phoneBinding: String
    
    @State var changeColor: Color = .blue
    
    var body: some View {
        VStack{
            Text("الفاتورة")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
            List{
                ReceipValue(value1: "اسم المستلم", value2: nameBinding)
                ReceipValue(value1: "رقم الهاتف", value2: phoneBinding)
                ReceipValue(value1: "عدد الساعات", value2: String(hourBinding))
                ReceipValue(value1: "عدد الدرجات", value2: String(NumberBinding))
                ReceipValue(value1: "المبلغ الكلي", value2: String(hourBinding * NumberBinding))
            }
            
            Button(action: {
                changeColor = Color.green
            }, label: {
                Text("ادفع الان")
                    .padding()
                    .frame(width: 300, height: 60)
                    .background(changeColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }).padding()
            Spacer()
        }
    }
}

struct ReceipValue: View {
    let value1: String
    let value2: String
    
    var body: some View {
        HStack{
            Text(value1)
            Spacer()
            Text("\(value2)")
        }
    }
}

struct ReceiptPage_Previews: PreviewProvider {
    @State static var name = ""
    @State static var Phone = ""
    static var previews: some View {
        ReceiptPage(hourBinding: .constant(0), NumberBinding: .constant(0), nameBinding: $name, phoneBinding: $Phone)
    }
}
