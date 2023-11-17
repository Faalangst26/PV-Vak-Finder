//
//  FacultyPicker.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import SwiftUI
import SwiftData

struct FacultyPicker: View {
    
    @Environment(\.modelContext) private var context
    
    
    var year: Years
    @State private var period1: Faculties = Faculties.SOCO1
    @State private var period2: Faculties = Faculties.SOCO2
    @State private var period3: Faculties = Faculties.SOCO3
    @State private var period4: Faculties = Faculties.SOCO4
    
    var body: some View {
        Text("Je bent vakken aan het kiezen voor: \(year.rawValue)")
        List{
            Picker("Periode 1", selection: $period1) {
                ForEach(Faculties.allCases) {vak in Text(vak.rawValue)
                }
            }.padding()
            Picker("Periode 2", selection: $period2) {
                ForEach(Faculties.allCases) {vak in Text(vak.rawValue)
                }
            }.padding()
            Picker("Periode 3", selection: $period3) {
                ForEach(Faculties.allCases) {vak in Text(vak.rawValue)
                }
            }.padding()
            Picker("Periode 4", selection: $period4) {
                ForEach(Faculties.allCases) {vak in Text(vak.rawValue)
                }
            }.padding()
            //TODO: This padding fix is not responsive!
            Button(action: 
                    {saveFaculties(selyear: year, per1: period1, per2: period2,per3: period3,per4: period4, context: context)}, label: {
                Text("Vakken opslaan")
            }).buttonStyle(.borderedProminent).padding()
        }
    }
    
    
    
}

private func saveFaculties(selyear : Years, per1 : Faculties , per2 : Faculties, per3 : Faculties, per4 : Faculties, context : ModelContext){
    
    let newSelection = SelectedFaculties(year: selyear, period1: per1, period2: per2, period3: per3, period4: per4)
    
    _ = #Predicate<SelectedFaculties> {vak in vak.year == selyear}
    
    let facdescriptor = FetchDescriptor<SelectedFaculties>()
    
    print("Looking for existing data with year: \(selyear)")
    
    do {let results = try context.fetch(facdescriptor)
        for result in results {
            if(result.year == selyear){
                context.delete(result)
            }
        }
    }
    catch{
        print("Nothin' found!")
    }

    
    
    context.insert(newSelection)
    do {try context.save()}
    catch {
        print("Error saving new data!")
    }
    
    
    
}



#Preview {
    FacultyPicker(year: Years.two)
}
