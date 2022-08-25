//
//  MainScreen.swift
//  KoskinRoadMap
//
//  Created by Валентин Коскин on 25.08.2022.
//

import UIKit

class ViewOnMainScreen: UIViewController {
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: "PropertyCell", bundle: nil), forCellWithReuseIdentifier: "PropertyCell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        setConstraint()
        collectionView.dataSource = self
        collectionView.backgroundColor = .gray
    }
    
    func setConstraint() {
        collectionView.heightAnchor.constraint(equalToConstant: 96).isActive = true
        collectionView.widthAnchor.constraint(equalToConstant: 96).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 112).isActive = true
    }

}



extension ViewOnMainScreen: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PropertyCell", for: indexPath) as! PropertyCell
        return cell
    }
}
