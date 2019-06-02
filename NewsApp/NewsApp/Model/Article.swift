//
//  Article.swift
//  NewsApp
//
//  Created by EasyFate on 28.05.2019.
//  Copyright © 2019 EgorPetrov. All rights reserved.
//

import Foundation

//{
//    -"source": {
//        "id": null,
//        "name": "Prnewswire.com"
//    },
//    "author": null,
//    "title": "Switcheo Launches Multi-Chain DEX on EOS Blockchain",
//    "description": "SINGAPORE, May 28, 2019 /PRNewswire/ -- Switcheo, a leading decentralized exchange (DEX) established on the Ethereum and NEO blockchains, today announced the launch of its DEX on the EOS blockchain in collaboration with Obolus. Obolus is a blockchain research…",
//    "url": "https://www.prnewswire.com/news-releases/switcheo-launches-multi-chain-dex-on-eos-blockchain-300853822.html",
//    "urlToImage": "https://www.prnewswire.com/content/dam/prnewswire/common/prn_facebook_sharing_logo.jpg",
//    "publishedAt": "2019-05-28T10:00:00Z",
//    "content": "SINGAPORE, May 28, 2019 /PRNewswire/ -- Switcheo, a leading decentralized exchange (DEX) established on the Ethereum and NEO blockchains, today announced the launch of its DEX on the EOS blockchain in collaboration with Obolus. Obolus is a blockchain research… [+2420 chars]"
//},

struct Article {
    var author: String
    var title: String
    var description: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var content: String
    var sourceName: String
    
    init(dictionary: Dictionary<String, Any>) {
        author = dictionary["author"] as? String ?? ""
        title = dictionary["title"] as? String ?? ""
        description = dictionary["description"] as? String ?? ""
        url = dictionary["url"] as? String ?? ""
        urlToImage = dictionary["urlToImage"] as? String ?? ""
        publishedAt = dictionary["publishedAt"] as? String ?? ""
        content = dictionary["content"] as? String ?? ""
        sourceName = (dictionary["source"]as? Dictionary<String, Any> ?? ["":""])["name"] as? String ?? ""
        
    }
}
