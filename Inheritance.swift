// Swift for Pirates
// -----------------
// Composite Reuse Principle
// Prefer composition over inheritance

class Ship {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }
}

class ArmedShip: Ship {
    func shootCannon(_ direction: String) {
        print("Shooting cannon to the (direction). Boom!")
    }
}


class PirateShip: ArmedShip {
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

class PirateHunterShip: ArmedShip {
    func arrestPirates() {
        print("Game over!")
    }
}


class ArmedMerchantShip /* What to inherit from? */ {
    func sail(_ direction: String) {
        print("Sailing \(direction)")
    }

    func shootCannon(_ direction: String) {
        print("Shooting cannon to the (direction). Boom!")
    }

    func load(_ cargo: String) {
        print("Loading \(cargo)")
    }

    func unload(_ cargo: String) {
        print("Unloading \(cargo)")
    }
}
