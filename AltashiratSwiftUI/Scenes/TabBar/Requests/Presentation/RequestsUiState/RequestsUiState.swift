//
//  RequestsUiState.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

struct RequestsUiState {
    var tourismRequests: [RequestModel] = []
    var isLoading: Bool = false
    var firstFetched = false
    var currentPage = 0
    var lastPage = 3
    var selectedCategory: RequestSegmentedViewCategories = .tourismVisa
    var employmentRequests: [RequestModel] = []
    var sellRequests: [RequestModel] = []

}
