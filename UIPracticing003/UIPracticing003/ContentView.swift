//
//  ContentView.swift
//  UIPracticing003
//
//  Created by Đặng Nhật Quân on 21/08/2020.
//  Copyright © 2020 Đặng Nhật Quân. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LoginScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginScreen: View  {
    
    @State var login = false
    
    var body : some View {
        
        NavigationView{
            ZStack{
                if self.login == true {
                    NavigationLink(destination: MainScreen(login: self.$login), isActive: self.$login){
                        Text("")
                    }
                    .hidden()
                }
                
                Image("explore").renderingMode(.original)
                .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    
                    VStack(alignment: .leading){
                        Text("Explore")
                            .fontWeight(.bold)
                            .font(.system(size: 45))
                            .foregroundColor(Color.white)
                        
                        Text("the Earth")
                            .fontWeight(.bold)
                            .font(.system(size: 45))
                            .foregroundColor(Color.white)
                    }
                    .offset(y:250)
                    
                    Button(action:{
                        self.login.toggle()
                    }){
                        HStack(spacing: 0){
                            Image(systemName: "chevron.right")
                                .font(.system(size: 30))
                                .foregroundColor(Color.black.opacity(0.5))
                            Image(systemName: "chevron.right")
                                .font(.system(size: 30))
                                .foregroundColor(Color.black)
                        }
                        .padding()
                    }
                    .frame(width:150,height:75)
                    .background(Color.white)
                    .cornerRadius(45)
                    .offset(y:250)
                }
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    
    
        
    }
    
}

struct MainScreen: View {
    
    @Binding var login: Bool
    
    @State var type = 0
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Button(action:{}){
                           Image(systemName: "text.justifyleft")
                            .font(.system(size: 30))
                            .foregroundColor(Color.black)
                        }
                        Spacer()
                        
                        Button(action:{}){
                            Image("traveler")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 50,height:50)
                                .background(Color.blue)
                                .cornerRadius(75)
                                
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top,40)
                    
                    HStack{
                        Text("Explore the Earth")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 25){
                            Button(action:{
                                self.type = 0
                            }){
                                Text("Experiences")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(
                                        self.type == 0 ?  Color.black : Color.black.opacity(0.2))
                            }
                            .animation(.spring())
                            
                            Button(action:{
                                self.type = 1
                            }){
                                Text("Adventure")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(
                                        self.type == 1 ?  Color.black : Color.black.opacity(0.2))
                            }
                            .animation(.spring())
                            
                            Button(action:{
                                self.type = 2
                            }){
                                Text("Activities")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(
                                        self.type == 2 ?  Color.black : Color.black.opacity(0.2))
                            }
                            .animation(.spring())
                            
                            Button(action:{
                                self.type = 3
                            }){
                                Text("Trending")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(
                                        self.type == 3 ?  Color.black : Color.black.opacity(0.2))
                            }
                            .animation(.spring())
                            
                        }
                    
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal){
                        HStack{
                            
                            VStack{
                                Text("Fishing")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .offset(x:-75,y:140)
                                
                            }
                            .frame(width: 250,height: 350)
                            .background(Image("fishing")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(25)
                            
                            VStack{
                                Text("Hiking")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .offset(x:-75,y:140)
                                
                            }
                            .frame(width: 250,height: 350)
                            .background(Image("sand_boarding")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(25)
                            
                            VStack{
                                Text("Climbing")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .offset(x:-75,y:140)
                                
                            }
                            .frame(width: 250,height: 350)
                            .background(Image("explore")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(25)
                            
                            VStack{
                                Text("Skating")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .offset(x:-75,y:140)
                                
                            }
                            .frame(width: 250,height: 350)
                            .background(Image("skating")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(25)
               
                            
                        }
                    }
                    .padding()
                    
                    HStack{
                        Text("Categories")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal){
                        HStack{
                            VStack{
                                Text("Forest")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.white)
                                    .offset(x:-45,y:65)
                                
                            }
                            .frame(width: 175,height: 175)
                            .background(Image("forest")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(17)
                            
                            VStack{
                                Text("Sunset")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.white)
                                    .offset(x:-45,y:65)
                                
                            }
                            .frame(width: 175,height: 175)
                            .background(Image("sunset")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(17)
                            
                            VStack{
                                Text("Tropical")
                                    .fontWeight(.bold)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.white)
                                    .offset(x:-45,y:65)
                                
                            }
                            .frame(width: 175,height: 175)
                            .background(Image("tropical")
                                    .renderingMode(.original)
                                    .resizable()
                            )
                            .cornerRadius(17)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    HStack(spacing:75){
                        Button(action:{
                            
                        }){
                            Image("home")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25,height:25)
                        }
                        
                        Button(action:{
                            
                        }){
                            Image("heartbeat")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 35,height:35)
                        }
                        
                        Button(action:{
                            
                        }){
                            Image("search")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25,height:25)
                        }
                        
                        Button(action:{
                            
                        }){
                            Image("gear")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 25,height:25)
                        }
                        
         
                    }
                    .padding()
                    
                    Spacer()
                    
                    
 
            }
            
        }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}
