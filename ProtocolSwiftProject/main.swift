//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Abdulsamet Bakmaz on 3.10.2022.
//

import Foundation

protocol Running {
    func myRun()
}
class Animal{
    func running(){
        print("running")
    }
    func test () {
        print("test")
    }
}
class Dog : Animal, Running { //protocolü inherit edeceksek onun içindeki fonksiyonları da kullanmak zorundayız. Aslında bunu bir kütüphane çağırdğımızda yani delegate ettiğimizde, örneğin tableView için onun gerekli fonksiyonlarını bizden istediğini görmüştük. Aynı hatayı daha öncsinde de almıştık. Burada kendi planımızı oluşturduk
    func myRun() {
        print("running")
    }
}
let karabas = Dog()
karabas.myRun()
karabas.test()

class Cat : Animal {
    
}
let minnos = Cat()
minnos.running()

class Turttle : Animal {
    
}
let leonardo = Turttle()
leonardo.running()

struct Bird : Running { //structa class inherit edemedim fakat bir protocolü inherit edebildim
    func myRun() {
        print("running")
    }
}
let tweety = Bird()
tweety.myRun()

