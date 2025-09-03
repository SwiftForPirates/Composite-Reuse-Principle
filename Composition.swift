// Swift for Pirates
// -----------------
// Composite Reuse Principle
// Prefer composition over inheritance

class Cannon {
    func shoot(_ direction: String) {
        print("Shooting cannon to the \(direction). Boom!")
    }
}

class SailingEquipment {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }
}


class PirateShip {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }

    func shootCannon(_ direction: String) {
        print("Shooting cannon to the \(direction). Boom!")
    }

    func plunder() {
        print("Plundering")
    }
}

class MerchantShip {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }

    func load(_ cargo: String) {
        print("Loading \(cargo)")
    }

    func unload(_ cargo: String) {
        print("Unloading \(cargo)")
    }
}

class PirateHunterShip {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }

    func shootCannon(_ direction: String) {
        print("Shooting cannon to the \(direction). Boom!")
    }

    func arrestPirates() {
        print("Game over!")
    }
}
