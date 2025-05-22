//
//  NavigationRouter.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 22/05/2025.
//
import SwiftUI

class NavigationRouter:ObservableObject {
    @Published var navigationPath: NavigationPath = NavigationPath()
  
    @Published private var pathKeys: [AnyHashable] = []
    
    @Published var currentSheet: AnyNavigationContainer?
   
    private var sheetStack: [AnyNavigationContainer]? = []
    
    @Published var presentedFullScreen: AnyNavigationContainer?
    
    @Published var hasPresentedSheet:Bool = false
    
    var defaultSheetDetents: Set<PresentationDetent> = [.medium]
    
}

//MARK: -responsible for main navigation operations
extension NavigationRouter {
    func push(_ path:AnyNavigationContainer) {
        print("push called - navigation router")
        navigationPath.append(path)
        print("path \(navigationPath)")
        pathKeys.append(path.id)
        print("keys \(pathKeys)")
    }
    
    func pop() {
        navigationPath.removeLast()
    }
    
    func popToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }
    
}

//MARK: -Sheet presentation

extension NavigationRouter {
    func presentSheet(_ sheet:AnyNavigationContainer) {
        sheetStack?.append(sheet)
        currentSheet = sheet
        hasPresentedSheet = true
    }
    
    func dismissSheet() {
        guard var sheetStack , !sheetStack.isEmpty , currentSheet != nil else { return }
        
        sheetStack.removeLast()
        self.currentSheet = currentSheet
        
        if sheetStack.isEmpty {
            currentSheet = nil
            hasPresentedSheet = false
            return
        }
        
        currentSheet = sheetStack.last
        hasPresentedSheet = true
    }
}

//MARK: -Full Screen Cover Presentaion

extension NavigationRouter {
    func presentFullScreenCover(_ content:AnyNavigationContainer) {
        presentedFullScreen = content
    }
    
    func dismissFullScreenCover() {
        presentedFullScreen = nil
    }
    
}

