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

      //custom image from freepik license ok for commerical
      Image("Logo")
        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
        .aspectRatio(contentMode: .fit)
        .shadow(color: /*@START_MENU_TOKEN@*/ .black /*@END_MENU_TOKEN@*/, radius: 5)
        .padding(.all, 10.0)

      //linear gradient bird logo
      Image(systemName: "bird")
        .aspectRatio(contentMode: .fit)
        .imageScale(.large)
        .foregroundStyle(
          .linearGradient(
            colors: [.blue, .green], startPoint: .leading,
            endPoint: .trailing)
        )

      Text("Hello Friend")
        .padding( /*@START_MENU_TOKEN@*/.all, 10.0 /*@END_MENU_TOKEN@*/)
        .foregroundColor(Color.green)

      //alert button tied to two functions
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
