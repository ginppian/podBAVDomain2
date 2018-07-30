//
//  BAVMessageProjectModel.swift
//  BAVService
//
//  Created by Javier Bolaños on 29/06/18.
//  Copyright © 2018 bancomer. All rights reserved.
//

public class BAVMessageProjectModel: NSObject {
    
    private var _message: String?
    private var _nameEmployee: String?
    private var _urlImageEmployee: String?
    private var _dateMessageCreate: String?
    private var _image: UIImage?
    private var _verified = false
    
    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _message            = dc.object(forKey: "message") as? String
            _nameEmployee       = dc.object(forKey: "name_employee") as? String
            _urlImageEmployee   = dc.object(forKey: "url_image_employee") as? String
            _dateMessageCreate  = dc.object(forKey: "date_message_create") as? String
        }
    }
    
    public var Message: String {
        return _message ?? String.Empty
    }
    
    public var NameEmployee: String {
        return _nameEmployee ?? String.Empty
    }
    
    public var UrlImageEmployee: String {
        return _urlImageEmployee ?? String.Empty
    }
    
    public var DateMessageCreate: String {
        return _dateMessageCreate ?? String.Empty
    }
    
    public var EmployeeImage: UIImage? {
        get {
            return _image
        }
        set {
            _image = newValue
        }
    }
    
    public var Verified: Bool {
        get {
            return _verified
        }
        set {
            _verified = newValue
        }
    }
}
