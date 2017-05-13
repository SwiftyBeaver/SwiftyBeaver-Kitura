import SwiftyBeaver
import LoggerAPI

public final class SwiftyBeaverKitura: Logger {

    private let sb = SwiftyBeaver.self

    public init(destinations:[BaseDestination]) {
        destinations.forEach { destination in
            sb.addDestination(destination)
        }
    }
    public func log(_ type: LoggerMessageType, msg: String,
                    functionName: String, lineNum: Int, fileName: String ) {

        var sbLevel: SwiftyBeaver.Level = .error

        switch type {
        case .debug:
            sbLevel = .debug
        case .info:
            sbLevel = .info
        case .entry:
            sbLevel = .verbose
        case .exit:
            sbLevel = .verbose
        case .error:
            sbLevel = .error
        case .verbose:
            sbLevel = .verbose
        case .warning:
            sbLevel = .warning
        }

        sb.custom(level: sbLevel, message: msg,
                  file: fileName, function: functionName,line: lineNum)
    }


    public func isLogging(_ level: LoggerMessageType) -> Bool {
        return true
    }
}
