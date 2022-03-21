//
//  ContentView.swift
//  ChatApp
//
//  Created by peter wi on 3/21/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    var messageArray = ["Hello you", "How are you doing?", "Long time no see"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of : messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(.brown)
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
