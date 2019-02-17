//
//  CustomNavigation.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class CustomNavigation: UINavigationController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.isTranslucent = false
        navigationBar.tintColor = .red
        navigationBar.barTintColor = .white
        navigationBar.shadowImage = UIImage()
        
        let attributes: [NSAttributedString.Key : Any] = [.foregroundColor: UIColor.darkGray]
        navigationBar.titleTextAttributes = attributes
        
        addShadowToBar()
        
        let backImage = UIImage(named: "Back")
        navigationBar.backIndicatorImage = backImage
        navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func addShadowToBar() {
        navigationBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.12).cgColor
        navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        navigationBar.layer.shadowRadius = 4.0
        navigationBar.layer.shadowOpacity = 1.0
        navigationBar.layer.masksToBounds = false
    }
    
    public override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.navigationItem.backBarButtonItem =
            UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        setNavigationBarHidden(false, animated: false)
        super.pushViewController(viewController, animated: animated)
    }
    
    public func hideNavigationBar() {
        setNavigationBarHidden(true, animated: false)
    }
    
    public func showNavigationBar() {
        setNavigationBarHidden(false, animated: false)
    }
}
