//
//  TabBarController.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class TabBarController: UITabBarController, TabBarView {
    
    public var onSearchFlowSelect: ((CustomNavigation) -> ())?
    public var onOrdersFlowSelect: ((CustomNavigation) -> ())?
    public var onViewDidLoad: ((CustomNavigation) -> ())?
    

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    public func update(_ viewControllers: [BaseView]) {
        
        guard let VCs = viewControllers as? [UIViewController] else { return }
        
        var updatedViewControllers = [CustomNavigation]()
        for item in VCs {
            
            switch item {
            case item as SearchListView: item.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
            case item as CompletedOrdersView: item.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
            default: break
            }
            
            let nav = CustomNavigation(rootViewController: item)
            updatedViewControllers.append(nav)
        }
        
        self.viewControllers = updatedViewControllers
    }
}
