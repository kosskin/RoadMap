//
//  SpaceshipsInfoView.swift
//  KoskinTestToRoadMap
//
//  Created by Валентин Коскин on 28.08.2022.
//

import UIKit

class SpaceshipsInfoView: UIView {

    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        let contentWidth = scrollView.bounds.width
        let contentHeight = scrollView.bounds.height * 2
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        return scrollView
    }()
    
    private let nameRocketLabel: UILabel = {
        let label = UILabel(frame: CGRect.init(x: 32, y: 48, width: 146, height: 32))
        label.text = "Falcon Heavy"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    let rocketInfoCollection: UICollectionView = {
        let layout = UICollectionViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    var rocketInfoArray: [PropertyClass] = {
        var array = [PropertyClass]()
        var property = PropertyClass(name: "Высота, ft", value: "226.6")
        var property2 = PropertyClass(name: "Диаметр, ft", value: "39.9")
        var property3 = PropertyClass(name: "Масса, lb", value: "3,125,735")
        var property4 = PropertyClass(name: "Нагрузка, lb", value: "1424123")
        
        return [property, property2, property3, property4]
    }()
    //Куча лэйблов вместо таблицы
    private let firstGoLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 248, width: 176, height: 24))
        label.text = "Первый запуск"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let dateFirstGoLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 233, y: 248, width: 110, height: 24))
        label.text = "1 Января 2018"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let countryLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 288, width: 176, height: 24))
        label.text = "Страна"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let nameCountryLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 306, y: 288, width: 40, height: 24))
        label.text = "США"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 328, width: 176, height: 24))
        label.text = "Стоимость запуска"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let sumPriceLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 285, y: 328, width: 64, height: 24))
        label.text = "90$ млн"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let firstStage: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 392, width: 311, height: 24))
        label.text = "ПЕРВАЯ СТУПЕНЬ"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let enginesLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 432, width: 186, height: 24))
        label.text = "Количество двигателей"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountEnginesLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 432, width: 80, height: 24))
        label.text = "27"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let gasLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 472, width: 176, height: 24))
        label.text = "Количество топлива"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountGasLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 472, width: 80, height: 24))
        label.text = "308,6"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountGasLabel2: UILabel = {
        let label = UILabel(frame: CGRect(x: 315, y: 472, width: 28, height: 24))
        label.text = "ton"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let timeToFire: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 512, width: 176, height: 24))
        label.text = "Время сгорания"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountTimeToFire: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 512, width: 80, height: 24))
        label.text = "593"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountTimeToFire2: UILabel = {
        let label = UILabel(frame: CGRect(x: 315, y: 512, width: 28, height: 24))
        label.text = "sec"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let secondStage: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 576, width: 311, height: 24))
        label.text = "ВТОРАЯ СТУПЕНЬ"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let enginesSecondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 616, width: 186, height: 24))
        label.text = "Количество двигателей"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountEnginesSecondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 616, width: 80, height: 24))
        label.text = "1"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let gasSecondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 656, width: 176, height: 24))
        label.text = "Количество топлива"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountGasSecondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 656, width: 80, height: 24))
        label.text = "243,2"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountGasSecondLabel2: UILabel = {
        let label = UILabel(frame: CGRect(x: 315, y: 656, width: 28, height: 24))
        label.text = "ton"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let timeToFireSecond: UILabel = {
        let label = UILabel(frame: CGRect(x: 32, y: 696, width: 176, height: 24))
        label.text = "Время сгорания"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountTimeToFireSecond: UILabel = {
        let label = UILabel(frame: CGRect(x: 227, y: 696, width: 80, height: 24))
        label.text = "593"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let amountTimeToFire2Second: UILabel = {
        let label = UILabel(frame: CGRect(x: 315, y: 696, width: 28, height: 24))
        label.text = "sec"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        self.addSubview(scrollView)
        self.frame.size = CGSize(width: self.frame.width, height: self.frame.height * 2)
        self.addSubview(nameRocketLabel)
        self.addSubview(rocketInfoCollection)
        rocketInfoCollection.register(UINib(nibName: "rocketInfoCell", bundle: nil), forCellWithReuseIdentifier: "rocketInfoCell")
        rocketInfoCollection.delegate = self
        rocketInfoCollection.dataSource = self
        self.addSubview(firstGoLabel)
        self.addSubview(dateFirstGoLabel)
        self.addSubview(countryLabel)
        self.addSubview(nameCountryLabel)
        self.addSubview(priceLabel)
        self.addSubview(sumPriceLabel)
        self.addSubview(firstStage)
        self.addSubview(enginesLabel)
        self.addSubview(amountEnginesLabel)
        self.addSubview(gasLabel)
        self.addSubview(amountGasLabel)
        self.addSubview(amountGasLabel2)
        self.addSubview(timeToFire)
        self.addSubview(amountTimeToFire)
        self.addSubview(amountTimeToFire2)
        self.addSubview(secondStage)
        self.addSubview(enginesSecondLabel)
        self.addSubview(amountEnginesSecondLabel)
        self.addSubview(gasSecondLabel)
        self.addSubview(amountGasSecondLabel)
        self.addSubview(amountGasSecondLabel2)
        self.addSubview(timeToFireSecond)
        self.addSubview(amountTimeToFireSecond)
        self.addSubview(amountTimeToFire2Second)
        //self.addSubview(allStartButton)
        
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraint() {
        rocketInfoCollection.heightAnchor.constraint(equalToConstant: 96).isActive = true
        rocketInfoCollection.widthAnchor.constraint(equalToConstant: 96).isActive = true
        rocketInfoCollection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        rocketInfoCollection.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        rocketInfoCollection.topAnchor.constraint(equalTo: self.topAnchor, constant: 112).isActive = true
        
    }
}



extension SpaceshipsInfoView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rocketInfoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "rocketInfoCell", for: indexPath) as? RocketInfoCell {
            itemCell.property = rocketInfoArray[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
}
