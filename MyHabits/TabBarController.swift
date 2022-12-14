//
//  TabBarController.swift
//  MyHabits
//
//  Created by Apple Mac Air on 07.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var habitsNavigationController: UINavigationController!
    var infoNavigationController: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        habitsNavigationController = UINavigationController.init(rootViewController: HabitsViewController())
        infoNavigationController = UINavigationController.init(rootViewController: InfoViewController())
        
        self.viewControllers = [habitsNavigationController, infoNavigationController]
        
        habitsNavigationController.tabBarItem = UITabBarItem (title: "Привычки", image: UIImage(systemName:"rectangle.grid.1x2.fill"), tag: 0)
        infoNavigationController.tabBarItem = UITabBarItem (title: "Информация", image: UIImage(systemName: "info.circle.fill"), tag: 1)
        
        UITabBar.appearance().tintColor = UIColor(named: "CustomViolet")
        UITabBar.appearance().backgroundColor = UIColor(named: "CustomGrey")
    }
}
