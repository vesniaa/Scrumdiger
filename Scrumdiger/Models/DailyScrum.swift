//
//  DailyScrum.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 31.01.2023.
//

import Foundation

//создаю структуру DailyScrum с заголовко, участниками, lengthInMinutes(длина в минутах) и свойства темы.

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
}

//создаю структуру с заголовками, участниками, и свойствами темы.

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
    
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christian", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
    
    ]
}
