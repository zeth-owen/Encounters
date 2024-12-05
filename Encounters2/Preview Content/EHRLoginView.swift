//
//  EHRLogin.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/5/24.
//

import SwiftUI

struct EHRLoginView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.white]),
                startPoint: .bottom,
                endPoint: .top
                )
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("medical-record")
                    .resizable()
                    .frame(width: 90, height: 90)
                
                Text("EHR Login")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    .padding()
                
                Text("""
                    1. **Visit the Portal:**
                    -   Click button to navigate to the EHR Login Portal.
                    
                    2. **Enter Your Credentials:**
                    - Enter your username and password provided by Encounters Counseling and Recovery. If you do not have an account, please contact us for access.
                    
                    3. **Access Your Records:**
                    - Once logged in, you can view, update, or request your medical records. You may also be able to communicate with your healthcare provider directly through the portal.
                    
                    4. **Security:**
                    - Ensure you are on the secure, official portal link to protect your personal health information.
                """)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
                
                Link("Go to EHR Portal", destination: URL(string: "https://clientportal.us.powerdiary.com/clientportal/encounterscounselingandrecovery")!)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    EHRLoginView()
}

