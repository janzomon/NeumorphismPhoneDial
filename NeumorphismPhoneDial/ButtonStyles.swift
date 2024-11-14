//
//  ButtonStyles.swift
//  NeumorphismPhoneDial
//
//  Created by Damon gonzalez on 11/13/24.
//

import Foundation
import SwiftUI





//MARK: - WHITE
struct FlatStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    Circle()
                        .fill(Color.offWhite)
                } else {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct SoftIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
                } else {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct RiggedIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    Circle()
                    .fill(Color.offWhite)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                    )
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 8)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                    )
                } else {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct FlatSquareStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 50)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct SoftSquareIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct RiggedSquareIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color.offWhite)
                    .frame(width: 100, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 4)
                            .frame(width: 100, height: 50)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(Color.black, Color.clear)))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 8)
                            .frame(width: 100, height: 50)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 10).fill(LinearGradient(Color.clear, Color.black)))
                    )
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct FlatSquareToSquareStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.offWhite)
                        .frame(width: 70, height: 70)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 50, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct SoftSquareToSquareIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offWhite)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 50, height: 50)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}

struct RiggedSquareToSquareIndent: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
        .padding(30)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offWhite)
                        .frame(width: 120, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                            .frame(width: 120, height: 120)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.black, Color.clear)))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 8)
                            .frame(width: 120, height: 120)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.clear, Color.black)))
                    )
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}



//EXTENSIONS
extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}


extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
