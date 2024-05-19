//
//  SwiftUIView.swift
//  Little Lemon Demo
//
//  Created by Tanya Lathion on 15.05.2024.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName:String = ""
    var body: some View {
        Form {
            TextField ("Tapez votre nom",
            text: $customerName,
            onEditingChanged: { status in
                print(status)
            })
            .onSubmit({
                print("submitted")
            })
            .onChange(of: customerName, perform: { newValue in
                print(newValue)
            })

        }
        .padding()
    }
}

#Preview {
    ReservationForm()
}
