//
//  Scammerbot.swift
//  AntiScamChatbotApp
//
//

import Foundation
import SwiftUI

struct Scammerbot: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Hello there, I am Scammerbot.\n My role is to make you experience what it's like when a scammer talks to you. Which types of Deception scammer \n do you want me to talk to you?\n\n1. Phone scam\n\n2. Phishing email scam\n\n3. Romance scam\n\n4. Charity scam\n\n5. Impersonation scam"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Scammerbot")
                    .font(.largeTitle)
                    .bold()
                
                Image(systemName: "bubble.right.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.red)
            }
            
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        // User message styles
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        
                        // Bot message styles
                        HStack {
                            Text(message)
                                .padding()
                                .background(Color.red.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                    
                }.rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.1))
            
            
            // Contains the Message bar
            HStack {
                TextField("Talk to Scammerbot on here...", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    messages.append(getScammerbotResponse(message: message))
                }
            }
        }
    }
}

struct Scammerbot_Previews: PreviewProvider {
    static var previews: some View {
        Scammerbot()
    }
}

