//
//  ContactsList.swift
//  ContactsList
//
//  Created by Logan Koshenka on 9/10/21.
//

import SwiftUI

struct ContactsList: View {
    @State var searchingFor = ""
    @State var sortByOptions = [ContactSortingMethod.alphabetical.rawValue, ContactSortingMethod.rank.rawValue, ContactSortingMethod.recent.rawValue]
    @State var selectedSortMethod = ContactSortingMethod.alphabetical
    @State var contactsShown = contacts.sorted { $0.name < $1.name }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach(contactsShown) { contact in
                        NavigationLink(destination:
                                        ContactView(contact: contact)
                        ) {
                            HStack {
                                ZStack {
                                    Image("logan")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(10)
                                    ZStack(alignment: .center) {
                                        Circle()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(.white)
                                            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 1, y: 2)
                                        
                                        Text("\(contact.rank)")
                                            .bold()
                                    }
                                    .offset(x: 25, y: 25)
                                }
                                Text(contact.name)
                                    .font(.system(size: 20, weight: .regular, design: .rounded))
                            }
                        }
                    }
                }
                .searchable(text: $searchingFor)
                .navigationTitle("Contacts")
                
                Menu("Sort".uppercased()) {
                    Button("Abc", action: { sortAlphabetically() })
                    Button("Rank", action: { sortByRank() })
                    Button("Recent", action: { sortByRecent() })
                }
                .padding()
                .foregroundStyle(
                    .linearGradient(colors: [.cyan, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .font(.headline)
            }
        }
    }
    
    var results: [Contact] {
        if searchingFor.isEmpty {
            return contactsShown
        } else {
            return contactsShown.filter { $0.name.contains(searchingFor) }
        }
    }
    
    func sortAlphabetically() {
        contactsShown.sort { $0.name < $1.name }
    }
    
    func sortByRank() {
        contactsShown.sort { $0.rank < $1.rank }
    }
    
    func sortByRecent() {
        contactsShown.shuffle()
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList()
    }
}

enum ContactSortingMethod: String, Decodable {
    case alphabetical = "Abc"
    case rank = "Rank"
    case recent = "Recent"
}
