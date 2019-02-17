//
//  TabBarView.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public protocol TabBarView: class {
    var onSearchFlowSelect: ((CustomNavigation) -> ())? { get set }
    var onOrdersFlowSelect: ((CustomNavigation) -> ())? { get set }
    var onViewDidLoad: ((CustomNavigation) -> ())? { get set }
    
    func update(_ viewControllers: [BaseView])
}
