//
//  TweetRowView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 2.06.2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack{
            //profile image + user info+ tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info and tweet caption
                VStack{
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    
                    
                }
                
            }
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
