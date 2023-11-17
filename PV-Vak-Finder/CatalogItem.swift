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
    var faculty: Faculties
    
    var body: some View {
        Text("\(faculty.rawValue)").font(.title).padding()
        Link("Open in Educator catalogus", destination: URL(string: "https://educator.windesheim.nl/catalog?q=ICT.PV+\(faculty.rawValue)&filter10=87888cab-43d7-11e4-87ac-1c9720524153&type=Onderwijseenheid+%28OE%29&advanced=false&tenantLabel=Educator")!)
        
    }
}
