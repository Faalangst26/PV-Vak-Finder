//
//  Years.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import Foundation

enum Years: String, CaseIterable, Identifiable, Codable{
    case two = "2022-2023", three = "2023-2024", four = "2024-2025", five = "2025-2026"
    var id: Self {self}
    
}
