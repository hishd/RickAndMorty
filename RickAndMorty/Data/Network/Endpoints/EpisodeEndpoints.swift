//
//  EpisodeEndpoints.swift
//  RickAndMorty
//
//  Created by Hishara Dilshan on 2024-06-11.
//

import Foundation

enum EpisodeEndpoints {
    static func allEpisodes(from page: Int?) -> ApiEndpoint<EpisodeResponseDTO> {
        var params: [String: Int] = [:]
        if let page = page {
            params["page"] = page
        }
        
        return .init(path: "episode", method: .get, queryParameters: params)
    }
    
    static func searchEpisodes(by name: String, from page: Int?) -> ApiEndpoint<EpisodeResponseDTO> {
        var params: [String: Any] = [:]
        params["name"] = name
        
        if let page = page {
            params["page"] = page
        }
        
        return .init(path: "episode", method: .get, queryParameters: params)
    }
}