//
//  PageViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 4/25/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var arrPageTitle: NSArray = NSArray()
    var arrPagePhoto: NSArray = NSArray()
    var arrPageMainTitle: NSArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrPageTitle = ["Keep Track of Previous Location", "Share Locations between Friends","Keep Snaps of Previous Locations"];
        arrPagePhoto = ["signs.png","share.png", "photo.png"];
        arrPageMainTitle = ["Track","Share","Snap"];
        
        self.dataSource = self

    }
    
    
    override func viewDidAppear (animated: Bool) {
        
        dispatch_async(dispatch_get_main_queue()) {
             self.setViewControllers([self.getViewControllerAtIndex(0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let subViews: NSArray = view.subviews
        var scrollView: UIScrollView? = nil
        var pageControl: UIPageControl? = nil
        
        for view in subViews {
            if view.isKindOfClass(UIScrollView) {
                scrollView = view as? UIScrollView
            }
            else if view.isKindOfClass(UIPageControl) {
                pageControl = view as? UIPageControl
            }
        }
        
        if (scrollView != nil && pageControl != nil) {
            scrollView?.frame = view.bounds
            view.bringSubviewToFront(pageControl!)
        }
    }
    
    // MARK:- UIPageViewControllerDataSource Methods
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        let pageContent: LookUpPageContentViewController = viewController as! LookUpPageContentViewController
        
        var index = pageContent.pageIndex
        
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        
        index -= 1;
        return getViewControllerAtIndex(index)
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return arrPageTitle.count
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        let pageContent: LookUpPageContentViewController = viewController as! LookUpPageContentViewController
        
        var index = pageContent.pageIndex
        
        if (index == NSNotFound)
        {
            return nil;
        }
        
        index += 1;
        if (index == arrPageTitle.count)
        {
            return nil;
        }
        return getViewControllerAtIndex(index)
    }
    
    // MARK:- Other Methods
    func getViewControllerAtIndex(index: NSInteger) -> LookUpPageContentViewController
    {
        // Create a new view controller and pass suitable data.
        let pageContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("LookUpPageContentViewController") as! LookUpPageContentViewController
        
        pageContentViewController.strTitle = "\(arrPageTitle[index])"
        pageContentViewController.strPhotoName = "\(arrPagePhoto[index])"
         pageContentViewController.strMainTitle = "\(arrPageMainTitle[index])"
        pageContentViewController.pageIndex = index
        
        pageContentViewController.view.backgroundColor = UIColor.dondeBeigeColor()
        
        return pageContentViewController
    }
    
}
