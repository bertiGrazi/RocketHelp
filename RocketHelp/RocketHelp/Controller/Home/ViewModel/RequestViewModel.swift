//
//  RequestViewModel.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 25/07/22.
//

import Foundation

class RequestViewModel {
    private let businessModel: RequestProtocol = RequestBusinessModel()
    
    func fetchRequestList() -> [RequestDataSource] {
        return businessModel.fetchRequestList()
    }
}
