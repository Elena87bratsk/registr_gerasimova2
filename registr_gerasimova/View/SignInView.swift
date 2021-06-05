//
//  ContentView.swift
//  registr_gerasimova
//
//  Created by user on 04.06.2021.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct SignInView: View {
    @State var mail = ""
    @State var pas = ""
   @ObservedObject var userObject = UserObject()
    @Binding var page: Int
    var body: some View {
        
        VStack( content: {
            
            Image("Pl")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180, alignment:.center)
                .padding()
            Text("EMAIL")
                .frame(width: 300, height: 0, alignment: .leading)
            HStack{
                Image (systemName: "envelope")
                TextField("name@email.com",text:$mail)
                   .padding(.horizontal,20)
                 
                    
            }
            .overlay(RoundedRectangle (cornerRadius: 25.0).stroke(Color (UIColor.blue).opacity(1),lineWidth: 1))
            .padding(.leading, 20)
            Text("PASSWORD")
                .font(.system(size: 12))
                .frame(width: 300, height: 0, alignment: .leading)
            
            
            HStack {
                Image (systemName: "lock")
                TextField("********", text:$pas)
                .padding(.horizontal,20)
            }
            .overlay(RoundedRectangle (cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(Color (UIColor.blue).opacity(1),lineWidth: 1))
            .padding(.leading, 20)
            
        Button(action: {
            userObject.login(mail: mail, pas: pas)
            page = 2
        }, label: {
          Text("SIGN IN")
                .foregroundColor(.white)
                .frame(width: 300, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color(.blue))
                .cornerRadius(10)
        })
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.gray)
                    .frame(width: 200, height: 20, alignment: .leading)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Login")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
            }
        })
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(page: .constant(1))
    }
}


