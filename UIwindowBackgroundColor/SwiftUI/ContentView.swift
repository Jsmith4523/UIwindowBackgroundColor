//
//  ContentView.swift
//  UIwindowBackgroundColor
//
//  Created by Jaylen Smith on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button {
                isPresented.toggle()
            } label: {
                Text("Present Sheet")
                    .padding()
                    .frame(width: 250)
                    .background(.black)
                    .foregroundColor(.white)
            }
        }
        .sheet(isPresented: $isPresented) {
            NavigationView {
                VStack {
                    Text("Widgets are interactive now??? 🙀🙀")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 35).weight(.heavy))
                        .frame(width: 300)
                }
                .navigationTitle("Summary")
                .navigationBarTitleDisplayMode(.inline)
            }
            .presentationCornerRadius(30)
            .presentationDragIndicator(.visible)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
