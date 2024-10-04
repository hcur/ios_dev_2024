//
//  NavigationView.swift
//  LiveCodeDemo
//
//  Created by Hayden Curfman on 9/29/24.
//

import SwiftUI

struct Product {
    let id: UUID = UUID()
    let title: String
    let price: Int
    let color: String
}

struct NavigationView: View {
    let products: [Product] = [
        Product(title: "fairlife", price: 4, color: "brown"),
        Product(title: "dr pepper", price: 3, color: "red")
    ]
    var body: some View {
        NavigationStack {
            List(products, id: \.id) { product in
                NavigationLink {
                    DestinationView(product: product)
                } label: {
                    Text(product.title)
                }
            }
        }
    }
}

struct DestinationView: View {
    let product: Product
    
    var body: some View {
        Text("Price: \(product.price)")
        Text("Color: \(product.color)")
    }
}

#Preview {
    NavigationView()
}
