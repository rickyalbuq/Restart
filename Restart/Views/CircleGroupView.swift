//
//  CircleGroupView.swift
//  Restart
//
//  Created by Henrique Albuquerque on 28/06/24.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - Properties
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZStack
    }
}

#Preview {
    ZStack {
        Color.colorBlue.ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
