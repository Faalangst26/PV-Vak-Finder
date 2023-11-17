//
//  Navigator.swift
//  PV-Vak-Finder
//
//  Created by Berne Gerrits on 17/11/2023.
//

import Foundation
import SwiftUI

enum Navigator: Identifiable {
    case onTap
    case onLogin
    
    var id: Navigator {
        return self
    }
    
    @ViewBuilder
    var navigateView: some View {
        switch self {
        case .onTap:
            Text("SS")
            
        case .onLogin:
            Text("Login View")
        }
    }
}

extension View {
    func navigate(to view: Binding<Navigator?>) -> some View {
        ZStack {
            self
            if let wrappedValue = view.wrappedValue {
                NavigationLink(
                    destination: wrappedValue.navigateView,
                    tag: wrappedValue,
                    selection: view,
                    label: {EmptyView()})
            }
        }
    }
}
