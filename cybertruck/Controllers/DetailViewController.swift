//
//  DetailViewController.swift
//  cybertruck
//
//  Created by shahzod on 3/16/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource{
    
    
    
    
    
    @IBOutlet weak var collectionVIew: UICollectionView!
    
    
    let numberOfColoumns : CGFloat = 2
    
    var items : Array<Item> = Array()
    
    
    

    override func viewDidLoad() {
     super.viewDidLoad()
        initView()
    }
    
    
    func initView() {
        addNavigationBar()
        collectionVIew.delegate = self
        collectionVIew.dataSource = self
        
        
        self.collectionVIew.register(UINib(nibName: "itemCollectionViewCell" , bundle: nil), forCellWithReuseIdentifier: "myCell" )
        
        if let flowLayout = collectionVIew?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize  : CGRect = UIScreen.main.bounds
            let cellWidth  = screenSize.width / numberOfColoumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth , height: cellWidth)
        }
        
        items.append(Item(title: "PDP", image: "animal" ))
         items.append(Item(title: "PDP", image: "animal" ))
         items.append(Item(title: "PDP", image: "animal" ))
         items.append(Item(title: "PDP", image: "animal" ))
         items.append(Item(title: "PDP", image: "animal" ))
        items.append(Item(title: "PDP", image: "animal" ))
        
    }
    
    
    func addNavigationBar() {
        let menu = UIImage(named: "label")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: menu , style: .plain , target: self , action: #selector(rightTapped))
    }
    
   
    @objc func rightTapped() {
        callSecondDetailViewController()
    }
    
    

    func callSecondDetailViewController() {
        let detail = secondDetailViewController(nibName: "secondDetailViewController", bundle: nil)
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
    //Mark - Collection View
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item  = items[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! itemCollectionViewCell
        
      
        
        
        cell.image.image = UIImage(named: item.image!)
        
        cell.label.text = item.title
        
        
        return cell
    }

}
