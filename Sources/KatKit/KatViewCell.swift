//
//  KatViewCell.swift
//  
//
//  Created by UmaKim on 2021/12/19.
//

import UIKit

public class KatViewCell: UICollectionViewCell {
    static let identifier = "HeaderViewCell"
    
    //MARK: - UI Objects
    private let categoryLabel: PaddingLabel = {
        let label = PaddingLabel()
        label.alpha = 1
        label.backgroundColor = .white
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.paddingLeft = 10
        label.paddingRight = 10
        label.paddingTop = 10
        label.paddingBottom = 10
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureCateogryLabel()
    }
    
    //MARK: - Configuration
    public func configure(with data: String) {
        categoryLabel.text = data
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Configure UI
extension KatViewCell {
    private func configure(){
        backgroundColor = .systemGray4
        layer.cornerRadius = 6
        layer.masksToBounds = true
    }
    
    private func configureCateogryLabel() {
        addSubview(categoryLabel)
        NSLayoutConstraint.activate([
            categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            categoryLabel.topAnchor.constraint(equalTo:topAnchor),
            categoryLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}
