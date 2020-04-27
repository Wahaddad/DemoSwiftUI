//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Walid Haddad on 25/04/2020.
//  Copyright © 2020 Walid Haddad. All rights reserved.
//

import SwiftUI

struct UserDetailsView: View {
    
    @State var showText = false
    
    var body: some View {
        Text("User Details View")
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView()
    }
}
