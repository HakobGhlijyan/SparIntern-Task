//
//  RoundedCornerShape.swift
//  SparIntern-Task
//
//  Created by Hakob Ghlijyan on 08.08.2024.
//

import SwiftUI

struct RoundedCornerShape: Shape {
    let radius: CGFloat
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
