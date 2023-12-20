//
//  AllSongsView.swift
//  Music
//
//  Created by Duy Nguyễn on 18/12/2023.
//

import SwiftUI

struct AllSongsView: View {
    @State var allArr:  NSArray = [
        ["image": "s1",
         "name": "Billie Jean",
         "artists": "Michael Jackson"
        ],
        ["image": "s2",
         "name": "Be the girl",
         "artists": "Bebe Rexa"
        ],
        ["image": "s3",
         "name": "Countryman",
         "artists": "Daughtry"
        ],
        ["image": "s4",
         "name": "Do you feel lonelyness",
         "artists": "Marc Anthony"
        ],
        ["image": "s5",
         "name": "Earth song",
         "artists": "Michael Jackson"
        ],
        ["image": "s6",
         "name": "Smooth criminal",
         "artists": "Michael Jackson"
        ],
        ["image": "s7",
         "name": "The way you  make me feel",
         "artists": "Michael Jackson"
        ],

        ["image": "s9",
         "name": "Somebody that I used to know",
         "artists": "Gotye"
        ],
        ["image": "s10",
         "name": "Wild Thoughts",
         "artists": "Michael Jackson"
        ]
    ]
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0 ..< allArr.count, id: \.self) { index in
                    var sObj = allArr[index] as? NSDictionary ?? [:]
                    NavigationLink {
                        MainPlayerView()
                    } label: {
                        AllSongRow(sObj: sObj)
                    }
                }
            }
            .padding(20)
        }
        .ignoresSafeArea()
        .background(Color.bg)
    }
}

struct AllSongsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AllSongsView()
        }
    }
}
