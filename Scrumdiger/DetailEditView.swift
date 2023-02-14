//
//  DetailEditView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 13.02.2023.
//

import SwiftUI

struct DetailEditView: View {
    //@State определяет источник истинности для типов значений.
    @State private var data = DailyScrum.Data()
    @State private var newAttendeeName = ""
    
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
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                //модификатор onDelete, фраемворк вызывает замыкание для удаления участника группы,когда пользователь проводит пальцем чтобы удалить строку.
                .onDelete { indices in
                    data.attendees.remove(atOffsets: indices)
                    
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        //блок анимации который создает нового участника и добавляет его в массив участников.
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    //отключаем кнопку если newAttendeeName пусто, кнопка активируется когда пользователь вводит имя в текстовое поле.
                    .disabled(newAttendeeName.isEmpty)
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
