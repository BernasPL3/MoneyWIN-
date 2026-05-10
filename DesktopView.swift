import SwiftUI

struct DesktopView: View {

    var body: some View {

        ZStack {

            LinearGradient(
                colors: [.cyan, .blue],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {

                HStack {

                    VStack(spacing: 18) {

                        desktopIcon(name: "folder.fill", text: "Files")

                        desktopIcon(name: "gamecontroller.fill", text: "Games")

                        desktopIcon(name: "gearshape.fill", text: "Settings")
                    }

                    Spacer()
                }

                Spacer()

                HStack {

                    Text("MoneyWIN")
                        .foregroundColor(.white)
                        .bold()

                    Spacer()

                    Text("iOS")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.black.opacity(0.4))
            }
            .padding()
        }
    }

    func desktopIcon(name: String, text: String) -> some View {

        VStack {

            Image(systemName: name)
                .font(.system(size: 35))
                .foregroundColor(.white)

            Text(text)
                .foregroundColor(.white)
                .font(.caption)
        }
    }
}
