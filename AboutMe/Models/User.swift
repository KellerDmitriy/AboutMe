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
                information: Information(
                    personal: "Родился в г. Фрунзе, сейчас живу в г. Санкт-Петербурге. У меня прекрасная жена Юлия, двое деток: сын Михаил, ему почти 3 года, и доча Дарья, ей пол годика...",
                    professional: Professional(
                        education: "Высшее образование",
                        dateEducation: "2005-2010",
                        speciality: "инжинер",
                        placeOfJob: "Opra&Co",
                        jobTitle: "инжинер"
                    )
                ),
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
    let information: Information
    let avatar: String
    let photogallery: [String]
}

enum FamilyStatus: String {
    case single
    case married
}

struct Information {
    let personal: String
    let professional: Professional
}

struct Professional {
    let education: String
    let dateEducation: String
    let speciality: String
    let placeOfJob: String
    let jobTitle: String
}
