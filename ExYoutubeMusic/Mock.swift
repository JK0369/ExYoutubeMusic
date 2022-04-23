//
//  Mock.swift
//  ExYoutubeMusic
//
//  Created by 김종권 on 2022/04/23.
//

import UIKit

enum Mock {
  static let dataSource = [
    MusicSection.concept(
      [
        .init(image: UIColor.random.image(), title: "concept아이템(title1)", desc: "concept아이템(desc1)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title2)", desc: "concept아이템(desc2)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title3)", desc: "concept아이템(desc3)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title4)", desc: "concept아이템(desc4)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title5)", desc: "concept아이템(desc5)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title6)", desc: "concept아이템(desc6)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title7)", desc: "concept아이템(desc7)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title8)", desc: "concept아이템(desc8)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title9)", desc: "concept아이템(desc9)"),
        .init(image: UIColor.random.image(), title: "concept아이템(title10)", desc: "concept아이템(desc10)"),
      ]
    ),
    .music(
      [
        .init(image: UIColor.random.image(), title: "music아이템(title1)", desc: "music아이템(desc1)"),
        .init(image: UIColor.random.image(), title: "music아이템(title2)", desc: "music아이템(desc2)"),
        .init(image: UIColor.random.image(), title: "music아이템(title3)", desc: "music아이템(desc3)"),
        .init(image: UIColor.random.image(), title: "music아이템(title4)", desc: "music아이템(desc4)"),
        .init(image: UIColor.random.image(), title: "music아이템(title5)", desc: "music아이템(desc5)"),
        .init(image: UIColor.random.image(), title: "music아이템(title6)", desc: "music아이템(desc6)"),
        .init(image: UIColor.random.image(), title: "music아이템(title7)", desc: "music아이템(desc7)"),
        .init(image: UIColor.random.image(), title: "music아이템(title8)", desc: "music아이템(desc8)"),
        .init(image: UIColor.random.image(), title: "music아이템(title9)", desc: "music아이템(desc9)"),
        .init(image: UIColor.random.image(), title: "music아이템(title10)", desc: "music아이템(desc10)"),
      ]
    )
  ]
}

extension UIColor {
  static var random: UIColor {
    UIColor(
      red: CGFloat(drand48()),
      green: CGFloat(drand48()),
      blue: CGFloat(drand48()),
      alpha: 1.0
    )
  }
  func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
    return UIGraphicsImageRenderer(size: size).image { rendererContext in
      self.setFill()
      rendererContext.fill(CGRect(origin: .zero, size: size))
    }
  }
}
