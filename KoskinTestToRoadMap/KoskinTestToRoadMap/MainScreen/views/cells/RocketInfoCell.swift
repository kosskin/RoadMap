//
//  RocketInfoCell.swift
//  KoskinTestToRoadMap
//
//  Created by Валентин Коскин on 29.08.2022.
//

import UIKit

class RocketInfoCell: UICollectionViewCell {
    var label1: UILabel = {
        var label = UILabel()
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var label2: UILabel = {
        var label = UILabel()
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var property: PropertyClass? {
        didSet {
            label1.text = property?.name
            label2.text = property?.value
        }
    }
    
    func setupCell() {
        backgroundColor = .darkGray
        layer.cornerRadius = 30
        contentView.addSubview(label1)
        contentView.addSubview(label2)
    }
    func setConstraints() {
        label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 28).isActive = true
        label1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 44).isActive = true
        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
        label1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 8).isActive = true
        
        label2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 52).isActive = true
        label2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 24).isActive = true
        label2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
        label2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 8).isActive = true
    }
}
