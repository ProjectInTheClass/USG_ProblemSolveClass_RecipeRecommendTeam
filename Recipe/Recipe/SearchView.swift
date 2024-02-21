//
//  SearchView.swift
//  Recipe
//
//  Created by 전제윤 on 2/20/24.
//

import SwiftUI



struct SearchView: View {
    
    @State private var inputText: String = ""
    @State private var textList: [String] = []  //객체타입으로 저장 구조체 배열로
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("레시피 검색", text: $inputText)
                    .background(Color.white)
                    .textFieldStyle(.roundedBorder).padding([.leading, .trailing], 20)
                
                Button(action: {
                    addTextToList()
                    print(textList)
                }, label: {
                    Text("추가")
                })
            }
            .padding(.trailing, 10)
            
            HStack {
                Text("추가한 해시태그")
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(20)
            
            List(textList, id: \.self) { text in
                Text(text)
                    .padding(.vertical, 5)
            }
            
            Spacer()
            
        }
    }
    
    func addTextToList() {
        textList.append(inputText)
        inputText = ""
    }
}

#Preview {
    SearchView()
}
