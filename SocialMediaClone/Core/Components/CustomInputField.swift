//
//  CustomInputField.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 8.06.2023.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundColor(Color(.darkGray))
        
        TextField(placeholderText, text: $text)
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: .constant("sdfg"))
    }
}
