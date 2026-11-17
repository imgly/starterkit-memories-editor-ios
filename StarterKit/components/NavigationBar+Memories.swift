import IMGLYEditor

// MARK: - Navigation Bar

extension MemoriesEditorConfiguration {
  static var defaultNavigationBar: NavigationBar.Configuration {
    NavigationBar.Configuration { builder in
      builder.items { _ in
        NavigationBar.ItemGroup(placement: .topBarLeading) {
          NavigationBar.Buttons.closeEditor()
        }
        NavigationBar.ItemGroup(placement: .principal) {
          NavigationBar.Buttons.undo()
          NavigationBar.Buttons.redo()
        }
        NavigationBar.ItemGroup(placement: .topBarTrailing) {
          // The fullscreen preview has its own controls, so export shows in edit mode only.
          NavigationBar.Buttons.export(isVisible: { !$0.state.isCreating && $0.state.viewMode == .edit })
        }
      }
    }
  }
}
