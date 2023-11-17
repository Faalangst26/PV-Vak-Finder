//
//  ContentView.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var SelectedFaculties: [SelectedFaculties]
    @State var selectedYear: Years
   

    var body: some View {
        VStack{
            HStack{
                Text("Schooljaar:")
                Picker("Schooljaar", selection: $selectedYear){
                    Text(Years.two.rawValue).tag(Years.two)
                    Text(Years.three.rawValue).tag(Years.three)
                    Text(Years.four.rawValue).tag(Years.four)
                    Text(Years.five.rawValue).tag(Years.five)
                }
                
            }
            
        }
        
            VStack{
                ForEach(SelectedFaculties) { vak in
                    if(vak.year == selectedYear){
                            HStack {
                                Text("Periode 1")
                                NavigationLink(vak.period1.rawValue) {CatalogItem( faculty: vak.period1.rawValue)}.padding()
                                Text("Periode 2")
                                NavigationLink(vak.period2.rawValue) {CatalogItem( faculty: vak.period2.rawValue)}.padding()
                                Text("Periode 3")
                                NavigationLink(vak.period3.rawValue) {CatalogItem( faculty: vak.period3.rawValue)}.padding()
                                Text("Periode 4")
                                NavigationLink(vak.period4.rawValue) {CatalogItem( faculty: vak.period4.rawValue)}.padding()
                            }.padding()
                    }
                }
            }.padding()
            
            NavigationStack {
                NavigationLink("Vakken kiezen") {FacultyPicker( year: selectedYear)}.padding().buttonStyle(.borderedProminent)
            }
    }
    
    
}

#Preview {
    ContentView(selectedYear: Years.two)
        .modelContainer(for: Item.self, inMemory: true)
}
