import Foundation

class EmulatorCore {

    static let shared = EmulatorCore()

    func boot() {
        print("MoneyWIN iniciado")
    }

    func runEXE(file: String) {
        print("Abrindo arquivo EXE: \(file)")
    }
}
