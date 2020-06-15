//
//  Mission.swift
//  Moonshot
//
//  Created by Sebastien REMY on 14/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String { "Apollo \(id)" }
    var image: String { "apollo\(id)" }
    var formattedLaunchDate: String {
        if let launchDate = launchDate {
            let formater = DateFormatter()
            formater.dateStyle = .long
            return formater.string(from: launchDate)
        }
        return "N/A"
    }
}
