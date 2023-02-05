//
//  ScrumsView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 05.02.2023.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        //список
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    //инициализировали CardView в замыкании
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}
    
    struct ScrumsView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
