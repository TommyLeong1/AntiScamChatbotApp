//
//  ContentView.swift
//  AntiScamChatbotApp
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Homepage()
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("Homepage")
                }
            AntiScambot()
                .tabItem(){
                    Image(systemName: "bubble.left.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color.green)
                    Text("AntiScambot")
                }
            Scammerbot()
                .tabItem(){
                    Image(systemName: "bubble.right.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color.red)
                    Text("Scammerbot")
                }
        }
    }
}
                    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
