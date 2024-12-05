import SwiftUI
import MapKit

struct OfficeLocationView: View {
    

    static let encounters = CLLocationCoordinate2D(latitude: 36.15980, longitude: -115.18062)
    

    @State private var region = MKCoordinateRegion(
        center: OfficeLocationView.encounters,
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    
    private var locations: [Location] {
        [Location(coordinate: OfficeLocationView.encounters)]
    }

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

                Image("map")
                    .resizable()
                    .frame(width: 90, height: 90)

                Text("Office Location:")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()

                Map(coordinateRegion: $region, annotationItems: locations) { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        VStack {
                            Image(systemName: "mappin.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                            Text("Encounters Counseling")
                                .font(.caption)
                                .foregroundColor(.black)
                        }
                    }
                }
                .frame(width: 350, height: 350)
                .cornerRadius(30)

                Text("2820 W Charleston Blvd Suite B- 21, Las Vegas, NV 89102")
                    .padding()
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)

                Spacer()
            }
        }
    }
}

struct Location: Identifiable {
    var id = UUID()
    var coordinate: CLLocationCoordinate2D
}

#Preview {
    OfficeLocationView()
}

