//
//  AuthViewModel.swift
//  Crafty Furniture Ecommerce SwiftUI
//
//  Created by Clem OJ on 08/02/2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        self.userSession = Auth.auth().currentUser;
        Task{
            await fetchUserData()
        }
    }
    
    func signIn(email: String, password: String)
    async throws
    {
        print("login user")
    }
    
    func createUser(email: String, fullname: String, password: String)
    async throws
    {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User(id: result.user.uid, fullname: fullname, email: email, profileImage: "profile-pic")
            
            let encodedUser = try Firestore.Encoder().encode(user)
            
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser);
            await fetchUserData();
        }
        catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func signOut(){
        print("signing out user")
    }
    
    func fetchUserData()
    async
    {
        guard let uid = Auth.auth().currentUser?.uid else { return; }
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return;}
        self.currentUser = try? snapshot.data(as: User.self)
        print("DEBUG: Current user is \(String(describing: self.currentUser))")
    }
}
