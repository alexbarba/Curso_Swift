https://github.com/alexbarba/Curso_Swift/blob/master/juego_memoria.swift
let a = 1...100
for i in a{
    //print(i)
    if i%5==0{
        print("#\(i) Bingo!!!")
    }
    
    if i%2==0{
        print("#\(i) par!!!")
    }
    else{
        print("#\(i) impar!!!")
    }
    
    if 20<=i&&i<=30{
        print("#\(i) Viva Swift!!!")
    }
}