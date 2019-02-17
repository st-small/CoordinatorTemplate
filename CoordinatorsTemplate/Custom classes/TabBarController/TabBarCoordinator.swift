//
//  TabBarCoordinator.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class TabBarCoordinator: GodCoordinator {
    
    private let tabbarView: TabBarView
    private let coordinatorFactory: CoordinatorFactory
    
    public init(tabbarView: TabBarView, coordinatorFactory: CoordinatorFactory) {
        self.tabbarView = tabbarView
        self.coordinatorFactory = coordinatorFactory
    }
    
    public override func start() {
        
        let VCs = [createSearchListTab(),
                   createOrdersListTab()].compactMap({ $0 })
        
        tabbarView.update(VCs)
    }
    
    private func createSearchListTab() -> BaseView? {
        let searchCoordinator = self.coordinatorFactory.makeSearchListCoordinator()
        self.addDependency(searchCoordinator)
        
        return searchCoordinator.prepareFirstVC()
    }
    
    private func createOrdersListTab() -> BaseView? {
        let ordersCoordinator = self.coordinatorFactory.makeOrdersListCoordinator()
        self.addDependency(ordersCoordinator)
        
        return ordersCoordinator.prepareFirstVC()
    }
}
