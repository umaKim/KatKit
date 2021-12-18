//
//  KatView.swift
//  KatView
//
//  Created by UmaKim on 2021/09/18.
//

import UIKit

public class KatView: UIView {

    //MARK: - UI Objects
    private lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        cv.dataSource = self
        cv.delegate = self
        cv.backgroundColor = .systemGray5
        cv.isScrollEnabled = true
        cv.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    //MARK: - Model
    public var categories: [String] = []
    
    //MARK: - Delegate
    public weak var delegate: KatViewDelegate?
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension KatView {
    public func reloadData() {
        collectionView.reloadData()
    }
}

//MARK: - CollectionView DataSource
extension KatView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KatViewCell.identifier, for: indexPath) as? KatViewCell else { return UICollectionViewCell() }
        cell.configure(with: categories[indexPath.row])
        return cell
    }
}

//MARK: - CollectionView Delegate
extension KatView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        delegate?.katViewCellDidTap(category: categories[indexPath.row], dudSelectItemAt: indexPath)
    }
}

//MARK: - UI Set up
extension KatView {
    private func configureCollectionView() {
        collectionView.register(KatViewCell.self, forCellWithReuseIdentifier: KatViewCell.identifier)
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
            layout.itemSize = UICollectionViewFlowLayout.automaticSize
        }
        
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
