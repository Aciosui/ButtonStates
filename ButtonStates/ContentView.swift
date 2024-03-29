//
//  ContentView.swift
//  ButtonStates
//
//  Created by MD  on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var showAlert = false
    @State private var alertText = ""
    
    var body: some View {
        VStack(spacing: 30){
            Text("Is this an important questions ?")
            HStack {
                SelectButton(
                    isSelected: $isSelected,
                    color: .blue,
                    text: "Yes")
                .onTapGesture {
                    isSelected.toggle()
                    
                    if isSelected {
                        isSelected2 = false
                    }
                }.accessibilityValue(isSelected ? " Selected" : " Not Selected")
                SelectButton(
                    isSelected: $isSelected2,
                    color: .red,
                    text: "No")
                .onTapGesture {
                    isSelected2.toggle()
                    
                    if isSelected2 {
                        isSelected = false
                    }
                }.accessibilityValue(isSelected2 ? "Selected" : "Not Selected")
            }
            Button("Submit") {
                alertText = isSelected ? "Correct answer" : "Nope!!"
                showAlert.toggle()
            }.alert(alertText, isPresented: $showAlert){
                Button("Continue"){
                    // action goes here!
                }
            }
          }
         .padding()
        }
    }


#Preview {
    ContentView()
}
