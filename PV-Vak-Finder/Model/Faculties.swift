//
//  Faculties.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import Foundation

enum Faculties: String, CaseIterable, Identifiable {
    case PL = "Persoonlijk Leiderschap", OOO = "Oriëntatie op onderwijs", RECH = "ICT recht", TMGT = "Timemanagement", EN2 = "Engels 2",
         IC = "Interculturele Communicatie voor ICT", STC2 = "Studentcoaching 2", RD = "Research and Development HBO-ICT", STC1 = "Studentcoaching 1",
         FMGT = "Financial Management", P2 = "Prince2 Projectmanagement", LG = "Leidinggeven", GESP = "Gesprekken in organisaties", PEC = "Persoonlijke Effectiviteit en Conflicthantering", SOCO2 = "Sociale en Communicatieve vaardigheden 2", SOCO1 = "Sociale en Communicatieve vaardigheden 1", SOCO3 = "Sociale en Communicatieve vaardigheden 3", SOCO4 = "Sociale en Communicatieve vaardigheden 4", BET = "Bedrijfsethiek voor ICT", CREA = "Creativiteit voor ICT", OR = "Onderzoek en Rapportage HBO-ICT"
    var id: Self {self}
    
}
