//
//  BAVRankingProjectModel.swift
//  BAVService
//
//  Created by Javier Bolaños on 29/06/18.
//  Copyright © 2018 bancomer. All rights reserved.
//

extension String {
    private static var sharedInstance: String {
        struct Static {
            static var instance: String?
        }
        
        if Static.instance == nil {
            Static.instance = String()
        }
        
        return Static.instance!
    }
    
    static var Empty: String {
        return self.sharedInstance
    }
}

public class BAVRankingProjectModel: NSObject {
    
    private var _position: Int?
    private var _scoreSum: Int?
    private var _starNumber: Double?
    private var _namePortfolio: String?
    private var _nameProgram: String?
    private var _nameProject: String?

    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _position       = dc.object(forKey: "position") as? Int
            _scoreSum       = dc.object(forKey: "score_sum") as? Int
            _starNumber     = dc.object(forKey: "star_number") as? Double
            _namePortfolio  = dc.object(forKey: "name_portfolio") as? String
            _nameProgram    = dc.object(forKey: "name_program") as? String
            _nameProject    = dc.object(forKey: "name_project") as? String
        }
    }
    
    public var Position: Int {
        return _position ?? 0
    }
    
    public var ScoreSum: Int {
        return _scoreSum ?? 0
    }
    
    public var StarNumber: Double {
        return _starNumber ?? 0.0
    }
    
    public var NamePortfolio: String {
        return _namePortfolio ?? String.Empty
    }
    
    public var NameProgram: String {
        return _nameProgram ?? String.Empty
    }
    
    public var NameProject: String {
        return _nameProject ?? String.Empty
    }
}
