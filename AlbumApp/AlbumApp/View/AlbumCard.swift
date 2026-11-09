//
//  AlbumCard.swift
//  AlbumApp
//
//  Created by Ariana Osuna  on 09/11/26.
//

import SwiftUI

struct AlbumCard: View {

    let album: Album

    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))

            VStack(alignment: .leading, spacing: 4) {
                
                RoundedRectangle(cornerRadius: 12)
                    .fill(album.color)
                    .frame(height: 120)

                Text(album.title)
                    .font(.headline)
                    .lineLimit(1)

                Text(album.artist)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 210)
    }
}

#Preview {
    AlbumCard(album: Album(title: "Midnight", artist: "The Weeknd", color: .purple))
}
