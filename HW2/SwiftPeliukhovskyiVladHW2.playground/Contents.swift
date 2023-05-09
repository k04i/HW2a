let months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"]

var monthDictionary = [Int: String]()
for (index, month) in months.enumerated() {
            monthDictionary[index] = month
}
var calendar = [Int: [String]]()
for year in 1970...2022{
            calendar[year] = months
}
var days = [Int]()
    for day in 1...31 {
        days.append(day)
    }
var calendarPro = [Int : [String: [Int]]] ()
for (year, months) in calendar {
    var monthDictionary = [String: [Int]]()
    for month in months {
            monthDictionary[month] = days
    }
    calendarPro[year] = monthDictionary
}

