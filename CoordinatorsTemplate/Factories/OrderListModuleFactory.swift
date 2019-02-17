//
//  OrderListModuleFactory.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

public protocol OrderListModuleFactory {
    func makeOrdersListOutput() -> CompletedOrdersViewProtocol
}
