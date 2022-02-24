//
//  Joke.swift
//  CloudJokes
//
//  Created by Pranav Kasetti on 24/02/2022.
//

import Foundation

struct Joke {

  static let allJokes = [Joke(question: "Where do clouds go to the bathroom?",
                              answer: "Anywhere they want!"),
                         Joke(question: "What do you get if you mix a very sad cloud and the ocean?",
                              answer: "A tropical depression!"),
                         Joke(question: "Why was the sun mad at the clouds?",
                              answer: "Because they kept throwing shade!"),
                         Joke(question: "I thought I saw a cloud that looked like a pastry.",
                              answer: "But it was a pie in the sky!"),
                         Joke(question: "Why was the cloud so dark and stormy?",
                              answer: "It was mis-thunder-stood!"),
  ]

  var question: String
  var answer: String
}

