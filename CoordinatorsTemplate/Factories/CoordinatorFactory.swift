//
//  CoordinatorFactory.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

public protocol CoordinatorFactory {

    func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?)
    func makeSearchListCoordinator() -> Coordinator
    func makeOrdersListCoordinator() -> Coordinator
}
