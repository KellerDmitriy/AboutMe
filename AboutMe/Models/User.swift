//
//  User.swift
//  AboutMe
//
//  Created by Келлер Дмитрий on 04.04.2023.
//



struct User {
    let login: String
    let password: String
    let person: Person
   
    static func getUser() -> User {
        User(
            login: "Alexey",
            password: "1",
            person: Person(
                name: "Dmitriy",
                fullname: "Keller",
                dateOfBirth: "11.07.1987",
                familyStatus: .married,
                biography: Biography (
                    personal: "Родился в г. Фрунзе, сейчас живу в г. Санкт-Петербурге. У меня прекрасная жена Юлия, двое деток: сын Михаил, ему почти 3 года, и доча Дарья, ей пол годика...",
                    education: "Высшее образование",
                    dateEducation: "2005-2010",
                    speciality: "инжинер",
                    placeOfJob: "Opra&Co",
                    jobTitle: "инжинер"),
            avatar: "",
            photogallery: [""]
           )
        )
    }
}

struct Person {
    let name: String
    let fullname: String
    let dateOfBirth: String
    let familyStatus: FamilyStatus
    let biography: Biography
    let avatar: String
    let photogallery: [String]
}

enum FamilyStatus: String {
    case single
    case married
}

struct Biography {
    let personal: String
    let education: String
    let dateEducation: String
    let speciality: String
    let placeOfJob: String
    let jobTitle: String
}
