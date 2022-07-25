//
//  RequestBusinessModel.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 25/07/22.
//

import Foundation

class RequestBusinessModel: RequestProtocol {
    func fetchRequestList() -> [RequestDataSource] {
        [
            RequestDataSource(numberRequest: 147257),
            RequestDataSource(numberRequest: 147257),
        ]
    }
}
