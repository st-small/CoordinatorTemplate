//
//  OrderListModuleFactoryImp.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

public final class OrderListModuleFactoryImp: OrderListModuleFactory {
    public func makeOrdersListOutput() -> CompletedOrdersViewProtocol {
        return CompletedOrdersView()
    }
}
