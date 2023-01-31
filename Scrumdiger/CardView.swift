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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
