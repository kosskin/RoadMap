//
//  MainScreenVC.swift
//  KoskinTestToRoadMap
//
//  Created by Валентин Коскин on 28.08.2022.
//

import UIKit

class MainScreenVC: UIViewController {
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.backgroundColor = .black
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    
    private let imageSpaceX: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "spaceX1")
        return imageView
    }()
    
    
    private let spaceshipsInfoView: SpaceshipsInfoView = {
        let view = SpaceshipsInfoView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 50
        return view
    }()
    
    let allStartButton: UIButton = {
        //закомментировано правильное расположение кнопки перехода на другой экран
       //let button = UIButton(frame: CGRect(x: 760, y: 32, width: 311, height: 56))
       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 311, height: 56))
       button.setTitle("Посмотреть запуски", for: .normal)
       button.setTitleColor(.white, for: .normal)
       button.backgroundColor = .lightGray
       button.layer.cornerRadius = 10
       return button
   }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setConstrains()
    }
    
    
    
    func configUI() {
        self.view.addSubview(imageSpaceX)
        spaceshipsInfoView.addSubview(allStartButton)
        self.view.addSubview(spaceshipsInfoView)
        self.view.addSubview(pageControl)
        allStartButton.addTarget(self, action: #selector(nextScreen), for: .touchUpInside)
    }
    
    
    func setConstrains() {
        pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        pageControl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        pageControl.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        spaceshipsInfoView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7).isActive = true
        spaceshipsInfoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        spaceshipsInfoView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        spaceshipsInfoView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
    }
    
    @objc func nextScreen(){
        let nextScreen = LaunchesVC()
        self.present(nextScreen, animated: true, completion: nil)
    }
}

