//
//  UserDetailsViewModel.swift
//  DemoSwiftUI
//
//  Created by Walid Haddad on 20/04/2020.
//  Copyright © 2020 ForgeTech Consulting. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserDetailsViewModel: ObservableObject {
    
    var user: User
    
    init() {
        self.user = userData
    }
    
    var userName: String {
        return "\(user.firstName) \(user.lastName)"
    }
    
    var userAnnotation: UserAnnotation {
        UserAnnotation(title: userName, coordinate: user.locationCoordinate)
    }
    
    var userEmail: String {
        return user.email
    }
    

    func userImage() -> Image {
        return Image(user.avatar)
    }

}
