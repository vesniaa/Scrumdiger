//
//  CardView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 31.01.2023.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        //упорядочиваем по вертикальной линии
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            //разделитель
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                //разделитель
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                //отступы
                    .padding(.trailing, 20)
            }
            .font(.caption)
        }
        //отступы и цвет
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
        //цвет фона
            .background(scrum.theme.mainColor)
        //предварительный просмотр макета
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
