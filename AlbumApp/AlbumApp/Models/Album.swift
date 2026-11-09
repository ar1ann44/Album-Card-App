//
//  Album.swift
//  AlbumApp
//
//  Created by Ariana Osuna  on 09/11/26.
//

import SwiftUI

struct Album: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let color: Color
}
