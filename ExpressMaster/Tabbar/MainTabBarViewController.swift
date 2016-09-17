//
//  ViewController.swift
//  CookBook
//
//  Created by 王卓 on 16/6/5.
//  Copyright © 2016年 SherryTeam. All rights reserved.
//

import UIKit
import SnapKit
import Rswift

class MainTabbarController: UITabBarController {
    
    //    private var indexViewController:IndexViewController!
    //    private var mineViewController:MineViewController!
    
    fileprivate var tabbarItems:[UITabBarItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewControllers()
        configTabbar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func loadViewControllers(){
        func configViewController(_ storyBoard:UIStoryboard,title:String,attr:[String:UIColor],image:UIImage?,selectedImage:UIImage?) -> UINavigationController {
            let viewController = storyBoard.instantiateInitialViewController() as! UINavigationController
            viewController.tabBarItem.image = image
            viewController.tabBarItem.selectedImage = selectedImage
            viewController.navigationItem.title = title
            viewController.tabBarItem.title = title
            viewController.tabBarItem.setTitleTextAttributes(attr, for: UIControlState())
            return viewController
        }
        
        let color = [NSForegroundColorAttributeName:UIColor.white]
        let indexViewController = configViewController(R.storyboard.index(), title: "今日美食", attr: color, image: R.image.today_normal(), selectedImage: R.image.today_highlighted())
        
        let mineViewController = configViewController(R.storyboard.mine(), title: "我的", attr: color, image: R.image.user_normal(), selectedImage: R.image.user_highlighted())
        
        self.viewControllers = [
            indexViewController,
            mineViewController
        ]
        self.selectedIndex = 0
    }
    
    func configTabbar(){
        UITabBar.appearance().barTintColor = UIColor.darkGray
        UITabBar.appearance().tintColor = UIColor.white
    }
    
}
