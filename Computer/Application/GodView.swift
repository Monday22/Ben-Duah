//
//  GodView.swift
//  Ben Duah
//
//  Created by Anthony Lartey on 13/06/2023.
//

import SwiftUI
import AVFoundation

struct GodView: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Button {
                    speak(text: "In the name of God the father, and the Sun, and of the Holy Spirit Amen.")
                    speak(text: "Ower Farther God who art in heaven, hallowed be thy name; Thy Kingdom come; Thy will be done on earth as it is in heaven.  Give us this day our daily bread; and forgive us our trespasses as we forgive those who trespass against us; and leed, us not into temptation, but deliver us from evil.")
                } label: {
                    Text("Ower Farther God who art in heaven")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }
                .padding()
                .foregroundStyle(Color(.white))
                .background(Color(.black))
                .cornerRadius(20.0)
                Button {
                    speak(text: "In the name of God the father, and the Sun, and of the Holy Spirit Amen.")
                    speak(text: "Hail Mary, full of grace.  The Lord is with thee.  Blessed are thou among women, and blessed is the fruit of thy womb, jesus.  Holy Mary, Mouther of God, pray for us sinners, now and at the hour of our death.")
                } label: {
                    Text("Hail Mary, full of grace")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }
                .padding()
                .foregroundStyle(Color(.white))
                .background(Color(.black))
                .cornerRadius(20.0)
                Button {
                    speak(text: "In the name of God the father, and the Sun, and of the Holy Spirit Amen.")
                    speak(text: "Glory Be to God the father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now, and ever shall be, world without end")
                } label: {
                    Text("Glory Be to God the father")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }
                .padding()
                .foregroundStyle(Color(.white))
                .background(Color(.black))
                .cornerRadius(20.0)
                Button {
                    speak(text: "In the name of God the father, and the Sun, and of the Holy Spirit Amen.")
                    speak(text: "Prince and Princess's shall come forth out of Egypt. Ethiopia Shall Stretch out her hands out to JAH! O Thou GOD! of Divining Majesty!. Thou Spirit Comes from They HART!. To Dwell in the Parts of right Nousess!. As Sure as SUN'S! Shine Way Up in the SKY!. Today I Stand There as a Victium!. The Truth is I never Die!!!!.... Then What ELSE!!!!... Adhesions Dawson attraction Oil Celestial Delicious!!!... Giant his as in ewd... I of Fine as Neuter wed!!!... A of Am!!!... A of Fine!!!.. As in Media Evil\n All-SHE-AH! I O of Alone\n Turner LYRE! As in Typical Full!\n S1 TH TI O1 DE C CH C1 G S AU EE E1 EU EW AA AA AE AE A AI AO U Y Y I O O O U U")
                } label: {
                    Text("Prince and Princess's")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                }
                .padding()
                .foregroundStyle(Color(.white))
                .background(Color(.black))
                .cornerRadius(20.0)
            }
        }
    }
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        synthesizer.speak(utterance)
    }
}


struct GodView_Previews: PreviewProvider {
    static var previews: some View {
        GodView()
    }
}
