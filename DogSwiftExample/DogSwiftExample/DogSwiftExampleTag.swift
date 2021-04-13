//
//  DogSwiftExampleTag.swift
//  DogSwiftExample
//
//  Created by Fabian Tinsz on 20.08.19.
//  Copyright © 2019 dreipol. All rights reserved.
//

import DogSwift

enum ExampleTag: String {
    case viewDidLoad
}

extension ExampleTag: TagProtocol {
    func getTag() -> String {
        return String(describing: self)

    }
}
