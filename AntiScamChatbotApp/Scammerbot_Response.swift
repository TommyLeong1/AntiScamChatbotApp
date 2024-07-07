//
//  Scammerbot_Response.swift
//  AntiScamChatbotApp
//
//

import Foundation


func getScammerbotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") {
        return "Hello, which types of Deception scammer do you want me to talk to you?\n\n1. Phone scam\n\n2. Phishing email scam\n\n3. Romance scam\n\n4. Charity scam\n\n5. Impersonation scam"
    } else if tempMessage.contains("phone scam") {
        return "Hello, this is David from the Social Security Administration. We have noticed some suspicious activity on your social security number and we need to verify some information. Can you please provide me with your name, social security number, and date of birth?\n\nYou can input [my social security number is 1234 5678, and my date of birth is may 25, 2000] to continue."
    } else if tempMessage.contains("1234 5678,may 25,2000") {
        return "Thank you for providing that information. We also need to verify your bank account number and routing number to ensure that your social security benefits are being deposited correctly.\n\nYou can input [my bank account number is 123456789 and the routing number is 987654321] to continue."
    }else if tempMessage.contains("123456789,987654321") {
            return "Thank you for providing that information. We also need to verify your credit card number and security code to ensure that your personal information is secure.\n\nYou can input [my credit card number is 1234-5678-9012-3456 and the security code is 123] to continue."
    }else if tempMessage.contains("1234-5678-9012-3456,123") {
            return "Thank you for providing that information. We have everything we need to process your social security benefits. Please note that if you do not provide thisinformation, your benefits may be delayed or cancelled.\n\n---The simulated conversation has ended---\n\nHere are the consequences of suffering from Phone scam\n\nIn this situation, the scammer is using the fear of the victim to obtain their personal information. Once the scammer has this information, they can use it to steal the victim's identity or commit fraud in their name. It is important for the victim to be cautious and never give out personal information over the phone.\n\nIdentity theft: The scammer may use the victim's personal information to steal their identity and commit fraud in their name.\n\nFinancial loss: The victim may lose money if they provide the scammer with their bank account or credit card information."
    }else if tempMessage.contains("phishing email scam") {
            return "Dear Customer, we have noticed some unusual activity on your account. Please click on the link below to verify your account information.\n\nYou can input [I clicked on the link. What should I do next] to continue."
    }else if tempMessage.contains("clicked") {
            return "Thank you for clicking on the link. Please provide your username and password to verify your account.\n\nYou can input [my username is jsmith123 and my password is 123456] to continue."
    }else if tempMessage.contains("jsmith123,123456") {
            return "Thank you for providing that information. We also need your credit card number and security code to verify your account.\n\nYou can input [my credit card number is 2222-5678-9012-3456 and the security code is 123.] to continue."
    }else if tempMessage.contains("2222-5678-9012-3456,123") {
            return "Thank you for providing that information. Your account has been verified and is secure. Please note that if you do not provide this information, your account may be suspended or terminated.\n\n---The simulated conversation has ended---\n\nHere are the consequences of suffering from Phishing email scam：\n\nProviding the personal information. The link provided may lead to a fake website that looks like the real thing, but is designed to steal the victim's personal information. It is important for the victim to be cautious and never click on suspicious links in emails.\n\nIdentity theft: The scammer may use the victim's personal information to steal their identity and commit fraud in their name.\n\nFinancial loss: The victim may lose money if they provide the scammer with their bank account or credit card information.\n\nMalware infection: Clicking on a link or downloading an attachment in a phishing email can lead to the victim's device being infected with malware, which can damage their device or steal their personal information."
    }else if tempMessage.contains("romance scam") {
            return "Hi, my name is Mark and I saw your profile online. You're beautiful and I'd love to get to know you better. Can we chat?\n\nYou can input [Sure, I'd love to get to know you too] to continue."
    }else if tempMessage.contains("sure") {
            return "Great, let's chat on this messaging app. By the way, I'm a successful businessman based overseas.\n\nYou can input [what kind of business do you run] to continue."
    }else if tempMessage.contains("what kind of business") {
            return "I run a construction company and I'm currently working on a big project in [insert country]. But I'm having some financial troubles and I could use your help.\n\nYou can input [what kind of help do you need] to continue."
    }else if tempMessage.contains("what kind of help") {
            return "I'm having trouble paying my workers and I need some money to finish this project. Can you lend me some money? I promise to pay you back as soon as I get back to the States.\n\nYou can input [how much do you need] to continue."
    }else if tempMessage.contains("how much") {
            return "I need $5,000 to pay my workers. Can you send it to me through Western Union?\n\nYou can input [Sent it] to continue."
    }else if tempMessage.contains("sent") {
            return "---The simulated conversation has ended---\n\nHere are the consequences of suffering from Romance scam\n\nIn this situation, the scammer is using a fake persona to gain the victim's trust and then asking for money. Once the victim sends the money, the scammer disappears and the victim is left with no way to get their money back. It is important for the victim to be cautious and never send money to someone they have never met in person.\n\nFinancial loss: The victim may lose money if they send money to the scammer.\n\nEmotional distress: The victim may become emotionally attached to the scammer and experience distress when they realize they were deceived."
    }else if tempMessage.contains("charity scam") {
            return "Hi, I'm calling on behalf of a charity that helps underprivileged children. We're raising funds to provide them with food, education, and medical care. Can you please make a donation to help us out?\n\n You can input [Yes, I'd love to help. How can I donate] to continue."
    }else if tempMessage.contains("how can i donate") {
            return "Great, you can donate by giving us your credit card number and we'll process the donation right away.\n\nYou can input [Okay, my credit card number is 3333-5678-9012-3456] to continue."
    }else if tempMessage.contains("3333-5678-9012-3456") {
            return "Thank you so much for your donation. We appreciate your help in making a difference in these children's lives.\n\nYou can input [tell me more about the charity and where my donation is going] to continue."
    }else if tempMessage.contains("where my donation is going") {
            return "Oh, sure. We're a new charity that helps children in need. Your donation will go towards providing them with food, education, and medical care.\n\nYou can input [provide me website or phone number about the charity] to continue."
    }else if tempMessage.contains("provide me website or phone") {
            return "I'm sorry, we don't have a website or phone number yet. We're still in the process of setting that up. But don't worry, your donation is going to a good cause.\n\n---The simulated conversation has ended---\n\nHere are the consequences of suffering from Charity scam：\n\nIn this situation, the scammer is using a fake charity to trick the victim into giving them money. The victim may believe that they are making a difference in the lives of underprivilegedchildren, but in reality, the money is going straight into the scammer's pockets. It is important for the victim to be cautious and do research on the charity before making any donations.\n\nFinancial loss: The victim may lose money if they donate to a fake charity.\n\nDisappointment: The victim may feel disappointed and betrayed when they realize they were scammed and their money was not used for a legitimate charitable cause."
    }else if tempMessage.contains("impersonation scam") {
            return "Hi, this is John from your bank. We have noticed some suspicious activity on your account and we need to verify some information. Can you please provide me with your account number and PIN?\n\nYou can input [my account number is 112233 and my PIN is 1234] to continue."
    }else if tempMessage.contains("112233,1234") {
            return "Thank you for providing that information. We also need to verify your credit card number and security code to ensure that your personal information is secure.\n\nYou can input [Okay, my credit card number is 4444-5678-9012-3456 and the security code is 123] to continue."
    }else if tempMessage.contains("4444-5678-9012-3456,123") {
            return "Thank you for providing that information. We have everything we need to ensure that your account is secure. Please note that if you do not provide this information, youraccount may be suspended or terminated.\n\n---The simulated conversation has ended---\n\nHere are the consequences of suffering from Impersonation scam：\n\nIn this situation, the scammer is pretending to be from the victim's bank to gain their personal information. Once the scammer has this information, they can use it to steal the victim's identity or commit fraud in their name. It is important for the victim to be cautious and never give out personal information over the phone or through email.\n\nIdentity theft: The scammer may use the victim's personalinformation to steal their identity and commit fraud in their name.\n\nFinancial loss: The victim may lose money if they provide the scammer with their bank account or credit card information.\n\nUnauthorized access: If the victim provides the scammer with their account information, the scammer may gain unauthorized access to their account and steal their money or personal information."
    }else if tempMessage.contains("scam list") {
            return "You may ask me:\n\n1. Phone scam\n\n2. Phishing email scam\n\n3. Romance scam\n\n4. Charity scam\n\n5. Impersonation scam"
    }else if tempMessage.contains("other chatbot") {
            return "My role is to imitate a scammer to talk with users. The role of AntiScambot is to give users some preventive advice on deception. But both of us aim to strengthen users' defense against deception."
    }else if tempMessage.contains("bye") {
            return "You are welcome! I am honored to help you, I hope you can successfully avoid all deception!"
    } else {
        return "Sorry, I don't quite understand what you mean.\nYou may ask me:\n\n1. give me advice\n\n2. what can you do\n\n3. talk about deception\n\n4. tell me about the website\n\n5. how to use the website\n\n6. can you educate me about deception"
    }
}

