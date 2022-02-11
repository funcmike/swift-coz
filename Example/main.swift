import Coz

cozBegin(name: "test")
defer {  cozEnd(name: "test") }

for i in 0...100000 * 100000 {
    if i%200 == 0 {
        cozProgressNamed(name: "mod200")
    } else if i%100 == 0 {
        cozProgressNamed(name: "mod100")
    }
}
