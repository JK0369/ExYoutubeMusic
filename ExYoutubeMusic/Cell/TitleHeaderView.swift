//
//  TitleHeaderView.swift
//  ExYoutubeMusic
//
//  Created by 김종권 on 2022/04/22.
//

import UIKit
import SnapKit
import Then

final class TitleHeaderView: UICollectionReusableView {
  private let horizontalStackView = UIStackView().then {
    $0.axis = .horizontal
    $0.spacing = 6
    $0.setContentHuggingPriority(.init(rawValue: 252), for: .horizontal)
    $0.setContentCompressionResistancePriority(.init(rawValue: 751), for: .horizontal)
  }
  private let imageView = UIImageView().then {
    $0.image = UIImage(named: "thumbnail")
    $0.layer.cornerRadius = 20
    $0.clipsToBounds = true
  }
  private let verticalStackView = UIStackView().then {
    $0.axis = .vertical
    $0.spacing = 3
  }
  private let descLabel = UILabel().then {
    $0.textColor = .lightGray
    $0.numberOfLines = 1
    $0.font = .systemFont(ofSize: 16)
  }
  private let titleLabel = UILabel().then {
    $0.textColor = .white
    $0.numberOfLines = 1
    $0.font = .systemFont(ofSize: 18, weight: .bold)
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.backgroundColor = .black
    
    self.addSubview(self.horizontalStackView)
    self.horizontalStackView.addArrangedSubview(imageView)
    self.horizontalStackView.addArrangedSubview(self.verticalStackView)
    self.verticalStackView.addArrangedSubview(self.descLabel)
    self.verticalStackView.addArrangedSubview(self.titleLabel)
    
    self.horizontalStackView.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }
    self.imageView.snp.makeConstraints {
      $0.size.equalTo(40)
    }
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    self.prepare(image: nil, descText: nil, titleText: nil)
  }
  
  func prepare(image: UIImage?, descText: String?, titleText: String?) {
    self.imageView.image = image
    self.descLabel.text = descText
    self.titleLabel.text = titleText
  }
}
