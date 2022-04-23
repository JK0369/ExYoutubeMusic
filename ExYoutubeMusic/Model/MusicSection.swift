//
//  MusicSection.swift
//  ExYoutubeMusic
//
//  Created by 김종권 on 2022/04/23.
//

import UIKit
import SnapKit
import Then

enum MusicSection {
  struct Concept {
    let image: UIImage
    let title: String
    let desc: String
  }
  struct Music {
    let image: UIImage
    let title: String
    let desc: String
  }
  
  case concept([Concept])
  case music([Music])
}
