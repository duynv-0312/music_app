//
//  AllSongRow.swift
//  Music
//
//  Created by Duy Nguyễn on 18/12/2023.
//

import SwiftUI

struct AllSongRow: View {
    @State var sObj: NSDictionary = [
        "name" : "Title",
        "artist": "Artist Name",
        "image": "s1"
    ]
    var didTap: (() -> ())?
    var didTapPlay: (() -> ())?
    var body: some View {
        VStack {
            HStack {
                ZStack(alignment: .center) {
                    Image(sObj.value(forKey: "image") as? String ?? "")
                        .resizable()
                        .scaledToFill()
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.primaryText28, lineWidth: 1)
                        )
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    Rectangle()
                        .fill(Color.bg)
                        .frame(width: 15, height: 15)
                        .cornerRadius(7.5)
                }
                VStack {
                    Text(sObj.value(forKey: "name") as? String ?? "")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText.opacity(0.9))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(sObj.value(forKey: "artist") as? String ?? "")
                        .font(.customfont(.medium, fontSize: 10))
                        .foregroundColor(.primaryText28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Button {
                    didTapPlay?()
                } label: {
                    Image("play_btn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 50)
                }
            }
        }
    }
}

struct AllSongRow_Previews: PreviewProvider {
    static var previews: some View {
        AllSongRow()
            .padding(20)
            .background(Color.bg)
    }
}
