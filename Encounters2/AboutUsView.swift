//
//  AboutUsView.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/5/24.
//

import SwiftUI

struct AboutUsView: View {
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
                FrameworkTitleView(framework: MockData.aboutUsFramework)
                Text("At Encounters Counseling and Recovery, we are dedicated to providing compassionate and effective faith-based counseling and intensive outpatient programs. Our mission is to support adults, couples, and families facing challenges related to trauma and addiction. We believe in the power of healing and recovery through a holistic approach that integrates faith and therapy. \n\nWe are committed to walking alongside you on your path to recovery and healing. Our caring team is here to help you find hope and restoration in every aspect of your life.")
                
                Spacer()
                
                Button {
              
                } label: {
                    Link(destination: URL(string: "https://clientportal.us.powerdiary.com/clientportal/encounterscounselingandrecovery")!) {
                        Text("Book an Appointment")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            
            
        }
    }
}

#Preview {
    AboutUsView()
}
