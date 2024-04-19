//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Chris on 2024/4/17.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    var body: some View {
        VStack  {
        // header
            VStack(spacing: 10) {
            // Pic ans status
                HStack {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        UserStatView(value: 3, title: "Posts")
                    
                        UserStatView(value: 12, title: "Followers")
                        
                        UserStatView(value: 24, title: "Following")

                    }
                
            }
            .padding(.horizontal)

            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                    )
            }
            
            Divider()
        }
        
        // post grid view
        
            PostGridView(posts: Post.MOCK_POSTS)
    }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USER[0])
}
