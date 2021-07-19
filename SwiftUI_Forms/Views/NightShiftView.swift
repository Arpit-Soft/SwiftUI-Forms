//
//  ContentView.swift
//  SwiftUI_Forms
//
//  Created by Arpit Dixit on 18/07/21.
//

import SwiftUI

struct NightShiftView: View {
    
    @State private var schedule: Bool = false
    @State private var manuallyEnableUntillTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    @State var isModal: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors Night shift automatically shift colors").padding([.top, .bottom]).lineLimit(nil)) {
                    
                    Toggle(isOn: $schedule, label: {
                        Text("Schedule")
                    })
                    
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        NavigationLink(destination: Text("Schedule Settings")) {
                            VStack {
                                Text("Sunset")
                                    .foregroundColor(.blue)
                                Text("Sunrise")
                                    .foregroundColor(.blue)
                            }
                        }.fixedSize()
                    }
                }
                
                Section() {
                    Toggle(isOn: $manuallyEnableUntillTomorrow, label: {
                        Text("Manually Enable Until Tomorrow")
                    })
                }
                
                Section(header: Text("COLOR TEMPERATURE").padding(5).font(.body)) {
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                }
                
                Button(action: {
                    NavigationLink("Wassup", destination: NotificationView())
                }, label: {
                    Text("Move to Notification View")
                })
            }
            .navigationTitle("Something")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NightShiftView()
    }
}
