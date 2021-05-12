//
//  RepoListCell.swift
//  GitHubClient
//
//  Created by branch10480 on 2021/05/12.
//

import UIKit

class RepoListCell: UICollectionViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var stargazersCountLabel: UILabel!
    @IBOutlet weak var chevronImageView: UIImageView!
    @IBOutlet weak var starImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        chevronImageView.image = UIImage(systemName: "chevron.right")?
            .withRenderingMode(.alwaysTemplate)
        chevronImageView.tintColor = .lightGray
        starImageView.image = UIImage(systemName: "star.fill")?
            .withRenderingMode(.alwaysTemplate)
        starImageView.tintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
    
    func configure(_ data: GitHubRepoViewData) {
        fullNameLabel.text = data.fullName
        stargazersCountLabel.text = data.stargazersCount.description
    }

}
