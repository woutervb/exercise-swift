// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel {
    case trace
    case debug
    case info
    case warning
    case error
    case fatal
    case unknown

    init(_ log: String){
        let shrt = log.dropFirst(1).prefix(3)
        switch shrt {
            case "TRC": self = .trace
            case "DBG": self = .debug
            case "INF": self = .info
            case "WRN": self = .warning
            case "ERR": self = .error
            case "FTL": self = .fatal
            default: self = .unknown
        }
    }

    func shortFormat(message: String) -> String {
        switch self {
            case .trace:
            return "0:\(message)"
            case .debug:
            return "1:\(message)"
            case .info:
            return "4:\(message)"
            case .warning:
            return "5:\(message)"
            case .error:
            return "6:\(message)"
            case .fatal:
            return "7:\(message)"
            case .unknown:
            return "42:\(message)"
        }
    }
}