//
//  ContactView.swift
//  ContactView
//
//  Created by Logan Koshenka on 9/10/21.
//

import SwiftUI
import UIKit
import Foundation
import MapKit

struct ContactView: View {
    @State var contact: Contact
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.983334, longitude: -82.983330), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color.blue.opacity(0.33), Color.blue.opacity(0.1), Color.mint.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HeaderView(contact: $contact)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Feeling \(contact.mood) \(day) at \(contact.updateTimestamp)".uppercased())
                                .font(.caption)
                            
                            Text(contact.awayMessage)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundStyle(
                                    .linearGradient(colors: [.red, .purple], startPoint: .top, endPoint: .bottomTrailing)
                                )
                        }
                        .padding()
                        .background(
                            .regularMaterial,
                            in: RoundedRectangle(cornerRadius: 20)
                        )
                        .padding()
                        
                        HStack {
                            VStack(alignment: .center) {
                                Text("\(contact.rank)")
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                Text("rank".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                            Spacer()
                            VStack(alignment: .center) {
                                Text(contact.birthday)
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                Text("birthday".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                            Spacer()
                            VStack(alignment: .center) {
                                Text(contact.age)
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                Text("years old".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                        }
                        .padding(16)
                        .frame(width: 380)
                        .foregroundStyle(
                            .linearGradient(colors: [.cyan, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Communication".uppercased())
                                .font(.headline)
                                .padding()
                            HStack(alignment: .top) {
                                Text(contact.mostRecentText)
                                    .font(.caption)
                                    .frame(width: 260, height: 31)
                                Spacer()
                                Text("yesterday")
                                    .font(.caption)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                            
                            HStack {
                                VStack(alignment: .center) {
                                    Text("4.3")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                    
                                    Text("avg texts / day".uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                                Spacer()
                                VStack(alignment: .center) {
                                    Text("+16%")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                        .foregroundColor(.green)
                                    
                                    Text("this month".uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                                Spacer()
                                VStack(alignment: .center) {
                                    Text("12 hrs")
                                        .font(.system(size: 24, weight: .bold, design: .rounded))
                                    
                                    Text("last spoke".uppercased())
                                        .font(.system(size: 12, weight: .regular, design: .rounded))
                                }
                            }
                            .padding()
                        }
                        .frame(width: 380)
                        .foregroundColor(Color.black.opacity(0.8))
                        .background(.regularMaterial, in:
                                        RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding()
                        
                        Map(coordinateRegion: $region, annotationItems: annotations) {
                            MapPin(coordinate: $0.coordinate)
                        }
                        .frame(width: 380, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    }
                }
                .offset(y: 100)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

let annotations = [
        City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 39.983334, longitude: -82.983330))
]

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

var day: String {
    let days = ["3 days ago", "yesterday", "today"]
    return days.randomElement() ?? "yesterday"
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: contacts[0])
    }
}

struct HeaderView: View {
    @Binding var contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(
                    Circle()
                )
            
            VStack(alignment: .leading, spacing: 16) {
                
                Text("\(contact.name)")
                    .font(.system(size: 28, weight: .medium, design: .rounded))
                
                VStack(alignment: .leading, spacing: 6) {
                    Label("\(contact.phoneNumber)", systemImage: "phone.fill")
                        .font(.system(size: 14, weight: .light, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.5))
                    Label("\(contact.email)", systemImage: "envelope.fill")
                        .font(.system(size: 14, weight: .light, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.5))
                    Label("\(contact.address)", systemImage: "mappin.and.ellipse")
                        .font(.system(size: 14, weight: .light, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.5))
                }
            }
        }
    }
}
