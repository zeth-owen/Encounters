//
//  ContactUsView.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/5/24.
//

import SwiftUI

struct ContactUsView: View {
    var body: some View {
        ZStack() {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.white]),
                startPoint: .bottom,
                endPoint: .top
                )
            
            .ignoresSafeArea()
            
            VStack() {
                Spacer()
                Image("Contacet Us-TO")
                    .resizable()
                    .frame(width: 90, height: 90)
                Text("Contact Us")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("Please contact us with any questions. We're here to help!")
                    .padding()
              Spacer()
                Link("📞 (702) 742-1500",
                     destination: URL(string: "tel:+17027421500")!)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.bottom, 70)
        }
  
    }
}

#Preview {
    ContactUsView()
}

