//
//  OnboardingView.swift
//  Restart
//
//  Created by Henrique Albuquerque on 28/06/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - Main Content
    
    var body: some View {
        ZStack {
            Color.colorBlue.ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                // MARK: - Header
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: Header
                
                // MARK: - Center
                
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: Center
                
                Spacer()
                
                // MARK: - Footer
                
                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)
                    
                    HStack {
                        Capsule()
                            .fill(.colorRed)
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(.colorRed)
                            
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }
                        
                        Spacer()
                    } //: HStack
                    
                } //: Footer
                .frame(height: 80, alignment: .center)
                .padding()
                
            } //: VStack
        } //: ZStack

    }
}

// MARK: - Preview

#Preview {
    OnboardingView()
}
