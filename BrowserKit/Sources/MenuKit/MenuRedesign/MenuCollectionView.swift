// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import UIKit
import Common

final class MenuCollectionView: UIView,
                                UICollectionViewDelegate,
                                UICollectionViewDataSource,
                                ThemeApplicable {
    private struct UX {
        static let collectionViewHorizontalMargin: CGFloat = 10
        static let collectionViewVerticalMargin: CGFloat = 12
        static let cellHeight: CGFloat = 79
        static let cellWidth: CGFloat = 72
    }

    private var height: CGFloat {
        UX.cellHeight + UX.collectionViewVerticalMargin + UX.collectionViewHorizontalMargin
    }

    private var collectionView: UICollectionView
    private var menuData: [MenuSection]
    private var theme: Theme?

    override init(frame: CGRect) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: UX.cellWidth, height: UX.cellHeight)
        layout.sectionInset = UIEdgeInsets(
            top: UX.collectionViewVerticalMargin,
            left: UX.collectionViewHorizontalMargin,
            bottom: UX.collectionViewVerticalMargin,
            right: UX.collectionViewVerticalMargin)

        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false

        menuData = []
        super.init(frame: .zero)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        setupCollectionView()
        setupUI()
    }

    private func setupUI() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: height)
        ])
    }

    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(
            MenuSquareCell.self,
            forCellWithReuseIdentifier: MenuSquareCell.cellIdentifier
        )
    }

    func setupAccessibilityIdentifiers(menuA11yId: String, menuA11yLabel: String) {
        collectionView.accessibilityIdentifier = menuA11yId
        collectionView.accessibilityLabel = menuA11yLabel
    }

    // MARK: - UICollectionView Methods
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        guard let section = menuData.first(where: { $0.isTopTabsSection }) else { return 0 }
        return section.options.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MenuSquareCell.cellIdentifier,
            for: indexPath
        ) as? MenuSquareCell else {
            return UICollectionViewCell()
        }

        guard let section = menuData.first(where: { $0.isTopTabsSection }) else { return UICollectionViewCell() }
        cell.configureCellWith(model: section.options[indexPath.row])
        if let theme { cell.applyTheme(theme: theme) }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: false)
        guard let section = menuData.first(where: { $0.isTopTabsSection }),
              let action = section.options[indexPath.row].action else { return }
        action()
    }

    func reloadCollectionView(with data: [MenuSection]) {
        menuData = data
        collectionView.reloadData()
    }

    // MARK: - Theme Applicable
    func applyTheme(theme: Theme) {
        self.theme = theme
        backgroundColor = .clear
        collectionView.backgroundColor = .clear
    }
}
