//
//  HeaderRow.swift
//  AlbumApp
//
//  Created by Ariana Osuna  on 09/11/26.
//

import SwiftUI

struct HeaderRow: View {

    let albumsCount: Int

    var body: some View {
        HStack {
            Text("My Albums")
                .font(.title2)
                .bold()

            Spacer()

            Text("\(albumsCount) albums")
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderRow(albumsCount: 10)
}
