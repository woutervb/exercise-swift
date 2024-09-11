struct Size {
    var width = 80
    var height = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

struct Position {
    var x: Int = 0
    var y: Int = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}

class Window {
    var title: String = "New Window"
    var screenSize: Size = .init(width: 800, height: 600)
    var size: Size = .init()
    var position: Position = .init()
    var contents: String?

    func resize(to newSize: Size) {
        var newWidth = 0
        if newSize.width + position.x > screenSize.width {
            newWidth = screenSize.width - position.x
        } else if newSize.width < 1 {
            newWidth = 1
        } else {
            newWidth = newSize.width
        }

        var newHeight = 0
        if newSize.height + position.y > screenSize.height {
            newHeight = screenSize.height - position.y
        } else if newSize.height < 1 {
            newHeight = 1
        } else {
            newHeight = newSize.height
        }

        size.resize(newWidth: newWidth, newHeight: newHeight)
    }

    func move(to newPosition: Position) {
        var newX = 0
        if newPosition.x > screenSize.width - size.width {
            newX = screenSize.width - size.width
        } else if newPosition.x < 0 {
            newX = 0
        } else {
            newX = newPosition.x
        }

        var newY = 0
        if newPosition.y > screenSize.height - size.height {
            newY = screenSize.height - size.height
        } else if newPosition.y < 0 {
            newY = 0
        } else {
            newY = newPosition.y
        }

        position.moveTo(newX: newX, newY: newY)

        var newWidth = size.width
        if newX + newWidth > screenSize.width {
            newWidth = screenSize.width - newX
        }
        var newHeight = size.height
        if newY + newHeight > screenSize.height {
            newHeight = screenSize.height - newY
        }
        self.resize(to: Size(width: newWidth, height: newHeight))
    }

    func update(title: String) {
        self.title = title
    }

    func update(text: String?) {
        self.contents = if text?.isEmpty ?? true {
            nil
        } else {
            text
        }
    }

    func display() -> String {
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }

    init (title: String? = nil, position: Position? = nil, size: Size? = nil, contents: String? = nil) {
        if let title = title {
            self.title = title
        }

        if let position = position {
            self.position = position
        }

        if let size = size {
            self.size = size
        }

        if let contents = contents {
            self.contents = contents
        }
    }
}

let mainWindow = Window(title: "Main Window", position: Position(x: 100, y: 100), size: Size(width: 400, height: 300), contents: "This is the main window")
