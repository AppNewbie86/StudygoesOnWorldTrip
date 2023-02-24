//
//  FlightViewModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 24.02.23.
//
import Combine
import Foundation
import SwiftUI

class FlightViewModel: ObservableObject {
    
    @Published var departureAirportCode: String = ""
    @Published var arrivalAirportCode: String = ""
    
    
    
    let airportCodes: [String: String] = [
        "JFK": "John F. Kennedy International Airport, New York City, USA",
        "LGA": "LaGuardia Airport, New York City, USA",
        "EWR": "Newark Liberty International Airport, Newark, USA",
        "LAX": "Los Angeles International Airport, Los Angeles, USA",
        "SFO": "San Francisco International Airport, San Francisco, USA",
        "LAS": "McCarran International Airport, Las Vegas, USA",
        "YYZ": "Toronto Pearson International Airport, Toronto, Kanada",
        "YVR": "Vancouver International Airport, Vancouver, Kanada",
        "YUL": "Montréal–Pierre Elliott Trudeau International Airport, Montreal, Kanada",
        "YOW": "Ottawa Macdonald–Cartier International Airport, Ottawa, Kanada",
        "BKK": "Suvarnabhumi Airport, Bangkok, Thailand",
        "DEL": "Indira Gandhi International Airport, Delhi, Indien",
        "SYD": "Sydney Kingsford Smith Airport, Sydney, Australien",
        "MUC": "Munich Airport, München, Deutschland",
        "LIS": "Lisbon Portela Airport, Lissabon, Portugal",
        "OSL": "Oslo Gardermoen Airport, Oslo, Norwegen",
        "DME": "Moscow Domodedovo Airport, Moskau, Russland",
        "KUL": "Kuala Lumpur International Airport, Kuala Lumpur, Malaysia",
        "CDG": "Charles de Gaulle Airport, Paris, Frankreich",
        "HND": "Haneda Airport, Tokio, Japan",
        "BCN": "Barcelona–El Prat Airport, Barcelona, Spanien",
        "DXB": "Dubai International Airport, Dubai, Vereinigte Arabische Emirate",
        "NRT": "Narita International Airport, Tokio, Japan",
        "GRU": "Guarulhos International Airport, São Paulo, Brasilien",
        "HKG": "Hong Kong International Airport, Hong Kong",
        "FCO": "Leonardo da Vinci–Fiumicino Airport, Rom, Italien",
        "BOM": "Chhatrapati Shivaji International Airport, Mumbai, Indien",
        "SVO": "Sheremetyevo International Airport, Moskau, Russland",
        "ICN": "Incheon International Airport, Seoul, Südkorea",
        "CPH": "Copenhagen Airport, Kopenhagen, Dänemark",
        "IST": "Istanbul Atatürk Airport, Istanbul, Türkei",
        "ZRH": "Zurich Airport, Zürich, Schweiz",
        "MEL": "Melbourne Airport, Melbourne, Australien",
        "VIE": "Vienna International Airport, Wien, Österreich",
        "SCL": "Comodoro Arturo Merino Benítez International Airport, Santiago, Chile",
        "TPE": "Taiwan Taoyuan International Airport, Taipeh, Taiwan",
        "ATH": "Eleftherios Venizelos International Airport, Athen, Griechenland",
        "GIG": "Rio de Janeiro–Galeão International Airport, Rio de Janeiro, Brasilien",
        "IST": "Istanbul Airport, Istanbul, Türkei",
        "AGB": "Augsburg Airport",
        "AAH": "Aachen-Merzbrück Airport",
        "AOC": "Leipzig Altenburg Airport",
        "ATH": "Athens International Airport",
        "FKB": "Karlsruhe/Baden-Baden Airport",
        "FMM": "Memmingen Airport",
        "FRA": "Frankfurt Airport",
        "HAM": "Hamburg Airport",
        "HAJ": "Hannover Airport",
        "CGN": "Cologne Bonn Airport",
        "DRS": "Dresden Airport",
        "DUS": "Düsseldorf Airport",
        "ERF": "Erfurt–Weimar Airport",
        "FDH": "Friedrichshafen Airport",
        "FMO": "Münster Osnabrück International Airport",
        "HHN": "Frankfurt-Hahn Airport",
        "HGL": "Helgoland Airport",
        "HDF": "Heringsdorf Airport",
        "MUC": "Munich Airport",
        "KEL": "Kiel Airport",
        "KSF": "Kassel Airport",
        "LEJ": "Leipzig/Halle Airport",
        "MHG": "Mannheim City Airport",
        "NRN": "Weeze Airport",
        "NUE": "Nuremberg Airport",
        "PAD": "Paderborn Lippstadt Airport",
        "RLG": "Rostock-Laage Airport",
        "SZW": "Schwerin-Parchim Airport",
        "STR": "Stuttgart Airport",
        "GWT": "Sylt Airport",
        "THF": "Berlin-Tempelhof Airport",
        "TXL": "Berlin Tegel Airport",
        "VAR": "Varrelbusch Airport",
        "ZQW": "Zweibrücken Airport"
        
    ]
}





