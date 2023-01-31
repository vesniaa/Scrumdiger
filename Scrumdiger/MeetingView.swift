//
//  ContentView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 31.01.2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                //ведущее выравнивание,тоесть выравнивают по центру
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                    //уменьшает размер текста
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                //замыкающее выравнивание
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            Circle()
            //граница круга
                .strokeBorder(lineWidth: 24)
            HStack {
                //speaker-динамик
                Text("Speaker 1 of 3")
                //разделить между текстом и кнопкой
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
