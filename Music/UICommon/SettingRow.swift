//
//  SettingRow.swift
//  Music
//
//  Created by Duy Nguyễn on 19/12/2023.
//

import SwiftUI

struct SettingRow: View {
    var title: String = "Title"
    var icon: String = "s_display"
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Text(title)
                    .font(.customfont(.medium, fontSize: 14))
                    .foregroundColor(.primaryText.opacity(0.9))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Divider()
                .padding(.leading, 40)
        }
        .frame(height: 44)
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow()
            .padding(20)
            .background(Color.bg)
    }
}
