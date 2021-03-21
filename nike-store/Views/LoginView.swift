//
//  Login.swift
//  nike-store
//
//  Created by Anthony José on 16/03/21.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var showingLogin: Bool
    
    @State private var emailAccount: String = ""
    @State private var passwordAccount: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                    Image("nike-icon")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text("Uma conta para você guardar tudo da Nike")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 300, height: 100)
                        .multilineTextAlignment(.center)
                        
                    VStack(alignment: .trailing, spacing: 10) {
                        TextField("E-mail", text: $emailAccount)
                        SecureField("Senha", text: $passwordAccount)
                        
                        Button(action: { print("forget password") }) {
                            Text("Esqueceu a senha ?")
                                .font(.subheadline)
                        }
                    }.padding()
                    .textFieldStyle(RoundedTextFieldStyle())
                    
                    Button(action: { print("signUp") }) {
                        Text("Cadastrar-se").font(.headline)
                    }.padding()
                
                    Button(action: { print("Sign In Apple ID") }) {
                        HStack(spacing: 10) {
                            Image(systemName: "applelogo")
                            Text("Entrar com Apple  ID").font(.headline)
                        }
                    }.padding()
                    .background(Color.black)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                
                    Text("Ver mais opções de Login")
                        .padding()
                        .foregroundColor(.secondary)
                
                    Text("Ao entrar você concorda com os Termos de Uso e Política de Privacidade.")
                        .font(.footnote)
                        .padding(.top)
                        .frame(width: 300, height: 100)
                        .multilineTextAlignment(.center)
                        
                }.navigationBarItems(leading: Button(action: { self.showingLogin.toggle() }){ Text("Fechar")
                })
        }
    }
}


struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(15)
            .background(Color("cardBackground"))
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 2)
    }
}
