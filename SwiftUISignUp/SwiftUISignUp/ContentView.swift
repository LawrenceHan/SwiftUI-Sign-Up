//
//  ContentView.swift
//  SwiftUISignUp
//
//  Created by Hanguang on 2019/9/23.
//  Copyright © 2019 hanguang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user: User
    
    var body: some View {
        NavigationView {
            KeyboardObservingView {
                ScrollView(showsIndicators: false) {
                    RegisterTopView()
                        .padding(.top, 100)
                    PYTextFieldView(type: .lastname, text: $user.lastName)
                    Divider().padding(.leading).padding(.trailing)
                    PYTextFieldView(type: .firstname, text: $user.firstName)
                    Divider().padding(.leading).padding(.trailing)
                    PYTextFieldView(type: .email, text: $user.email)
                    Divider().padding(.leading).padding(.trailing)
                    PYTextFieldView(type: .pincode, text: $user.pinCode)
                    Divider().padding(.leading).padding(.trailing).padding(.bottom)
                }
            }.navigationBarTitle("SignUpUI.Title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(user: User())
                .environmentObject(Keyboard())
            ContentView(user: User())
            .environmentObject(Keyboard())
                .environment(\.locale, Locale(identifier: "zh-Hans"))
                .environment(\.colorScheme, .dark)
        }
    }
}
