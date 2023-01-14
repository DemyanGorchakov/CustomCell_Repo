//
//  Service.swift
//  CustomCell
//
//  Created by Демьян Горчаков on 09.01.2023.
//

import Foundation

class Service {
    
    func getAllCards(completion: @escaping ([Card])-> ()) {
        
        let userCards: [Card] = [
            Card(post: Post(title: "Жизнь", date: "09.11.21", image: "cactus", text: "Неоконченное произведение Петра Чайковского, над которым он, предположительно, работал в 1890 или 1891 году.")),
            Card(post: Post(title: "Неаполь Скифский", date: "10.11.21", image: "cactus2", text: "древний город, одна из скифских царских крепостей в Крыму, столица позднескифского государства.")),
            Card(post: Post(title: "Notice 3", date: "11.11.21", image: "cactus3", text: "12888832 9283"))
        ]
        
        completion(userCards)
    }
}
