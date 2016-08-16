//
//  WebP.swift
//  WebPOC
//
//  Created by DianQK on 8/16/16.
//  Copyright © 2016 T. All rights reserved.
//

import UIKit
import WebPOC

public struct WebP<Image> {
    let image: Image
    init(_ image: Image) {
        self.image = image
    }
}

extension NSObjectProtocol {
    public var wp: WebP<Self> {
        return WebP(self)
    }
}

extension WebP where Image: NSData {
    var image: UIImage? {
        return UIImage.webp_imageWithData(self.image)
    }
}
