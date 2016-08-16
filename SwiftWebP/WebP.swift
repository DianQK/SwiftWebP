//
//  WebP.swift
//  WebPOC
//
//  Created by DianQK on 8/16/16.
//  Copyright © 2016 T. All rights reserved.
//

import UIKit
import WebPOC

public struct WebP {
    private let data: Data
    init(_ data: Data) {
        self.data = data
    }

    public var image: UIImage? {
        return UIImage.webp_image(with: data)
    }

    static public var praseImage: (Data) -> UIImage? = UIImage.webp_image
}

extension Data {
    public var wp: WebP {
        return WebP(self)
    }
}
