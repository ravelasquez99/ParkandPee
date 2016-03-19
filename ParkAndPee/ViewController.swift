//
//  ViewController.swift
//  ParkAndPee
//
//  Created by Richard Velazquez on 3/18/16.
//  Copyright © 2016 Richard Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    let peopleOptions = ["Restroom", "Parking", "Drivethr"]
    
    override func viewDidLoad() {
        collectionView.dataSource = self;
        collectionView.delegate = self;
        
        
        super.viewDidLoad()

    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let collectionCell:CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        
        collectionCell.cellLabel.text = peopleOptions[indexPath.row]
        
        return collectionCell
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return peopleOptions.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        //do stuff when you select
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

