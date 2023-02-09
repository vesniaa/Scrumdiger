//
//  DetailView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 09.02.2023.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        //используем лист для отображения статических подпредставлений в одном столбце со строками.
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                //выделение интерактивного элемента
                    .font(.headline)
                    .foregroundColor(.accentColor)
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
