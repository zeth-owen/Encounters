//
//  FrameworkGridView.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/4/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
         GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.white]),
                    startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()
                    

   
            
                VStack {
                    Image("Encounters")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        
                   
                        
                    LazyVGrid(columns: columns) {
                        NavigationLink(destination: MissionStatementView()) {
                            FrameworkTitleView(framework: MockData.missionFramework)
                        }
                        NavigationLink(destination: ModalitiesView()) {
                            FrameworkTitleView(framework: MockData.modalitiesFramework)
                        }
                        
                        NavigationLink(destination: EHRLoginView()){
                            FrameworkTitleView(framework: MockData.loginFramework)
                        }
                        NavigationLink(destination: AboutUsView()) {
                                                    FrameworkTitleView(framework: MockData.aboutUsFramework)
                                                    }
                        NavigationLink(destination: OfficeLocationView()) {
                            FrameworkTitleView(framework: MockData.officeLocationFramework)
                        }
                        NavigationLink(destination: ContactUsView()) {
                            FrameworkTitleView(framework: MockData.contactUsFramework)
                        }
                    }
                    .accentColor(Color(.label))
                    
                    Spacer()
                   
                }
            }
         
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
