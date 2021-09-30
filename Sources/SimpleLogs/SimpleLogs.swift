import Foundation

// TODO: Limit spamming logs. Cache? Timer?
// TODO: Handle DEBUG/RELEASE cases
// TODO: Dump to file?

@discardableResult
public func INFO(_ message: String,
                   fn:      String = #function,
                   file:    String = #fileID,
                   line:    Int    = #line)
-> String
{
    let result = "ℹ️ INFO: " + fn + " (" + file + " @ ln " + String(line) + "): " + message

    NSLog(result)
    return result
}

@discardableResult
public func WARNING(_ message: String,
                      fn:      String = #function,
                      file:    String = #fileID,
                      line:    Int    = #line)
-> String
{
    let result = "⚠️ WARNING: " + fn + " (" + file + " @ ln " + String(line) + "): " + message

    NSLog(result)
    return result
}

@discardableResult
public func ERROR(_ message: String,
                    fn:      String = #function,
                    file:    String = #fileID,
                    line:    Int    = #line)
-> String
{
    let result = "⛔️ ERROR: " + fn + " (" + file + " @ ln " + String(line) + "): " + message

    NSLog(result)
    return result
}
