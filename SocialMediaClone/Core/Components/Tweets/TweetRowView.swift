//
//  TweetRowView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 2.06.2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            //profile image + user info+ tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info and tweet caption
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2h")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("I blieve in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
                
                
                
            }
            // action buttons
            
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "bubble.left")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "arrow.2.squarepath")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                }
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "bookmark")
                }
            }.padding()
            Divider()
        }
        
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
