fun main(){
    var a:String? = ""
    print("Введите число: ")
    var b:Int = inputNum()
    while (a!="Закрыть") {
        print("Введите команду")
        a = readLine()
        when (a){
            "Новое число"->b = inputNum()
            "Сумма"->println(sum(b))
            "Минимальное"->println(min(b))
            "Максимальное"->println(max(b))
            "Произведение"->println(pr(b))
            "Метод 1"->print(method1(b))
            "Метод 2"->print(method2(b))
            "Метод 3"->print(method3(b))
            "Закрыть"-> break
            else->println("Ожидаю команду")
        }

    }
}
fun min(b:Int):Int {
    var a:Int = b
    var s:Int = 10
    while (a>0){
        if (s > (a%10))
            s = a%10
        a /= 10
    }

    return s
}
fun max(b:Int):Int {
    var a:Int = b
    var s:Int = 0
    while (a>0){
        if(s < a%10)
            s = a%10
        a /= 10
    }

    return s
}
fun pr(b:Int):Int {
    var a:Int = b
    var s:Int = 1
    while (a>0){
        s *= a%10
        a /= 10
    }

    return s
}
fun sum(b:Int):Int {
    var a:Int = b
    var s:Int = 0
    while (a>0){
        s += a%10
        a /= 10
    }

    return s
}
fun inputNum(): Int {
    print("Введите число: ")
    val s: String? = readLine()
    val ss: String = s.toString()
    return ss.toInt()

}
fun method1(b:Int):Int{
    var a:Int = b
    var n:Int = 0
    for (i in 2..a){
        if (i%2 == 0)
            for (j in 2..i){
                if (a%j==0)
                    if (i%j==0)
                       n+=1

                if (a%j==0)
                    if (i%j==0)
                       break
            }
    }
    return (n)
}
fun method2(b:Int):Int{
    var a:Int = b
    var s:Int = -1
    while (a>0){
        if(s < a%10 && (a % 10) % 3 != 0)
            s = a%10
        a /= 10
    }

    return s
}
fun method3(b:Int):Int{
    var a:Int = b
    var n:Int = 1
    var b:Int = 1
    for (i in 2..a) {
        if (a%i == 0)
            n = i
        break
    }
    for (i in 2..a){

        for (j in 2..i){

            if (a % j == 0)
                if (i % j == 0)
                    if (i % n != 0)
                        b = i
            if (a % j == 0)
                if (i % j == 0)
                    if (i % n != 0)
                        break
        }
    }
    n = 0
    a = b
    while (b>0){
        if (b%10<5)
            n += b%10
        b /= 10
    }
    return (a * n)
}