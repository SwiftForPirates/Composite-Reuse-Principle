// Swift for Pirates
// -----------------
// Composite Reuse Principle
// Prefer composition over inheritance

class Ship {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }
}


class PirateShip: Ship {
    func shootCannon(_ direction: String) {
        print("Shooting cannon to the (direction). Boom!")
    }

    func plunder() {
        print("Plundering")
    }
}

class MerchantShip: Ship {
    func load(_ cargo: String) {
        print("Loading \(cargo)")
    }

    func unload(_ cargo: String) {
        print("Unloading \(cargo)")
    }
}

class PirateHunterShip: Ship {
    func shootCannon(_ direction: String) {
        print("Shooting cannon to the (direction). Boom!")
    }

    func arrestPirates() {
        print("Game over!")
    }
}
