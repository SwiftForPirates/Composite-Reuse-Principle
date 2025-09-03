// Swift for Pirates
// -----------------
// Composite Reuse Principle
// Prefer composition over inheritance

protocol Cannon {
    func shoot(_ direction: String)
}

class BasicCannon: Cannon {
    func shoot(_ direction: String) {
        print("Shooting cannon to the \(direction). Boom!")
    }
}

class LongRangeCannon: Cannon {
    func shoot(_ direction: String) {
        print("Shooting cannon FAR to the \(direction). Boom!")
    }
}

class LoudCannon: Cannon {
    func shoot(_ direction: String) {
        print("Shooting cannon to the \(direction). BOOOOM!")
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
    let sailingEquipment: SailingEquipment
    let cannon: Cannon
    let navalOfficers: NavalOfficers

    init(sailingEquipment: SailingEquipment, cannon: Cannon, navalOfficers: NavalOfficers) {
        self.sailingEquipment = sailingEquipment
        self.cannon = cannon
        self.navalOfficers = navalOfficers
    }
}

class ArmedMerchantShip {
    let sailingEquipment: SailingEquipment
    let cannon: Cannon
    let hold: Hold

    init(sailingEquipment: SailingEquipment, cannon: Cannon, hold: Hold) {
        self.sailingEquipment = sailingEquipment
        self.cannon = cannon
        self.hold = hold
    }
}


let loudMerchant = ArmedMerchantShip(
    sailingEquipment: SailingEquipment(),
    cannon: LoudCannon(),
    hold: Hold()
)

let dangerousHunter = PirateHunterShip(
    sailingEquipment: SailingEquipment(),
    cannon: LongRangeCannon(),
    navalOfficers: NavalOfficers()
)
