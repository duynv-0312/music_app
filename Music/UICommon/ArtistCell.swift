//
//  ArtistCell.swift
//  Music
//
//  Created by Duy Nguyễn on 18/12/2023.
//

import SwiftUI

struct ArtistCell: View {
    var aObj : NSDictionary = [
        "image": "ar_1",
        "name": "Beyonce",
        "albums": "4 albums",
        "songs": "38 Songs"
    ]
    var body: some View {
        HStack {
            Image(aObj.value(forKey: "image") as? String ?? "")
                .resizable()
                .scaledToFill()
                .overlay(RoundedRectangle(cornerRadius: 1)
                    .stroke(Color.primaryText28, lineWidth: 1))
                .frame(width: 80, height: 80)
            VStack {
                Text(aObj.value(forKey: "name") as? String ?? "")
                    .font(.customfont(.bold, fontSize: 14))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text("\(aObj.value(forKey: "albums") as? String ?? "") - \(aObj.value(forKey: "songs") as? String ?? "")")
                    .font(.customfont(.regular, fontSize: 11))
                    .foregroundColor(.primaryText80)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Menu {
                Button {
                    
                } label: {
                    Text("Play")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Play next")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Add to playlist queue")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Add to playlist")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Rename")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Tag Editor")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Go to artist")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Delete from device")
                        .foregroundColor(.primaryText)
                }
                Button {
                    
                } label: {
                    Text("Share")
                        .foregroundColor(.primaryText)
                }
                
            } label: {
                Image("more_btn")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }
            .environment(\.colorScheme, .dark)
        }
    }
}

struct ArtistCell_Previews: PreviewProvider {
    static var previews: some View {
        ArtistCell()
            .background(Color.bg)
    }
}
