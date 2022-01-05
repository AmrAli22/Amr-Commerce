//
//  CustomCorners.swift
//  Amr-Commerce
//
//  Created by Amr Ali on 05/01/2022.
//

import SwiftUI

struct CustomCorners : Shape {
    
    var coners : UIRectCorner
    var radius : CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: coners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
    
}
