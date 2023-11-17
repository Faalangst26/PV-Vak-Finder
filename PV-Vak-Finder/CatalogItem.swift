//
//  CatalogItem.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import SwiftUI
import SwiftData
import Foundation

struct CatalogItem: View {
    var faculty: String
    
    var body: some View {
        Text("This is the CatalogItem page for \(faculty)")
    }
}
