//
//  ContentView.swift
//  Computer
//
//  Created by Anthony Lartey on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var images: [String] = ["image", "image0", "image1", "image2", "image3", "image4", "image5", "image6", "image7", "image7 1", "image8", "image9", "image10", "image11", "image12", "image13", "image14", "image15", "image16", "image17", "image18", "image19", "image20", "image21", "image22", "image23", "image24", "image25", "image26", "image27", "image28", "image29", "image30", "image31", "image32", "image33", "image34", "image35", "image36", "image37", "image38", "image39", "image40", "image41", "image42", "image43", "image44", "image45", "image46", "image47", "image48", "image", "image5", "image28","image0"]
    @State private var imgNdx = 0
    var body: some View {
        ZStack {
            Image(images[imgNdx])
                .resizable()
                .ignoresSafeArea()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height) // adjust the size as desired
            HStack {
                Button("Next", action: {
                    if imgNdx < images.count-1 {
                        imgNdx += 1
                    } else {
                        imgNdx = 0
                    }
                })
                Spacer()
                Button("Back", action: {
                    if imgNdx >= 1 {
                        imgNdx -= 1
                    }
                })
            }
            .padding()
            .foregroundStyle(.white)
        }
        .buttonStyle(.borderedProminent)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
