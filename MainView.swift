//
//  MainView.swift
//  Little Lemon Demo
//
//  Created by Tanya Lathion on 19.05.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    HStack(spacing: 8) {
                        Text("Demo").scaledToFit().frame(
                            width: 100, height: 100, alignment: .center)
                        VStack(spacing: 10) {
                            Text("Little Lemon").font(.title)
                            Text("Tomato Tortellini, Bottarga and Carbonara ").font(.title3)
                                .multilineTextAlignment(.center)
                        }// :- VStack
                            .padding()
                    }  // :- HStack
                    .padding()
                }  // :- ZStack
            }
        }
    }
}

#Preview {
    MainView()
}
