//
//  ConceptCell.swift
//  ExYoutubeMusic
//
//  Created by 김종권 on 2022/04/23.
//

import UIKit
import SnapKit
import Then

final class ConceptCell: UICollectionViewCell {
  private let imageView = UIImageView()
  private let titleLabel = UILabel().then {
    $0.textColor = .white
    $0.numberOfLines = 0
    $0.font = .systemFont(ofSize: 18, weight: .bold)
  }
  private let descLabel = UILabel().then {
    $0.textColor = .lightGray
    $0.numberOfLines = 0
    $0.font = .systemFont(ofSize: 16)
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.backgroundColor = .black
    
    self.contentView.addSubview(self.imageView)
    self.contentView.addSubview(self.titleLabel)
    self.contentView.addSubview(self.descLabel)
    
    self.imageView.snp.makeConstraints {
      $0.left.top.right.equalToSuperview()
      $0.height.equalToSuperview().multipliedBy(2.0/3.0)
    }
    self.titleLabel.snp.makeConstraints {
      $0.top.equalTo(self.imageView.snp.bottom).offset(4)
      $0.left.right.equalToSuperview()
    }
    self.descLabel.snp.makeConstraints {
      $0.top.equalTo(self.titleLabel.snp.bottom).offset(2)
      $0.left.right.bottom.equalToSuperview()
    }
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    self.prepare(image: nil, titleText: nil, descText: nil)
  }
  
  func prepare(image: UIImage?, titleText: String?, descText: String?) {
    self.imageView.image = image
    self.titleLabel.text = titleText
    self.descLabel.text = descText
  }
}
