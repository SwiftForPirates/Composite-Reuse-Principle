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
    func load(_ goods: String) {
        print("Loading \(goods)")
    }

    func unload(_ goods: String) {
        print("Unloading \(goods)")
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
