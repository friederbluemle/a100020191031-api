#if swift(>=4.0)
@objcMembers public class WalmartItemAPI: NSObject  {

    static let kRequestAddItem = "com.a100020191031Api.ern.api.request.addItem";

    static let kRequestFindItems = "com.a100020191031Api.ern.api.request.findItems";
    static let kEventItemAdded = "com.a100020191031Api.ern.api.event.itemAdded";


    public lazy var events: WalmartItemAPIEvents = {
        return WalmartItemEvents()
    }()


    public lazy var requests: WalmartItemAPIRequests = {
        return WalmartItemRequests()
    }()
}

@objcMembers public class WalmartItemAPIEvents: NSObject {
    public func addItemAddedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func removeItemAddedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventItemAdded(itemId: String) {
        assertionFailure("should override")

    }
}

@objcMembers public class WalmartItemAPIRequests: NSObject {
    public func registerAddItemRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func registerFindItemsRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterAddItemRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFindItemsRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func addItem(item: Item, responseCompletionHandler: @escaping (Bool?, ElectrodeFailureMessage?) -> ()) {
        assertionFailure("should override")
    }

    public func findItems(limit: Int, responseCompletionHandler: @escaping ([Item]?, ElectrodeFailureMessage?) -> ()) {
        assertionFailure("should override")
    }

}
#else
public class WalmartItemAPI: NSObject  {

    static let kRequestAddItem = "com.a100020191031Api.ern.api.request.addItem";

    static let kRequestFindItems = "com.a100020191031Api.ern.api.request.findItems";
    static let kEventItemAdded = "com.a100020191031Api.ern.api.event.itemAdded";


    public lazy var events: WalmartItemAPIEvents = {
        return WalmartItemEvents()
    }()


    public lazy var requests: WalmartItemAPIRequests = {
        return WalmartItemRequests()
    }()
}

public class WalmartItemAPIEvents: NSObject {
    public func addItemAddedEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func removeItemAddedEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventItemAdded(itemId: String) {
        assertionFailure("should override")

    }
}

public class WalmartItemAPIRequests: NSObject {
    public func registerAddItemRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }

    public func registerFindItemsRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterAddItemRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFindItemsRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func addItem(item: Item, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func findItems(limit: Int, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

#endif
