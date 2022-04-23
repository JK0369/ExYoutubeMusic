//
//  MusicListCell.swift
//  ExYoutubeMusic
//
//  Created by 김종권 on 2022/04/23.
//

import UIKit
import SnapKit
import Then

final class MusicCell: UICollectionViewCell {
  private let imageView = UIImageView()
  private let titleLabel = UILabel().then {
    $0.textColor = .white
    $0.numberOfLines = 1
    $0.font = .systemFont(ofSize: 18, weight: .bold)
  }
  private let descLabel = UILabel().then {
    $0.textColor = .lightGray
    $0.numberOfLines = 1
    $0.font = .systemFont(ofSize: 16)
  }
  private let stackView = UIStackView().then {
    $0.axis = .vertical
    $0.spacing = 2
  }
  private let optionButton = UIButton().then {
    $0.setBackgroundImage(UIImage(named: "right-arrow"), for: .normal)
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .black
    
    self.contentView.addSubview(self.imageView)
    self.contentView.addSubview(self.stackView)
    self.stackView.addArrangedSubview(self.titleLabel)
    self.stackView.addArrangedSubview(self.descLabel)
    self.contentView.addSubview(self.optionButton)
    
    self.imageView.snp.makeConstraints {
      $0.top.left.equalToSuperview()
      $0.size.equalTo(40)
      $0.bottom.equalToSuperview().priority(999)
    }
    self.stackView.snp.makeConstraints {
      $0.left.equalTo(self.imageView.snp.right).offset(4)
      $0.top.bottom.equalTo(self.imageView)
      $0.right.equalTo(self.optionButton.snp.left)
    }
    self.optionButton.snp.makeConstraints {
      $0.size.equalTo(20)
      $0.centerY.equalTo(self.imageView)
      $0.right.equalToSuperview().inset(30)
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
