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
    
    public init(factory: OrderListModuleFactory, coordinatorFactory: CoordinatorFactory) {
        self.factory = factory
        self.coordinatorFactory = coordinatorFactory
    }
    
    public override func start() {
        
    }
    
    public override func prepareFirstVC() -> BaseView? {
        return factory.makeOrdersListOutput()
    }
    
    private func showOrdersList() {
        //let ordersOutput = factory.makeOrdersListOutput()
    }
}
