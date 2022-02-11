import Foundation

extension String {
    public func asCString() -> UnsafeMutablePointer<Int8>? {
        return UnsafeMutablePointer(mutating:(self as NSString).utf8String)
    }
}
