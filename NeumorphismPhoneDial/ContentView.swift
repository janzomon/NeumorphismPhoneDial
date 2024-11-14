//
//  ContentView.swift
//  NeumorphismPhoneDial
//
//  Created by Damon gonzalez on 11/13/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var dialedNumbers: [String] = []
    var body: some View {
        ZStack {
            //BACKGROUND
            Color.offWhite
            VStack {
                //NUMBER DISPLAY STACK
                HStack(alignment: .center,spacing: 10) {
                    switch dialedNumbers.count {
                    case 10:
                        Text("+1 " + "(\(dialedNumbers[0...2].joined()))" + "-\(dialedNumbers[3...5].joined())" + "-\(dialedNumbers[6...9].joined())")
                            .font(.system(size: 30))
                            .fontWeight(.heavy)
                            .foregroundStyle(.gray)
                    case 11:
                        Text("\(dialedNumbers.joined())")
                            .font(.system(size: 30))
                            .fontWeight(.heavy)
                            .foregroundStyle(.gray)
                    default:
                        Text("\(dialedNumbers.joined())")
                            .font(.system(size: 30))
                            .fontWeight(.heavy)
                            .foregroundStyle(.gray)
                    }
                }
                .frame(width: 320, height: 80)
                //.border(.red)
                .padding(.bottom,10)
                //NUMBER PAD STACK
                VStack {
                    HStack(alignment: .top, spacing: 40) {
                        //1,4,7,*
                        VStack(spacing: 40) {
                            //1
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("1")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("1")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //4
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("4")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("4")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //7
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("7")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("7")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //*
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("*")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                        }
                        //2,5,8,0,phone
                        VStack(spacing: 40) {
                            //2
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("2")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("2")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //5
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("5")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("5")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //8
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("8")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("8")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //0
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("0")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("0")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            Button(action: {
                                AudioServicesPlaySystemSound(1306)
                            }) {
                                Image(systemName: "phone")
                                    .foregroundStyle(.green)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                        }
                        //3,6,9,#,delete
                        VStack(spacing: 40) {
                            //3
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("3")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("3")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //6
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("6")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("6")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //9
                            Button(action: {
                                if dialedNumbers.count < 10 {
                                    dialedNumbers.append("9")
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Text("9")
                                    .font(.headline)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.gray)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //#
                            Button(action: {
                                AudioServicesPlaySystemSound(1306)
                            }) {
                                Text("#")
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                            //delete
                            Button(action: {
                                if dialedNumbers.isEmpty == true {
                                    AudioServicesPlaySystemSound(1306)
                                }
                                else {
                                    dialedNumbers.removeLast()
                                    AudioServicesPlaySystemSound(1306)
                                }
                            }) {
                                Image(systemName: "delete.left")
                                    .foregroundStyle(.red)
                            }
                            .buttonStyle(RiggedSquareToSquareIndent())
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
