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

class BoardingCrew {
    func plunder() {
        print("Plundering")
    }
}

class Hold {
    func load(_ cargo: String) {
        print("Loading \(cargo)")
    }

    func unload(_ cargo: String) {
        print("Unloading \(cargo)")
    }
}

class NavalOfficers {
    func arrestPirates() {
        print("Game over!")
    }
}


class PirateShip {
    let sailingEquipment: SailingEquipment
    let cannon: Cannon
    let boardingCrew: BoardingCrew

    init(sailingEquipment: SailingEquipment, cannon: Cannon, boardingCrew: BoardingCrew) {
        self.sailingEquipment = sailingEquipment
        self.cannon = cannon
        self.boardingCrew = boardingCrew
    }

    func attack(_ direction: String) {
        sailingEquipment.sail(direction)
        cannon.shoot(direction)
        boardingCrew.plunder()
    }
}

class MerchantShip {
    let sailingEquipment: SailingEquipment
    let hold: Hold

    init(sailingEquipment: SailingEquipment, hold: Hold) {
        self.sailingEquipment = sailingEquipment
        self.hold = hold
    }

    func exchange(_ oldCargo: String, with newCargo: String) {
        hold.unload(oldCargo)
        hold.load(newCargo)
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
