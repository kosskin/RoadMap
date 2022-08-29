//
//  LaunchesVC.swift
//  KoskinTestToRoadMap
//
//  Created by Валентин Коскин on 29.08.2022.
//

import UIKit

class LaunchesVC: UIViewController {

    private let falconSatLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 128, width: 311, height: 100))
        label.text = "FalconSat"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        view.addSubview(falconSatLabel)
    }
}
