//
//  MainViewModel.swift
//  Music
//
//  Created by Duy Nguyễn on 15/12/2023.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var share: MainViewModel = MainViewModel()
    
    @Published var selectTab: Int = 1
    @Published var isShowMenu: Bool = false
}
