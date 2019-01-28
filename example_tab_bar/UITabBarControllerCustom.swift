//
//  UITabBarControllerCustom.swift
//  example_tab_bar
//
//  Created by Pol monleon vives on 25/01/2019.
//  Copyright © 2019 Pol monleon vives. All rights reserved.
//

import UIKit

class UITabBarControllerCustom: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.yellow], for: .selected)*/
        
        let iconos:[String] = ["calendar", "contact", "route"]
        
        for i in 0..<self.tabBar.items!.count{
            tabBarItem = self.tabBar.items![i]
            tabBarItem.image = UIImage(named: iconos[i])?.withRenderingMode(.alwaysOriginal)
            tabBarItem.selectedImage = UIImage(named: "\(iconos[i])Selected")?.withRenderingMode(.alwaysOriginal)
            tabBarItem.title = nil
            tabBarItem.imageInsets = UIEdgeInsets(top: 6,left: 0,bottom: -6,right: 0)
        }
    }

}
