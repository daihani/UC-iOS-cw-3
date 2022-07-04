//
//  ContentView.swift
//  Day 3.1
//
//  Created by Mohammad Aldaihani on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var grade = ""
    @State var result = ""
    
    var body: some View {
        ZStack
        {
            Color.gray
                .ignoresSafeArea()
            
        
            VStack {
                Text("حاسبة الدرجات")
                    .padding()
                    .font(.largeTitle)
                
                Image("Calculator")
                    .resizable()
                    .frame(width: 100.0, height: 100)
                Spacer()
                TextField("Enter your Grade", text: $grade)
                    .padding(20)
                    .background(Color.white)
                
                Spacer()
                
                Text("احسب درجتي")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.yellow)
                    .clipShape(Capsule())
                    .onTapGesture {
                        if Int(grade)! >= 90 {
                            result = "A"
                        }
                        else if Int(grade)! >= 80 {
                            result = "B"
                        }
                        else if Int(grade)! >= 70 {
                            result = "C"
                        }
                        else if Int(grade)! >= 60 {
                            result = "D"
                        }
                    
                        else {
                                result = "Failed"
                        }
                    }
                
                
                Text("لقد حصلت على")
                    .font(.largeTitle)
                    .padding(50)
                Text("\(result)")
                    .font(.largeTitle)
                Spacer()
                    


            }.padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
