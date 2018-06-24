//
//  TabBarController.swift
//  WeatherAppTest
//
//  Created by Андрей Гончаров on 21/06/2018.
//  Copyright © 2018 Goncharov Andrei. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todayInactive = UIImage(named: "25x25 Today Inactive (Tab)")
        let todayActive = UIImage(named: "25x25 Today Active (Tab)")
        let forecastInactive = UIImage(named: "25x25 Forecast Inactive (Tab)")
        let forecastActive = UIImage(named: "25x25 Forecast Active (Tab)")
        
        let todayController = TodayController()
        todayController.tabBarItem = UITabBarItem(title: "Today", image: todayInactive, selectedImage: todayActive)
        let forecastController = ForecastController()
        forecastController.tabBarItem = UITabBarItem(title: "Forecast", image: forecastInactive, selectedImage: forecastActive)
        let viewControllerList = [todayController, forecastController]
        viewControllers = viewControllerList
    }

}
