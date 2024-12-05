import SwiftUI

struct ModalitiesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.blue.opacity(0.2)]),
                    startPoint: .bottom,
                    endPoint: .top
                    )
                .ignoresSafeArea()
                
                
                List(PreviewData.modalities) { modality in
                    NavigationLink(destination: ModalitiesDetailView(modal: modality)) {
                        ModalityCellView(modal: modality)
                            .padding(.vertical, 5)
                    }
                }
                .background(Color.clear)
                .listStyle(PlainListStyle())
                
            }
            .accentColor(Color(.label))
            .navigationTitle("🍎 Modalities")
            
            
            
        }
    }
}

#Preview {
    ModalitiesView()
}

struct ModalityCellView: View {
    let modal: Modality
    
    var body: some View {
        HStack {
            // Modality image
            Image(modal.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(.leading)
            
            // Modality name
            Text(modal.name.removingAbbreviations())
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .lineLimit(1)
                .padding(.trailing)
        }
        .padding(.vertical, 5)
    }
}

extension String {
    
    func removingAbbreviations() -> String {
        let pattern = "\\s*\\(.*?\\)"
        return self.replacingOccurrences(of: pattern, with: "", options: .regularExpression)
    }
}

