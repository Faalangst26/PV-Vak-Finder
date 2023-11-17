//
//  SelectedFaculties.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//


import SwiftData

@Model
class SelectedFaculties {
    init(year: Years, period1: Faculties, period2: Faculties, period3: Faculties, period4: Faculties) {
        self.year = year
        self.period1 = period1
        self.period2 = period2
        self.period3 = period3
        self.period4 = period4
    }
    
    var year: Years
    
    var period1: Faculties
    var period2: Faculties
    var period3: Faculties
    var period4: Faculties
}
