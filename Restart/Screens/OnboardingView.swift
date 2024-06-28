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
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        } //: VStack

    }
}

// MARK: - Preview

#Preview {
    OnboardingView()
}
