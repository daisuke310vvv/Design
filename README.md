## Design Management Pattern
Color Management in Swift

## Usage
Define your project's design as an enum like this.

```swift
enum Color: String {
	case Theme01    = "#ff00ff"
	case Theme02    = "#00ff00"

	case Twitter    = "#00aced"
	case Facebook   = "#305097"
	case Line       = "#5ae628"
	case Instagram  = "#3f729b"

	case White      = "#ffffff"
	case Black      = "#000000"
}

enum Font: CGFloat {
	// Size
	case S  = 12.0
		case M  = 16.0
		case L  = 20.0

		// Style
		enum Style:String {
			case Reguler    = "HiraKakuProN-W3"
			case Bold       = "HiraKakuProN-W6"
		}

	func name(style: Style) -> String {
		return style.rawValue
	}

}
```

Then,  you can use it like this below.

```swift
	let label1 = UILabel()
	label1.backgroundColor = Design.color(.Theme01)
	label1.textColor = Design.color(.White)
	label1.font = Design.font(.M)

	let label2 = UILabel()
	label2.backgroundColor = Design.color(.Twitter)
	label2.textColor = Design.color(.Black, alpha: 0.8)
	label2.font = Design.font(.S, style: .Bold)
```
