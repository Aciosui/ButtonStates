//
//  SelectButton.swift
//  ButtonStates
//
//  Created by MD  on 3/3/24.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack {
            Capsule ()
                .frame(height: 50)
                .foregroundColor(isSelected ? color : .gray)
            Text(text)
                .foregroundColor(.white)
        }
       
    }
}

#Preview {
    SelectButton(isSelected: .constant(false), color: .blue, text: "Option")
}
