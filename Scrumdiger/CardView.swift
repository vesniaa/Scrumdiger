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
            //этот модификатор помогает передать информационную архитектуру представления,читая заголовок схватк, за которым следует заголовок.
                .accessibilityAddTraits(.isHeader)
            //разделитель
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                //модификатор доступности чтобы добавить метку описывающую содержимое первой метки в HStack
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                //разделитель
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                //аналогичный модификатор доступности
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                //новый стиль метки на метку
                    .labelStyle(.trailingIcon)
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
