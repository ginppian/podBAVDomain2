//
// Created by Javier on 21/06/18.
// Copyright (c) 2018 GoNet. All rights reserved.
//

public class BAVPortfolioModel: NSObject {

    private var _idPortfolio: Int?
    private var _namePortfolio: String?
    private var _dicProgram: [String: BAVProgramModel] = [:]

    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _idPortfolio   = dc.object(forKey: "id_portfolio") as? Int
            _namePortfolio = dc.object(forKey: "name_portfolio") as? String
        }
    }

    public var IdPortfolio: Int {
        return _idPortfolio ?? -1
    }

    public var NamePortfolio: String {
        get {
            return _namePortfolio ?? String.Empty
        }
        set {
            _namePortfolio = newValue
        }
    }
    
    public var DicProgram: [String: BAVProgramModel] {
        get {
            return _dicProgram
        }
        set {
            _dicProgram =  newValue
        }
    }
}
