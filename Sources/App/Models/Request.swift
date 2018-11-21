//
//  Request.swift
//  App
//
//  Created by 吳得人 on 2018/11/21.
//

import Foundation
import Vapor

struct Request: Content {
    var deviceIds: [String]
    var title: String
    var content: String
    var customPayload: customPayload
}

struct customPayload: Content {
    var custom1: String
    var custom2: Int
    var custom3: [String]
}
