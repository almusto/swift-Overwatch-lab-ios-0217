//
//  Hero.swift
//  Overwatch
//
//  Created by Alessandro Musto on 2/22/17.
//  Copyright © 2017 Gamesmith, LLC. All rights reserved.
//

import UIKit

struct Hero : OverwatchHero {
  var image:UIImage {
    return produceButtonImage()
  }
  var profileImage: UIImage {
    return produceProfileImage()
  }

  var name: HeroName
  var hitPoints: Health = 0
  var heroType: HeroType {
    return produceHeroType()
  }

  init(name: HeroName) {
    self.name = name
    self.hitPoints = produceInitialHitPoints()
  }

  func produceProfileImage() -> UIImage {
    switch name {
    default:
      return UIImage(named: "\(name)Profile")!
    }
  }

    func produceButtonImage() -> UIImage {
      switch name {
      default:
        return UIImage(named: "\(name)")!
      }
    }

}
