//
//  Collectiondemo.swift
//  CollectionDemo
//
//  Created by appinventiv on 31/08/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class Collectiondemo: UIViewController {

    @IBOutlet var myCollectionView: UICollectionView!
    var arrary1 = ["sabhya", "ayushi", "sonali","khanna"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
extension Collectiondemo: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Customcell", for: indexPath) as? Customcell
            else {
                fatalError()
    }
    
        cell.namesLabel.text = arrary1[indexPath.row%4]
        return cell
}
}
class Customcell: UICollectionViewCell {
    
    
    @IBOutlet var namesLabel: UILabel!
    
    
}
