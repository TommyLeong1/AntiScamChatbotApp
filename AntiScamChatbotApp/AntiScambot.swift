//
//  AntiScambot.swift
//  AntiScamChatbotApp
//
//

import Foundation
import SwiftUI

struct AntiScambot: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Hello, I am AntiScambot. \nAre you confused about deceptions? \nCan I help you?\nYou may ask me:\n\n1. give me advice\n\n2. what can you do\n\n3. can you talk about deception\n\n4. can you educate me about deception"]
    
    var body: some View {
        VStack {
            HStack {
                Text("AntiScambot")
                    .font(.largeTitle)
                    .bold()
                
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.green)
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
                                .background(Color.green.opacity(0.15))
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
                TextField("Talk to AntiScambot on here...", text: $messageText)
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
                    messages.append(getAntiScambotResponse(message: message))
                }
            }
        }
    }
}

struct AntiScambot_Previews: PreviewProvider {
    static var previews: some View {
        AntiScambot()
    }
}
