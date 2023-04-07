//
//  Cell.swift
//  TestTask
//
//  Created by Sergio on 25.03.23.
//

import UIKit

final class CollectionViewCategories: UICollectionViewCell {

    // MARK: - Properties

    static let identifier = "collectionViewCategories"

    // MARK: - UIElements

    let imageCircle: UIImageView = {
        let image = UIImage(named: "circle")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let imageInImageCircle: UIImageView = {
        let image = UIImage(named: "phone")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let categoriesLabel: UILabel = {
        let label = UILabel()
        label.text = "Phones"
        label.textColor = .gray
        label.font = .montserratLight9()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - LifeCycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        setupHierarchy()
        setLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(imageCircle)
        imageCircle.addSubview(imageInImageCircle)
        addSubview(categoriesLabel)
    }

    private func setLayout() {
        NSLayoutConstraint.activate([
            imageCircle.topAnchor.constraint(equalTo: topAnchor),
            imageCircle.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageCircle.widthAnchor.constraint(equalToConstant: 42),
            imageCircle.heightAnchor.constraint(equalToConstant: 42),

            imageInImageCircle.centerXAnchor.constraint(equalTo: imageCircle.centerXAnchor),
            imageInImageCircle.centerYAnchor.constraint(equalTo: imageCircle.centerYAnchor),

            categoriesLabel.topAnchor.constraint(equalTo: imageCircle.bottomAnchor, constant: 12),
            categoriesLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
