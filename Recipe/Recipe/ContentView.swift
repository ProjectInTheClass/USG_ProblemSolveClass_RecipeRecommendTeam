//
//  ContentView.swift
//  Recipe
//
//  Created by 전제윤 on 2/19/24.
//

import SwiftUI


struct ContentView: View {

    @State private var text: String = ""
    
    var body: some View {
        ZStack{
            Color(red: 255 / 255, green: 235 / 255, blue: 206 / 255)
                .ignoresSafeArea()
            VStack {
                VStack(spacing: 15) {
                    HStack {
                        Text("오늘의 요리")
                            .font(.custom("Dongle-Bold", size: 36))
                        
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    TextField("레시피 검색", text: $text)
                        .background(Color.white)
                        .textFieldStyle(.roundedBorder).padding([.leading, .trailing], 20)
                    
                    HStack {
                        Text("인기 레시피")
                            .font(.custom("Dongle-Bold", size: 36))
                        
                        Spacer()
                    }
                    .padding(.leading, 20)

                    ScrollView(.horizontal, content: {
                        HStack {
                            ForEach(0..<4)  { _ in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 130, height: 130)
                                    .padding(.leading, 5)
                            }
                        }
                        .padding([.leading, .trailing], 10)
                    })
                    
                    HStack {
                        Text("내가 저장한 레시피")
                            .font(.custom("Dongle-Bold", size: 36))
                        
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                }
                Spacer()
            }
        }
    }
   
}


#Preview {
    ContentView()
}
