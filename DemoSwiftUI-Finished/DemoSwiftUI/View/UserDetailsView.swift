//
//  UserDetailsView.swift
//  DemoSwiftUI
//
//  Created by Walid Haddad on 20/04/2020.
//  Copyright © 2020 ForgeTech Consulting. All rights reserved.
//

import SwiftUI

struct UserDetailsView: View {
    
    @State var userDetailsViewModel = UserDetailsViewModel()
    
    var body: some View {
        VStack {
            UserMapView(userAnnotation: self.userDetailsViewModel.userAnnotation)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleAvatar(image: userDetailsViewModel.userImage())
                .offset(y: -130)
                .padding(.bottom, -130)
            
            Text(self.userDetailsViewModel.userName)
                .font(.title)
                .lineLimit(nil)
            Text(self.userDetailsViewModel.userEmail)
                .font(.subheadline)
            Spacer()
        }
    }
}

struct CircleAvatar: View {
    
    @State var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .background(Color.white)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView()
    }
}
