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
        NavigationView {
            VStack {
                Text("I like turtles")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                ForEach(myData, id:\.self) { oneData in
                    HStack {
                        Text("\(oneData)")
                            .font(.footnote)
                            .lineLimit(2)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(Color.gray)
                            .cornerRadius(10)
                        Spacer()
                    }
                }
            }
            .padding()
            .background(Color.yellow)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .padding(.horizontal)
            .navigationTitle("Fancy Title")
            .onAppear {
                for i in 0..<17 {
                    myData.append(i)
                }
            }
        }
    }
}

struct BigPill_Previews: PreviewProvider {
    static var previews: some View {
        BigPill()
    }
}
