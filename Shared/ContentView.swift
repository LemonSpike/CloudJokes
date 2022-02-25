//
//  ContentView.swift
//  Shared
//
//  Created by Pranav Kasetti on 23/02/2022.
//

import SwiftUI

struct ContentView: View {

  @StateObject var viewModel = JokeViewModel()

  var body: some View {
    NavigationView {
      VStack {
        Button("Joke") {
          viewModel.nextJoke()
        }.font(.headline)
          .padding()
          .buttonStyle(.bordered)
        Text(viewModel.jokeQuestion)
          .font(.title)
          .padding(20)
          .multilineTextAlignment(.center)
        Spacer()
        AsyncImage(url: viewModel.jokeImageURL)
        Spacer()
        Text(viewModel.jokeAnswer)
          .font(.title2)
          .padding(20)
          .multilineTextAlignment(.center)
        Spacer()
      }
      .navigationTitle("Cloud Jokes")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environment(\.colorScheme, .light)
      .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
  }
}
