//
//  MissionStatementView.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/5/24.
//

import SwiftUI

struct MissionStatementView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.white]),
                startPoint: .bottom,
                endPoint: .top
                )
            .ignoresSafeArea()
            ScrollView {
                VStack {
                    Spacer(minLength: 130)
                    
                    FrameworkTitleView(framework: MockData.missionFramework)
                    
                    Text("Encounters Counseling and Recovery LLC was founded by Stephanie Partida, LCSW, LCADC, from a heart of service. Our intention is that everyone who walks through our doors will have an encounter, find peace, happiness, and fulfillment, and become whole again. We understand that we can do nothing outside of Jesus. As it is written, “Apart from me you can do nothing” (John 15:5). We invite you to join us on your life’s journey; you are not alone. We aim to meet you where you are and support you in obtaining victory in your life \n")
                        .padding()
                    
                    Text("*Statement of Faith:*")
                        .bold()
                        .padding(.top, 10)
                    
                    Text("Are you struggling with your faith? Do you feel like you don’t belong in church or anywhere? Encounters is a counseling agency for people who have been there—those in that deep, dark pit who cannot find their way out. We welcome your doubts and questions, and we don’t expect you to wear a fake smile. At Encounters, no one is perfect, and we always have room for more. We provide non-denominational Christian counseling with therapists specializing in both mental health and substance use disorders. Our services include state-certified domestic violence and anger management programs, as well as a Mental Health Intensive Outpatient Program. God does not have a single prescribed way to worship Him. While some traditional practices have developed over time, they are not necessarily the only or best way to connect with God. We seek new, meaningful ways to worship that are relevant today, which is where the Life Altering Skills come in.")
                        .padding()
                    
                
                    Text("*Salvation:*")
                        .bold()
                        .padding(.top, 10)
                    Text("A gift from God received through faith in Jesus Christ. When we trust in Jesus and confess our sins to Him, we are forgiven and made right with God. We guide all our clients toward an experience with Jesus where they will not be able to tell where they end and where the Holy Spirit begins. We were all created to have relationships; we did not get sick by ourselves, and we do not heal by ourselves. We heal in community.")
                        .padding()
                    
                    Text("We want everyone who comes to Encounters Counseling and Recovery to experience the faithful love and mercy of Jesus, but we will settle for an encounter with yourself. Here, you will learn what it means to be Forgiven: forgiveness and eternal life are available to all who accept God’s grace through Jesus Christ. It is not God who rejects us, but we who reject God.")
                        .padding()
                    
                    
                    Text("YOU ARE NOT ALONE!")
                        .bold()
                        .foregroundColor(.red)
                }
                .padding(.bottom, 100)
            }
            VStack {
             
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
    MissionStatementView()
}
