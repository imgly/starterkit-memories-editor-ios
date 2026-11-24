# Memories Editor Starter Kit for iOS

Turn photos and video clips into a shareable memory: a title card, slow Ken Burns motion, a transition between every slide, a style and a soundtrack, exported as MP4. Built with [CE.SDK](https://img.ly/creative-sdk) by [IMG.LY](https://img.ly).

<p>
  <a href="https://img.ly/docs/cesdk/ios/quickstart/">Documentation</a> |
  <a href="https://img.ly/showcases/cesdk">Live Demo</a>
</p>

## Getting Started

### Prerequisites

- [Xcode](https://developer.apple.com/xcode/)
- Swift 6+
- iOS 16+ deployment target

### Clone the Repository

```bash
git clone https://github.com/imgly/starterkit-memories-editor-ios.git
cd starterkit-memories-editor-ios
```

### Open in Xcode

```bash
open StarterKit-MemoriesEditor.xcodeproj
```

Xcode will resolve the Swift Package dependencies automatically. Select an iOS Simulator or device and press **Run** (Cmd+R).

## Configuration

### License Key

Add your CE.SDK license key in `StarterKit-MemoriesEditor/Secrets.swift`:

```swift
let secrets = Secrets(
  // ...
  licenseKey: "your-license-key"
)
```

Without a license key, the editor runs in evaluation mode with a watermark.

### Customization

The starter kit files in `StarterKit/` show where to change the slideshow:

- **Timing, page size, title** — `MemoriesConstants.swift`
- **Slide animations** — `MemoriesAnimations.swift`
- **Styles: filters, backdrops, fonts and transitions** — `style/MemoriesStyle.swift`
- **Timeline assembly** — `scene/`
- **Callbacks** — `callbacks/` (onCreate, onExport)
- **Components** — `components/` (navigation bar, dock, bottom panel)

## Architecture

```
starterkit-memories-editor-ios/
├── StarterKit-MemoriesEditor.xcodeproj/
├── StarterKit-MemoriesEditor/
│   ├── StarterKit_MemoriesEditorApp.swift  # @main entry point
│   ├── ContentView.swift                  # Root view launching the starter kit
│   └── Secrets.swift                      # License key configuration
└── StarterKit/
    ├── MemoriesEditorStarterKit.swift     # The flow: media selection, then the editor
    ├── MemoriesEditorConfiguration.swift
    ├── MemoriesModel.swift                # Shared state of the flow and the editor
    ├── callbacks/                         # Lifecycle callbacks
    ├── components/                        # UI component customization
    ├── media/                             # Picked media, import and thumbnails
    ├── scene/                             # Tracks, clips, transitions and the title card
    ├── style/                             # Style catalog and how a style is applied
    ├── views/                             # Selection screen, media grid, timeline strip, sheets
    └── ly.img.memories.style/             # Style backdrops and thumbnails, as a local asset source
```

## Key Capabilities

- **Media Selection** — Pick photos and videos, add a title, reorder by drag and drop, sort by capture date
- **Slideshow** — One clip track with a transition between every slide and a Ken Burns drift on every photo
- **Title Card** — The title over a burst of the picked photos
- **Styles** — Filter, backdrop, title font and transition, applied to the whole slideshow
- **Timeline Strip** — Follows playback and seeks on tap or drag
- **Audio** — One soundtrack from the audio library, and the slideshow volume
- **Export** — MP4 with progress and the system share sheet

## Documentation

For complete integration guides and API reference, visit the [CE.SDK iOS Documentation](https://img.ly/docs/cesdk/ios/quickstart/).

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

<p align="center">Built with <a href="https://img.ly/creative-sdk?utm_source=github&utm_medium=project&utm_campaign=starterkit-memories-editor">CE.SDK</a> by <a href="https://img.ly?utm_source=github&utm_medium=project&utm_campaign=starterkit-memories-editor">IMG.LY</a></p>
