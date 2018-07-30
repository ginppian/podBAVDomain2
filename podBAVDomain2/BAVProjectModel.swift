//
// Created by Javier on 21/06/18.
// Copyright (c) 2018 GoNet. All rights reserved.
//

public class BAVProjectModel: NSObject {
    private var _idProject: Int?
    private var _nameProject: String?
    private var _evaluated: Bool?
    private var _enabled: Bool?

    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _idProject   = dc.object(forKey: "id_project") as? Int
            _nameProject = dc.object(forKey: "name_project") as? String
            _evaluated   = dc.object(forKey: "evaluated") as? Bool
            _enabled     = dc.object(forKey: "enabled") as? Bool
        }
    }

    public var IdProject: Int {
        return _idProject ?? -1
    }

    public var NameProject: String {
        get {
            return _nameProject ?? String.Empty
        }
        set {
            _nameProject = newValue
        }
    }

    public var Evaluated: Bool {
        get {
            return _evaluated ?? false
        }
        set {
            _evaluated = newValue
        }
    }
    
    public var Enabled: Bool {
        return _enabled ?? true;
    }
}
