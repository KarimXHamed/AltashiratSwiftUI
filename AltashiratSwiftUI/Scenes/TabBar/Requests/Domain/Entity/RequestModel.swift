//
//  RequestModel.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

struct RequestModel: Model, Identifiable,Equatable {
    var id: UUID = UUID()
    var orderNumber: Int
    var status: RequestStatus
    var date: String
    var noOfPersons: Int
    var noOfChilds: Int
}
