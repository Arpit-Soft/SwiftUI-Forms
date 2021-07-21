//
//  NotificationView.swift
//  SwiftUI_Forms
//
//  Created by Arpit Dixit on 19/07/21.
//

import SwiftUI

struct NotificationView: View {
    
    @State private var images = ["🗾","🌅","🌄","🌠","🎇","🌇","🗾","🌅","🌄","🌠","🎇","🌇"]
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Show Previews")
                    Spacer()
                    NavigationLink(destination: Text("Somewhere")) {
                        Text("Always")
                            .foregroundColor(.secondary)
                    }.fixedSize()
                }
            }
            
            Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked").padding([.bottom]).lineLimit(nil)) {
                NavigationLink(destination: Text("Siri Suggestion")) {
                    Text("Siri Suggestions")
                }
            }
            
            Section(header: Text("Choose while apps can suggest shortscut on the lock screen\n\nNOTIFICATION STYLE").padding([.bottom]).lineLimit(nil)) {
                ForEach(images, id: \.self) { img in
                    HStack {
                        NavigationLink(destination: Text("Notification")) {
                            Text(img)
                                .font(.largeTitle)
                            Text("Notification")
                        }
                    }
                }
            }
        }
        .navigationTitle("Notifications")
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
