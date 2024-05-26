//
//  ReservationCalendar.swift
//  Little Lemon Demo
//
//  Created by Tanya Lathion on 27.05.2024.
//  Imaginez que vous êtes en train de créer une application de restaurant pour Little Lemon qui permet de faire des réservations. A un moment donné du processus de réservation, l'application doit demander aux utilisateurs de choisir une heure. Dans cet exercice, vous allez créer une application qui vous permet de sélectionner une heure et un jour sur le calendrier pour une réservation.

import SwiftUI

struct ReservationCalendar: View {
    
    @State var reservationDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: { print("do something!") }) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }
                .padding(20)
                Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
            }
        }
    }
}

#Preview {
    ReservationCalendar()
}
