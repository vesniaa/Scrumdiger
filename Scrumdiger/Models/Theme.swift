//
//  Theme.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 31.01.2023.
//
//добавила фраемворк swiftui, добавляю свойства цвета из среды.

import SwiftUI

//создаю перечесления с именем Theme с необработанным типом значения String.
enum Theme: String, CaseIterable, Identifiable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    //добавила свойство Color с именем accentColor, которое возвращает .black or .white  в зависимости от значения self.
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    //создает цвет используя перечисления
    var mainColor: Color {
        Color(rawValue)
    }
    //добавляем свойство имени в котором необработанные значения пишутся с заглавной буквы.
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}
