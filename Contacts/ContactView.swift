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
            ZStack(alignment: .bottom) {
                BackgroundShapes()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HeaderView(contact: $contact)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Feeling \(contact.mood) \(day) at \(contact.updateTimestamp)".uppercased())
                                .font(.caption)
                            
                            Text(contact.awayMessage)
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundStyle(
                                    .linearGradient(colors: [Color(#colorLiteral(red: 0.050347208976745605, green: 0.14063718914985657, blue: 0.4166666567325592, alpha: 1)), .black.opacity(0.8)], startPoint: .top, endPoint: .bottomTrailing)
                                )
                        }
                        .padding()
                        .frame(width: 380)
                        .background(
                            .ultraThinMaterial,
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
                            .linearGradient(colors: [.blue, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
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
                        .background(.ultraThinMaterial, in:
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
                
                Menu("Contact".uppercased()) {
                    Button("Call", action: { })
                    Button("Email", action: { })
                    Button("Facetime", action: { })
                    Button("Text", action: { })
                }
                .font(.headline)
                .padding()
                .foregroundStyle(
                    .linearGradient(colors: [.cyan, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .frame(width: 120, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .offset(x: 130, y: -30)
                .shadow(color: Color.black.opacity(0.4), radius: 4, x: 2, y: 2)
                
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
                    .foregroundColor(Color.white.opacity(0.8))
                
                VStack(alignment: .leading, spacing: 6) {
                    Label("\(contact.phoneNumber)", systemImage: "phone.fill")
                        .foregroundColor(Color.white.opacity(0.8))
                    Label("\(contact.email)", systemImage: "envelope.fill")
                        .foregroundColor(Color.white.opacity(0.8))
                    Label("\(contact.address)", systemImage: "mappin.and.ellipse")
                        .foregroundColor(Color.white.opacity(0.8))
                }
                .font(.caption)
                .foregroundColor(.white)
            }
        }
    }
}
