//
//  Note.swift
//  NoteBlink Watch App
//
//  Created by Cristina on 2023-08-10.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
