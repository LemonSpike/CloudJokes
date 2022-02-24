//
//  Joke.swift
//  CloudJokes
//
//  Created by Pranav Kasetti on 24/02/2022.
//

import Foundation

struct Joke {
  var question: String
  var answer: String
  private var imagePath: String
  var imageURL: URL? {
    let comps = imagePath.components(separatedBy: ".")
    let name = comps[0]
    let fileType = comps[1]
    return Bundle.main.url(forResource: name, withExtension: fileType)
  }
}

extension Joke {
  static let allJokes = [Joke(question: "Where do clouds go to the bathroom?",
                              answer: "Anywhere they want!",
                              imagePath: "jokeone.jpeg"),
                         Joke(question: "What do you get if you mix a very sad cloud and the ocean?",
                              answer: "A tropical depression!",
                              imagePath: "joketwo.jpeg"),
                         Joke(question: "Why was the sun mad at the clouds?",
                              answer: "Because they kept throwing shade!",
                              imagePath: "jokethree.jpeg"),
                         Joke(question: "I thought I saw a cloud that looked like a pastry.",
                              answer: "But it was a pie in the sky!",
                              imagePath: "jokefour.jpeg"),
                         Joke(question: "Why was the cloud so dark and stormy?",
                              answer: "It was mis-thunder-stood!",
                              imagePath: "jokefive.jpeg"),
  ]
}
