//
//  ProfileMode.swift
//  HomeWorkIOS
//
//  Created by Герман Яренко on 1.12.23.
//

import UIKit

struct ProfileModel: Decodable {
    var response: Profile
}

struct Profile: Decodable {
    var id: Int
    var photo: String?
    var firstName: String
    var lastName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case photo = "photo_200"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
