//
//  ContentView.swift
//  AlbumApp
//
//  Created by Ariana Osuna  on 08/11/26.
//

import SwiftUI

struct ContentView: View {

    // album info
    let albums = [
        Album(title: "In Rainbows", artist: "Radiohead", color: .orange),
        Album(title: "Random Access Memories", artist: "Daft Punk", color: .yellow),
        Album(title: "Puras de Juan Gabriel Vol. 1", artist: "Chuy Vega y los Nuevos Cadetes", color: .red),
        Album(title: "Hypnotize", artist: "System of a Down", color: .purple),
        Album(title: "Greatest Hits", artist: "2Pac", color: .green),
        Album(title: "Dirt", artist: "Alice in Chains", color: .brown),
        Album(title: "Please Please Me", artist: "The Beatles", color: .blue),
        Album(title: "Twilight", artist: "BoA", color: .pink),
        Album(title: "Muerte", artist: "Cancerbero", color: .indigo),
        Album(title: "Join the Dots", artist: "The Cure", color: .mint)
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                HeaderRow(albumsCount: albums.count)

                // MARK: - album #
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(albums) { album in
                        AlbumCard(album: album)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ContentView()
}
