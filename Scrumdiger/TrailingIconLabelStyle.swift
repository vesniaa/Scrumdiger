//
//  TrallingIconLabelStyle.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 31.01.2023.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}
// расширение которое создает статическое свойство с именем trailingIcon
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
