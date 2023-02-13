//
//  DetailEditView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 13.02.2023.
//

import SwiftUI

struct DetailEditView: View {
    //@State определяет источник истинности для типов значений
    @State private var data = DailyScrum.Data()
    
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinutes, in: 5...30) //step: Text("Length"))
                    Spacer()
                    Text("\(Int(data.lengthInMinutes)) minutes")
                    }
                }
            }
        }
    }



struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
