//
//  ViewController.swift
//  ProgrammaticCollection
//
//  Created by New Account on 10/13/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource{
    
    
    var label : UILabel = UILabel()
    var itemsToLoad : [String] =  ["Marmalade",
                                   "Ham",
                                   "Egg",
                                   "Bread",
                                   "Burrito",
                                   "Hot chocolate",
                                   "Bacon",
                                   "Donut",
                                   "Porridge",
                                   "Muffin",
                                   "Waffle",
                                   "Tomato",
                                   "Croissant",
                                   "Pancake",
                                   "Toast",
                                   "Breakfast sandwich",
                                   "Yogurt",
                                   "Cheese",
                                   "Milk",
                                   "Sausage",
                                   "Orange juice",
                                   "Breakfast cereal",
                                   "Coffee"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
   
        let flowLayout = UICollectionViewFlowLayout()
            flowLayout.itemSize = CGSize(width: 100, height: 100 )
        let myCollectionView = UICollectionView(frame:view.frame, collectionViewLayout: flowLayout)
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionView")
        myCollectionView.dataSource = self
        self.view.addSubview(myCollectionView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsToLoad.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionView", for: indexPath) as UICollectionViewCell
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 50))
        title.text = self.itemsToLoad[indexPath.row]
        title.font = UIFont(name: "AvenirNext-Bold", size: 15)
        title.textAlignment = .center
        title.textColor = .white
        cell.backgroundColor = self.randColor()
        cell.contentView.addSubview(title)
        return cell
    }
    
    func randColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        return UIColor(red:red, green: green, blue : blue, alpha: 0.8)
    }
    

}

