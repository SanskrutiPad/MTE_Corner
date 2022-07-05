//
//  sideMenuViewModel.swift
//  Maintenance Corner
//
//  Created by Sanskruti  Padmawar  on 2022-05-10.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable {
    case home
    case search
    case dashboard
    case profile
    case quiz
    case logout
    
    var title: String {
        switch self {
            case .home: return "Home"
            case .search: return "Search"
            case .dashboard: return "Dashboard"
            case .profile: return "Profile"
            case .quiz: return "Quiz Sample"
            case .logout: return "Logout"
            
        
        }
    }
    
    var imgName: String {
        switch self {
            case .home: return "homekit"
            case .search: return "magnifyingglass"
            case .dashboard: return "chart.bar.xaxis"
            case .profile: return "person"
            case .quiz: return "square.and.pencil"
            case .logout: return "arrow.left.square.fill"
            
        
        }
    }
    
    
}
