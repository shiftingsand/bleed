//
//  BigPill.swift
//  bleed
//
//  Created by Chris Wu on 9/19/21.
//

import SwiftUI

struct BigPill: View {
    @State private var myData = [Int]()
    var body: some View {
        ZStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                
                ForEach(myData, id:\.self) { oneData in
                    HStack {
                        Text("\(oneData)")
                            .font(.footnote)
                            .lineLimit(2)
                            .foregroundColor(.primary)
                            .padding(5)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Spacer()
                    }
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding(.horizontal)
        }
        .onAppear {
            for i in 0..<21 {
                myData.append(i)
            }
        }
    }
}

struct BigPill_Previews: PreviewProvider {
    static var previews: some View {
        BigPill()
    }
}
