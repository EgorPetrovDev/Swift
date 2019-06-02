//
//  Model.swift
//  NewsApp
//
//  Created by EasyFate on 28.05.2019.
//  Copyright © 2019 EgorPetrov. All rights reserved.
//

import Foundation

var articles: [Article] {
    let data = try? Data(contentsOf: urltoData)
    if data == nil {
        return []
    }
    
    
    let rootDictionaryAny = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
    if rootDictionaryAny == nil {
        return []
    }
    
    let rootDictionary = rootDictionaryAny as? Dictionary<String, Any>
    if rootDictionary == nil {
        return []
    }
    
    if let array = rootDictionary!["articles"] as? [Dictionary<String, Any>] {
        var returnArray: [Article] = []
        for dict in array {
            let newArticle = Article(dictionary: dict)
            returnArray.append(newArticle)
            
        }
        
        return returnArray
    }
    return []
}

var urltoData: URL {
    let path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]+"/data.json"
    let urlPath = URL(fileURLWithPath: path)
    return urlPath
}



func loadNews(completionHandler:(()->Void)?) {
    let url = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2019-04-28&sortBy=publishedAt&apiKey=12f636c583f94492a92b58ccafb22772")
    let session = URLSession(configuration: .default)
    
    let downloadTask = session.downloadTask(with: url!) { (urlFile, response , error) in
        if urlFile != nil {
            try? FileManager.default.copyItem(at: urlFile!, to: urltoData)
            completionHandler?()

        }
    }
    downloadTask.resume()
}


