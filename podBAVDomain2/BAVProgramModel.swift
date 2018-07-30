//
// Created by Javier on 21/06/18.
// Copyright (c) 2018 GoNet. All rights reserved.
//

public class BAVProgramModel: NSObject {

    private var _idProgram: Int?
    private var _nameProgram: String?
    private var _listProject: [BAVProjectModel] = []

    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _idProgram   = dc.object(forKey: "id_program") as? Int
            _nameProgram = dc.object(forKey: "name_Program") as? String
        }
    }

    public var IdProgram: Int {
        return _idProgram ?? -1
    }

    public var NameProgram: String {
        get {
            return _nameProgram ?? String.Empty
        }
        set {
            _nameProgram = newValue
        }
    }
    
    public var ListProject: [BAVProjectModel] {
        get {
            return _listProject
        }
        set {
            _listProject = newValue
        }
    }
}
