//
//  UserRowView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 4.06.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading){
                Text("joker")
                    .bold()
                    .foregroundColor(.black)
                Text("Muhammet Vural")
                    .foregroundColor(.black)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
