//
//  UserStatsView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 4.06.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4){
                Text("15")
                    .bold()
                Text("Following")
                    .foregroundColor(.gray)
                    
                    
            }
            HStack(spacing: 4){
                Text("5.2M")
                    .bold()
                Text("Followers")
                    .foregroundColor(.gray)
                    
                    
                
            }
        }
        
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
