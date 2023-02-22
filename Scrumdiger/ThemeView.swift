//
//  ThemeView.swift
//  Scrumdiger
//
//  Created by Евгения Аникина on 22.02.2023.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            //цвет который без этой строчки кода не добавлялся
                .background(Color.yellow)
            Label(theme.name, systemImage: "paintpalette")
            
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
