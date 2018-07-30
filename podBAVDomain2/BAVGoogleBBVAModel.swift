//
// Created by Javier on 21/06/18.
// Copyright (c) 2018 GoNet. All rights reserved.
//

public class BAVGoogleBBVAModel: NSObject {

    private var _idGoogleBbva: Int?
    private var _uid: String?
    private var _displayName: String?
    private var _photoUrl: String?
    private var _email: String?
    private var _phoneNumber: String?
    private var _idPushToken: String?

    public init(dictionary: NSDictionary?) {
        super.init()
        if let dc = dictionary {
            _idGoogleBbva   = dc.object(forKey: "id_user") as? Int
            _displayName    = dc.object(forKey: "display_name") as? String
            _email          = dc.object(forKey: "email") as? String
        }
    }

    public var IdGoogleBBVA: Int {
        get {
            return _idGoogleBbva ?? -1
        }
        set {
            _idGoogleBbva = newValue
        }
    }

    public var Uid: String {
        get {
            return _uid ?? String.Empty
        }
        set {
            _uid = newValue
        }
    }

    public var DisplayName: String {
        get {
            return _displayName ?? String.Empty
        }
        set {
            _displayName = newValue
        }
    }

    public var PhotoUrl: String {
        get {
            return _photoUrl ?? String.Empty
        }
        set {
            _photoUrl = newValue
        }
    }

    public var Email: String {
        get {
            return _email ?? String.Empty
        }
        set {
            _email = newValue
        }
    }

    public var PhoneNumber: String {
        get {
            return _phoneNumber ?? String.Empty
        }
        set {
            _phoneNumber = newValue
        }
    }

    public var IdPushToken: String {
        get {
            return _idPushToken ?? String.Empty
        }
        set {
            _idPushToken = newValue
        }
    }
}
