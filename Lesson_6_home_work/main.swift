import Foundation

//Урок 6 ДЗ
/*
 №1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров
 Параметры:
 Название
 Производитель
 Вес
 Штрих-код
 Цена
 Скидка (если есть - указываете, если нет - nil)
 Наличие (если есть - указываете, если нет - nil)
 В конце вывести общее количество товаров (какого вида сколько товаров) и общую стоимость товаров магазина
 */
var name:       [String] = []
var producer:   [String] = []
var weight:     [Int] = []
var barcode:    [Int] = []
var price:      [Int] = []
var discount:   [Int] = []
var amount:     [Int] = []
var total:      [Int] = []
var available:  [String] = []
var totalm = 0
var count  = 0
var Title  = ""

while Title != "выход" {
    print("Чтобы добавить товар в базу данных, введите ниже 7 пунктов:\n(для завершения введите `выход`\nНазвание товара:")
    let Title = readLine()!
    if Title == "выход" {
        break
    }
    
    name.append(Title)
    print("Производитель")
    let producerReadline = readLine()!
    producer.append(producerReadline)
    print("Вес (кг)")
    let weightReadline = Int(readLine()!)
    weight.append(weightReadline ?? 0)
    print("Штрих-код")
    let barcodeReadline = Int(readLine()!)
    barcode.append(barcodeReadline ?? 0)
    print("Цена (сом)")
    let priceReadline = Int(readLine()!)
    price.append(priceReadline ?? 0)
    print("Скидка (%)")
    let discountReadline = Int(readLine()!)
    discount.append(discountReadline ?? 0)
    print("Количество (шт)")
    let amountReadline = Int(readLine()!)
    amount.append(amountReadline ?? 0)
    price.append(priceReadline ?? 0)
    print("Наличие в магазине (да или нет)")
    let availableReadline = readLine()!
    available.append(availableReadline)
    
    
    total.append(amount[count]*price[count]-amount[count]*price[count]*discount[count]/100)
    count += 1
}
for i in 0..<count {
    print("Штрих-код: \(barcode[i]). \(name[i]) / \(producer[i]) / \(weight[i]) кг / цена - \(price[i]) / количество - \(amount[i]) шт / скидка - \(discount[i]) % / сумма - \(total[i]) сом / наличие - \(available[i])  ")
    totalm += total[i]
}
print("В Магазине имеется товаров на общую сумму - \(totalm) сом")
print("")
/*
 №2. Составить программу, которая будет сохранять имя пользователя, пароль и секретное слово(может быть, а может быть не указано). В конце проверить, если человек использует одинаковые пароли - написать “Пароли на Mail.Ru и Facebook похожи. Рекомендуем изменить пароль”(например)
 */
var title:      [String] = []
var login:      [String] = []
var password:   [String] = []
var Help:       [String] = []
var index = -1
let c = 0

while c == 0 {
    print("Для сохранения ваших личных данных, введите ниже информацию\n( для завершения введите `готово` )\nНазвание соц сети:")
    let newTitle = readLine()!
    if newTitle == "готово" {
        break
    }
    index += 1
    title.append(newTitle)
    print("Ваш логин или никнейм:")
    let newLogin = readLine()!
    login.append(newLogin)
    
    print("Пароль:")
    var newPassword = readLine()!
    for i in 0..<index {
        while newPassword == password[i] {
            print("Извините, Ваши пароли совпадают с соц сетью \(title[i]). Это небезопасно.\nПожалуйста, введите другой пароль:")
            newPassword = readLine()!
        }
    }
    password.append(newPassword)
    print("При желании укажите `Секретное слово`")
    let newHelp = readLine()!
    Help.append(newHelp)
}

for i in 0...index {
    print("Соц сеть: \(title[i]), Логин: \(login[i]), Пароль: \(password[i]), Секретное слово: \(Help[i])")
}


