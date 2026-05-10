import SwiftUI

struct ContentView: View {

    @State private var started = false

    var body: some View {

        if started {
            DesktopView()
        } else {

            ZStack {

                LinearGradient(
                    colors: [.blue, .black],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 25) {

                    Image(systemName: "desktopcomputer")
                        .font(.system(size: 90))
                        .foregroundColor(.white)

                    Text("MoneyWIN")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)

                    Text("Windows Emulator for iOS")
                        .foregroundColor(.white.opacity(0.8))

                    Button {

                        EmulatorCore.shared.boot()

                        withAnimation {
                            started = true
                        }

                    } label: {

                        Text("START")
                            .bold()
                            .padding()
                            .frame(width: 180)
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(14)
                    }
                }
            }
        }
    }
}
