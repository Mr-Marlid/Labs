fun main(args: Array<String>){
    task5()
}
fun task1() {
    println("Hello, world!")
}
fun inputName(): String? {
    print("Ваше имя: ")
    return readLine()
}

fun task3() {
    val name = inputName()
    println("Привет, $name!")
}
fun task5(){
    val name = inputName()
    println("$name, какой твой любимый язык программирования(на английском языке пожалуйста)?")
    val pl: String? = readLine()
    print("${answer(pl)}")
}
fun answer(pl: String?) =
    when(pl) {
        "Prolog","Kotlin" -> "Вы подлиза!"
        "C#", -> "Соболезную"
        "C++" -> "Это Python на максималках?"
        "Python" -> "Хороший язык"
        "Pascal" -> "Для 5 класса неплохо"
        else -> "Что это за язык такой"
    }