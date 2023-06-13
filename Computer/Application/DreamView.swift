//
//  DreamView.swift
//  Ben Duah
//
//  Created by Anthony Lartey on 13/06/2023.
//

import SwiftUI

struct DreamView: View {
    private var numberOfImages = 50
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
    func previous() {
        withAnimation {
            currentIndex = currentIndex > 0 ? currentIndex - 1 : numberOfImages - 1
        }
    }
    func next() {
        withAnimation {
            currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
        }
    }
    
    var controls: some View {
        HStack {
            Button {
                previous()
            } label: {
                Image(systemName: "chevron.left")
            }
            Spacer()
                .frame(width: 100.0)
            Button {
                next()
            } label: {
                Image(systemName: "chevron.right")
            }
        }
        .accentColor(.pink)
    }
    var body: some View {
            GeometryReader { proxy in
                VStack {
                    TabView(selection: $currentIndex)  {
                        ForEach(0..<numberOfImages, id: \.self) { num in
                            Image("\(num)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: proxy.size.width, height: proxy.size.height)
                                .tag(num)
                        }
                        .onReceive(timer, perform: { _ in
                               next()
                            
                        })
                        
                    }
                    .tabViewStyle(PageTabViewStyle())
                }
            }
            .ignoresSafeArea()
    }
}

struct DreamView_Previews: PreviewProvider {
    static var previews: some View {
        DreamView()
    }
}
