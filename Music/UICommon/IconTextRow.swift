//
//  IconTextRow.swift
//  Music
//
//  Created by Duy Nguyễn on 15/12/2023.
//

import SwiftUI

struct IconTextRow: View {
    var title: String = ""
    var icon: String = "m_theme"
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Text(title)
                    .font(.customfont(.regular, fontSize: 12))
                    .foregroundColor(Color.primaryText.opacity(0.9))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .frame(height: 40)
            
            Divider()
                .padding(.leading, 40)
        }
    }
}

struct IconTextRow_Previews: PreviewProvider {
    static var previews: some View {
        IconTextRow()
    }
}
