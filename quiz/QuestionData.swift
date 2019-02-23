//
//  QuestionData.swift
//  quiz
//
//  Created by Shay Sorkin on 21/02/2019.
//  Copyright © 2019 Shay Sorkin. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround \n yourself  with the people you love and enjoy\n activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered,  you enjoy \n doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft.  You are\n healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you\n focus on the details. \n Slow and steady wins the race."
        }
    }
}
