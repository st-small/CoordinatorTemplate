//
//  CoordinatorFactoryImp.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

public final class CoordinatorFactoryImp: CoordinatorFactory {
    public func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?) {
        let controller = TabBarController()
        let coordinator = TabBarCoordinator(tabbarView: controller, coordinatorFactory: CoordinatorFactoryImp())
        return (coordinator, controller)
    }
    
    public func makeSearchListCoordinator(navController: CustomNavigation?) -> Coordinator {
        let coordinator = SearchListCoordinator(router: router(navController), factory: SearchListModuleFactoryImp(), coordinatorFactory: CoordinatorFactoryImp())
        return coordinator
    }
    
    public func makeOrdersListCoordinator(navController: CustomNavigation?) -> Coordinator {
        let coordinator = OrderListCoordinator(router: router(navController), factory: OrderListModuleFactoryImp(), coordinatorFactory: CoordinatorFactoryImp())
        return coordinator
    }
    
    private func router(_ navController: CustomNavigation?) -> Router {
        return RouterImp(rootController: navigationController(navController))
    }
    
    private func navigationController(_ navController: CustomNavigation?) -> CustomNavigation {
        if let navController = navController { return navController }
        else { return CustomNavigation() }
    }
}
