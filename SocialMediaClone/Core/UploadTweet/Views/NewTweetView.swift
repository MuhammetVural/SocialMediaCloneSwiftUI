//
//  NewTweetView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 6.06.2023.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    var body: some View {
        VStack{
            HStack{
                Button{
                    print("Dismiss")
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                Button{
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .clipShape(Capsule())
                }
                
            }.padding()
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64)
                TextArea("What's happening ", text: $caption)
            }
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
