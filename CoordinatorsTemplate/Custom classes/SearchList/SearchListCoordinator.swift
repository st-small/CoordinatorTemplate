//
//  SearchListCoordinator.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

public final class SearchListCoordinator: GodCoordinator {
    
    private let factory: SearchListModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    public init(router: Router, factory: SearchListModuleFactory, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.factory = factory
        self.coordinatorFactory = coordinatorFactory
    }
    
    public override func start() {
        showSearchList()
    }
    
    private func showSearchList() {
        let searchOutput = factory.makeSearchListOutput()
        router.setRootModule(searchOutput)
    }
}
