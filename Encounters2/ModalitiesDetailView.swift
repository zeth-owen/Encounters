//
//  ModalitiesDetailView.swift
//  Encounters2
//
//  Created by Zeth Thomas on 11/5/24.
//

import SwiftUI

struct ModalitiesDetailView: View {
    
    let modal: Modality
    
    var body: some View {
            ModalityTitleView(modal: modal)
    }
        
}

#Preview {
    ModalitiesDetailView(modal: PreviewData.sampleModality)
}

struct ModalityTitleView: View {
    
    let modal: Modality
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.white]),
                startPoint: .bottom,
                endPoint: .top
                )
            .ignoresSafeArea()
            VStack {
                Image(modal.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                    .padding()
                Text(modal.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                    .padding(.bottom, 10)
                Text(modal.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Common Applications:")
                    .bold()
                    .underline()
                    .padding(.bottom, 10)
                Text(modal.commonApplications.joined(separator: ", "))
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
            .accentColor(Color(.label))
            .padding()
        }
    }
}
