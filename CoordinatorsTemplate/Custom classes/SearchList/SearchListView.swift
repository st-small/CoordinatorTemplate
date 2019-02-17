//
//  SearchListView.swift
//  CoordinatorsTemplate
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class SearchListView: UIViewController, SearchListViewProtocol {

    public init() {
        super.init(nibName: "SearchListView", bundle: Bundle.main)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public override func loadView() {
        super.loadView()
        
        self.navigationController?.navigationBar.topItem?.title = "SearchListView"
    }
}
