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
    func load(_ goods: String) {
        print("Loading \(goods)")
    }

    func unload(_ goods: String) {
        print("Unloading \(goods)")
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

    func load(_ goods: String) {
        print("Loading \(goods)")
    }

    func unload(_ goods: String) {
        print("Unloading \(goods)")
    }
}
