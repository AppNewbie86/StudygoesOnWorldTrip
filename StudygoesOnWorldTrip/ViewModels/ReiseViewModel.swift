//
//  ReiseZieleViewModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 12.02.23.
//

import SwiftUI
import Foundation
import Combine


// Hauptakteur festgelegt

@MainActor class ReiseViewModel : ObservableObject{
    
    // Veröffentlichung / und Änderungen erlaubt
    // 3 leere Arrays vom jeweiligen Typ erstellt
    
    @Published var reiseAngebotList : [Reiseangebot] = []
    @Published var reisendePersonList : [Personen] = []
    @Published var startFlughafenList : [Startflughafen] = []
    @Published var zielFlughafenList : [Zielflughäfen] = []
      
    @Published var stateList : [States] = []


    init(){
        
        // States erstellen
        let state1 = States(name: "Afghanistan",searchText: "")
        let state2 = States(name: "Ägypten",searchText: "")
        let state3 = States(name: "Albanien",searchText: "")
        let state4 = States(name: "Algerien",searchText: "")
        let state5 = States(name: "Andorra",searchText: "")
        let state6 = States(name: "Bahamas",searchText: "")
        let state7 = States(name: "Belarus",searchText: "")
        let state8 = States(name: "Brasilien",searchText: "")
        let state9 = States(name: "Bolivien",searchText: "")
        let state10 = States(name: "Bulgarien",searchText: "")
        let state11 = States(name: "China",searchText: "")
        let state12 = States(name: "Chile",searchText: "")
        let state13 = States(name: "Finnland",searchText: "")
        let state14 = States(name: "Frankreich",searchText: "")
        let state15 = States(name: "Ghana",searchText: "")
        let state16 = States(name: "Finnland",searchText: "")
        let state17 = States(name: "Deutschland",searchText: "")
        let state18 = States(name: "Malta",searchText: "")
        let state19 = States(name: "Marroko",searchText: "")
        let state20 = States(name: "Spanien",searchText: "")
        let state21 = States(name: "Südamerika",searchText: "")

        // Startflughäfen erstellen
        let flugh1 = Startflughafen(name: "Stuttgart")
        let flugh2 = Startflughafen(name: "München")
        let flugh3 = Startflughafen(name: "Hamburg")
        let flugh4 = Startflughafen(name: "Dresden")
        let flugh5 = Startflughafen(name: "Bremen")
        let flugh6 = Startflughafen(name: "Frankfurt/Main")
        let flugh7 = Startflughafen(name: "Dortmund")
        let flugh8 = Startflughafen(name: "Frankfurt/Oder")
        let flugh9 = Startflughafen(name: "Berlin")
        
        // Zielflughäfen erstellen
        
        let zielflugh1 = Zielflughäfen(name: "Wien")
        let zielflugh2 = Zielflughäfen(name: "Portugal")
        let zielflugh3 = Zielflughäfen(name: "Athen")
        let zielflugh4 = Zielflughäfen(name: "Italien/Palermo")
        let zielflugh5 = Zielflughäfen(name: "Washington")
        let zielflugh6 = Zielflughäfen(name: "Dali")
        let zielflugh7 = Zielflughäfen(name: "Prag")
        let zielflugh8 = Zielflughäfen(name: "Malediven")
        let zielflugh9 = Zielflughäfen(name: "Australien/Sydney")
        
        // reisende Personen
        
        let pers1 = Personen(name: "Peter")
        let pers2 = Personen(name: "Carmen")
        let pers3 = Personen(name: "Ida")
        
        
        // Listen werden geladen
        reisendePersonList = [pers1,pers2,pers3]
        startFlughafenList = [flugh1,flugh2,flugh3,flugh4,flugh5,flugh6,flugh7,flugh8,flugh9]
        zielFlughafenList = [zielflugh1,zielflugh2,zielflugh3,zielflugh4,zielflugh5,zielflugh6,zielflugh7,zielflugh8,zielflugh9]
        
        stateList=[state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,state16,state17,state18,state19,state20,state21]

    }
    // holt sich den StartflughafenIndex mit Parameter startflughafen
    func getStartflughafenIndex(startflughafen:Startflughafen) -> Int{
        for index in startFlughafenList.indices {
            if(startFlughafenList[index].id == startflughafen.id){
                return index
            }
        }
        return 0
    }
    // holt sich den StartflughafenIndex mit Id
    func getStartflughafenIndex(id : UUID) ->Int{
        for index in startFlughafenList.indices{
            if(startFlughafenList[index].id == id){
                return index // gibt Index zurück
            }
        }
        return 0 // gibt zahl 0 zurück
    }
    
    // holt sich den PersonenIndex mit Parameter personen
    func getPersonenIndex(personen : Personen) ->Int?{
        for index in reisendePersonList.indices{
            // wenn reisendePersonenList der Index gleich Id und gleich Personen Id ist
            if(reisendePersonList[index].id == personen.id){
                // dann gib Index zurück
                return index
            }
        }
        return nil // gibt leeren Wert wieder
    }
    
    func updateReisendePerson(personen : Personen){
        guard let index = getPersonenIndex(personen: personen)
        else{
            return
        }
        
        reisendePersonList[index] = personen
    }
    
    
}


