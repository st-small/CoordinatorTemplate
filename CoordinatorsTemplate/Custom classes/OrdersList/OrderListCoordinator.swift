//
//  OrderListCoordinator.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

public final class OrderListCoordinator: GodCoordinator {
    
    private let factory: OrderListModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    public init(router: Router, factory: OrderListModuleFactory, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.factory = factory
        self.coordinatorFactory = coordinatorFactory
    }
    
    public override func start() {
        showOrdersList()
    }
    
    //MARK: - Run current flow's controllers
    private func showOrdersList() {
        let ordersOutput = factory.makeOrdersListOutput()
        router.setRootModule(ordersOutput)
    }
}
