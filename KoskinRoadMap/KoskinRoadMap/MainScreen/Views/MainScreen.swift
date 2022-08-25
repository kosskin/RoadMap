//
//  MainScreen.swift
//  KoskinRoadMap
//
//  Created by Валентин Коскин on 25.08.2022.
//

import UIKit

class MainScreen: UIViewController {

    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.backgroundColor = .black
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    
    private let viewOnMainView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 50
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setConstrains()
    }
    
    func configUI() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "spaceX1")
        self.view.addSubview(backgroundImage)
        //self.view.addSubview(pageControl)
        viewOnMainView.addSubview(pageControl)
        self.view.addSubview(viewOnMainView)
    }
    
    func setConstrains() {
        pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        pageControl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        pageControl.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        viewOnMainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.65).isActive = true
        viewOnMainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        viewOnMainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        viewOnMainView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
    }



}
