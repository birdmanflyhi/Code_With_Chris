//
//  ContentView.swift
//  UITestCodeWithChris
//
//  Created by Matt Crowe on 11/15/23.
//

import SwiftUI

struct ContentView: View {

  @State private var showAlert = false

  var body: some View {
    VStack {
      Image(systemName: "bird")
        .imageScale(.large)
        .foregroundStyle(.tint)


      Text("Hello Friend")
        .padding( /*@START_MENU_TOKEN@*/.all, 10.0 /*@END_MENU_TOKEN@*/)
        .foregroundColor(Color.green)

      Button("Click for an Alert") {
        showAlert = true

      }
      .buttonStyle(.borderedProminent)
      .padding(20.0)
      .frame(height: 12.0)
      .alert(isPresented: $showAlert) {
        Alert(
          title: Text("Alert the team"),
          message: Text("Confirm you meant to do this"),
          primaryButton: .default(
            Text("Yes"),
            action: saveData
          ),
          secondaryButton: .destructive(
            Text("No"),
            action: deleteConfirm
          )
        )
      }

      //.badge("Test")

    }

  }

}
func greeting() {
  print("Hello Old Friend")

}

func saveData() {
  print("Saving Data")
}

func deleteConfirm() {
  print("Do Nothing")
}

#Preview {
  ContentView()
}
