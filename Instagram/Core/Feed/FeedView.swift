//
//  FeedView.swift
//  Instagram
//
//  Created by Chris on 2024/4/14.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
            NavigationStack {
                ScrollView {
                    LazyVStack(spacing: 32) {
                        ForEach(Post.MOCK_POSTS) { post in
                            FeedCell(post: post)
                        }
                    }
                    .padding(.top, 8)
                }
                .navigationTitle("Feed")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Instagram")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 32)
                        
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                        
                    }
                }
            }
    }
}

#Preview {
    FeedView()
}
