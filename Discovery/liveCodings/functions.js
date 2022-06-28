let checkTrafficLight = (feu, vitesse) => {    
    if (feu == 'vert' || (feu == 'orange' && vitesse >= 50)) {
        console.log("GO")
    }
    else if (feu == 'rouge' || (feu == 'orange' && vitesse < 50)) {
        console.log("STOP")
    }
}

checkTrafficLight("vert", 50)
checkTrafficLight("rouge", 50)
checkTrafficLight("orange", 50)
checkTrafficLight("orange", 30)

let addTwoNumber = (nombre1, nombre2) => {
    return nombre1 + nombre2;
}

let res = addTwoNumber(10, 3)
console.log(res)

let presentation = (name, age) => {
    const nameUppercase = name.toUpperCase()

    return "Hello my name is " + nameUppercase + " and I'm " + age
}

let presV = presentation("vincent", 42)
let presA = presentation("ade", 42)

console.log(presV)
console.log(presA)