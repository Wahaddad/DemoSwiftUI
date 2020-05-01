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
    
    var userEmail: String {
        return user.email
    }

    var userImage: String {
        return user.avatar
    }
    
    var userAnnotation: UserAnnotation {
        UserAnnotation(title: userName, coordinate: user.locationCoordinate)
    }

}
