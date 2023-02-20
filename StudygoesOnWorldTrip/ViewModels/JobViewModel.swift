//
//  JobViewModel.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 16.02.23.
//

import Foundation

@MainActor class JobViewModel: ObservableObject {
    @Published var jobAngeboteModels: [JobModel] = []
    
    // Initialize the model
    init() {
        jobAngeboteModels.append(
            JobModel(
            name: "Health Jobs",
            description2: """

**Job Bezeichnung**

- Arbeiten mit dem Menschen und das im Ausland, kontaktieren Sie uns und wir finden bestimmt etwas wo alle zufrieden sind
- Gute und pünktliche Bezahlung
- Sie wohnen beim Arbeitgeber in einem seperaten Zimmer
- Gehobene Ausstattung

""",
            jobImage2:"heart",
            jobURL: "https://www.jobworld.de/Pflege-jobs?utm_source=bing&utm_medium=cpc&msclkid=acc8f23b76e5190124d691d6ab15c6b9")
        )
        
        jobAngeboteModels.append(
            JobModel(
            name: "Office Jobs",
            description2: """
**Job Bezeichnung**

- Über den Job

- Abwechslungsreiche Aufgaben,
- überdurchschnittliche Bezahlung
- Flexible Arbeitszeiten
- sehr freundlich und zuvorkommend
""",
            jobImage2: "laptop",
            jobURL: "https://www.yobbers.com/de/arbeiten-in-spanien?msclkid=127bca551e5b108789cca9b8c2f38e07&utm_source=bing&utm_medium=cpc&utm_campaign=2.%20Locations%20-%20DE%20language%20-%20Other%20countries%20-%20Bing&utm_term=arbeiten%20in%20spanien%20als%20deutscher&utm_content=Spanien%20-%20Country#vacancies")
        )


    }
    
}

