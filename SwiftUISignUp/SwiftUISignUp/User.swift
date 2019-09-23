//
//  User.swift
//  IHGCopyCat
//
//  Created by Hanguang on 2019/9/20.
//  Copyright © 2019 hanguang. All rights reserved.
//

import Foundation

class User: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var pinCode: String = ""
}
