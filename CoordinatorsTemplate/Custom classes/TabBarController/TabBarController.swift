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

}
