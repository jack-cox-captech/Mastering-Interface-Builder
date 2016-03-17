//
//  ViewController.swift
//  mastering Interface builder
//
//  Created by Jack Cox on 7/12/14.
//  Copyright (c) 2014 CapTech Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
                            
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 14
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("forecastCell", forIndexPath: indexPath) as! WeatherCellCollectionViewCell
        
        cell.backgroundColor = UIColor.yellowColor()
        cell.label.text = "Today"
        // Configure the cell
        
        return cell
    }


}

