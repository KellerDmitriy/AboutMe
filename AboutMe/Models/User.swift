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
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let familyStatus: FamilyStatus
    let biography: String
    let professionalInfo: ProfessionalInfo
    let avatar: String
    let photogallery: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Dmitriy",
            surname: "Keller",
            dateOfBirth: "11.07.1987",
            familyStatus: .married,
            biography: "Я родился в г. Фрунзе, сейчас живу в г. Санкт-Петербурге. У меня прекрасная жена Юлия, у нас двое деток: сын Михаил, ему почти 3 года, и доча Дарья, ей пол года...",
            professionalInfo: ProfessionalInfo.getProfessionalInfo(),
            avatar: "",
            photogallery: [""]
        )
        
    }
}


enum FamilyStatus: String {
    case single
    case married
}

struct ProfessionalInfo {
    let education: String
    let dateEducation: String
    let speciality: String
    let placeOfJob: String
    let jobTitle: String
    let contacts: String
    
    static func getProfessionalInfo() -> ProfessionalInfo {
        ProfessionalInfo(
            education: "Высшее образование",
            dateEducation: "2005-2010",
            speciality: "инженер - программист",
            placeOfJob: "Morehairstyle",
            jobTitle: "парикмахер",
            contacts: "https://instagram.com/dmitriy_keller"
        )
    }
}
