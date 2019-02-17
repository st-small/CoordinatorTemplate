//
//  TabBarCoordinator.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

public class TabBarCoordinator: GodCoordinator {
    
    private let tabbarView: TabBarView
    private let coordinatorFactory: CoordinatorFactory
    
    public init(tabbarView: TabBarView, coordinatorFactory: CoordinatorFactory) {
        self.tabbarView = tabbarView
        self.coordinatorFactory = coordinatorFactory
    }
    
    public override func start() {
        tabbarView.onViewDidLoad = runSearchListFlow()
        tabbarView.onSearchFlowSelect = runSearchListFlow()
        //        tabbarView.onSettingsFlowSelect = runSearchListFlow()
        
        
    }
    
    private func runSearchListFlow() -> ((CustomNavigation) -> ()) {
        return { [unowned self] navController in
            if navController.viewControllers.isEmpty == true {
                let searchCoordinator = self.coordinatorFactory.makeSearchListCoordinator(navController: navController)
                self.addDependency(searchCoordinator)
                searchCoordinator.start()
            }
        }
    }
    
    private func runOrdersFlow() -> ((CustomNavigation) -> ()) {
        return { [unowned self] navController in
            if navController.viewControllers.isEmpty == true {
                let searchCoordinator = self.coordinatorFactory.makeOrdersListCoordinator(navController: navController)
                self.addDependency(searchCoordinator)
                searchCoordinator.start()
            }
        }
    }
}
