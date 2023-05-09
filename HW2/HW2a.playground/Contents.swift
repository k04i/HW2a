let months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"]

let monthDictionary = months.enumerated().reduce(into: [Int: String]()) { result, tuple in
    result[tuple.offset] = tuple.element
}

let calendar = (1970...2022).reduce(into: [Int: [String]]()) { result, year in
    result[year] = months
}

let days = (1...31).reduce(into: [Int]()) { result, day in
    result.append(day)
}

let calendarPro = calendar.reduce(into: [Int : [String: [Int]]]()) { result, yearMonths in
    let year = yearMonths.key
    let months = yearMonths.value
    let monthDictionary = months.reduce(into: [String: [Int]]()) { result, month in
        result[month] = days
    }
    result[year] = monthDictionary
}
