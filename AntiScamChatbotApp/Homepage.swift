//
//  Homepage.swift
//  AntiScamChatbotApp
//
//

import Foundation
import SwiftUI

struct Homepage: View {
    
    var body: some View {
        VStack {
            HStack {
                Image("bot1")
                    .resizable()
                    .frame(width: 400, height: 325)
            }
            ScrollView {
                Text("AntiScam Chatbot App")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.blue)
            }
            HStack {
                Image("bot2")
                    .resizable()
                    .frame(width: 400, height: 300)
            }
            .padding()
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
