//
//  SpotifyCategoryCell.swift
//  SwiftUIBase
//
//  Created by WKS-MAC01 on 10/04/2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    var title: String = "All"
    var isSelected: Bool = false
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 40) {
            SpotifyCategoryCell(isSelected: false)
            SpotifyCategoryCell(title: "Podcast", isSelected: true)
            SpotifyCategoryCell(title: "Podcast", isSelected: true)
        }
    }
}
