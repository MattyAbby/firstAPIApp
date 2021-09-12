//
//  ContentView.swift
//  apiXample
//
//  Created by Matthew Abalos on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var users: [User] = []
    
    var body: some View {
        NavigationView {
            ZStack{
                List(users) { user in
                    VStack(alignment: .leading){
                        NavigationLink(
                            destination: UserView(),
                            label: {
                                Text(user.username)
                                    .foregroundColor(.blue)
                            })
                        }
                }
                .onAppear {
                    apiCall().getUsers{ (users) in
                        self.users = users
                    }
                }
                .navigationBarTitle("Contacts 📱")
            }
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//                        Text(user.username)
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.blue)
//
//                        Text(user.name + ", " + user.address.city)
//                            .foregroundColor(.secondary)
//                           // .foregroundColor(.blue)
//                            .lineLimit(2)
