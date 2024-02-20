//
//  FirstLoadingView.swift
//  Recipe
//
//  Created by 전제윤 on 2/20/24.
//

import SwiftUI

struct FirstLoadingView: View {
    var body: some View {
        ZStack {
            Color(red: 255 / 255, green: 235 / 255, blue: 206 / 255)
                .ignoresSafeArea()
            Text("오늘의 요리")
                .font(.custom("Dongle-Bold", size: 100))
        }
    }
}

#Preview {
    FirstLoadingView()
}
