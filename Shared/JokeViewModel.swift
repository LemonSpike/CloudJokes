//
//  JokeViewModel.swift
//  CloudJokes
//
//  Created by Pranav Kasetti on 24/02/2022.
//

import SwiftUI

class JokeViewModel: ObservableObject {

  var currentJoke: Joke {
    return Joke.allJokes[currentIndex]
  }

  @Published var currentIndex = 0

  var jokeQuestion: String {
    return currentJoke.question
  }

  var jokeAnswer: String {
    return currentJoke.answer
  }

  func nextJoke() {
    currentIndex = (currentIndex + 1) % Joke.allJokes.count
  }
}
