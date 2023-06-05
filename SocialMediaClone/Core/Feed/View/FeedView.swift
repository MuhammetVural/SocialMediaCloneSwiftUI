//
//  FeedView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 2.06.2023.
//

import SwiftUI

struct FeedView: View {
    @State private var showMenu = false
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self){ _ in
                    TweetRowView()
                        .padding()
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        withAnimation{
                            showMenu.toggle()
                        }
                    } label: {
                        Circle()
                            .frame(width: 32, height: 32)
                    }
                }
            }
            Button{
                print("Show new tweet view..")
                
            } label: {
                Image(systemName: "book")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28,height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
        
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
