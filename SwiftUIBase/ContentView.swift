//
//  ContentView.swift
//  SwiftUIBase
//
//  Created by WKS-MAC01 on 10/04/2024.
//

import SwiftfulRouting
import SwiftfulUI
import SwiftUI
struct ContentView: View {
    @State private var users: [User] = []
    @State private var products: [Product] = []

    var body: some View {
        ScrollView {
            VStack {
                ForEach(users) { user in
                    Text(user.firstName)
                }
                Text("asd")
            }
        }
        .padding()
        .task {
            await getData()
        }
    }

    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {}
    }
}

#Preview {
    ContentView()
}
