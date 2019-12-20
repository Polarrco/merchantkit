
import Foundation

/// A `PurchaseDiscount` is made up of parameters that must be generated on an application's server, if you want to apply an available discount for a `Purchase`. The `offerIdentifier` corresponds to the `identifier` of a `SubscriptionTerms.RetentionOffer`.
/// You can supply this `PurchaseDiscount` when you commit a compatible purchase.
public struct PurchaseDiscount {
    /// The identifier of the offer. This is defined in App Store Connect.
    public let offerIdentifier: String
    /// An identifier for a cryptographic key/pair agreed with the App Store.
    public let keyIdentifier: String
    /// A one-time unique identifier generated by your server.
    public let nonce: UUID
    /// The timestamp, in milliseconds, when the signature was generated.
    public let timestamp: Int
    /// The signature generated by your server. The signature combines `offerIdentifier`, `keyIdentifier`, `nonce`, and `timestamp` properties when it is generated.
    public let signature: String
    
    public init(offerIdentifier: String, keyIdentifier: String, nonce: UUID, timestamp: Int, signature: String) {
        self.offerIdentifier = offerIdentifier
        self.keyIdentifier = keyIdentifier
        self.nonce = nonce
        self.timestamp = timestamp
        self.signature = signature
    }
}
