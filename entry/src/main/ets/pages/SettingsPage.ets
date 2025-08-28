@Entry
@Component
struct SettingsPage {
  build() {
    Column() {
      Toggle({ type: ToggleType.Switch, isOn: AppStorage.Get('isDark') })
        .onChange((isOn: boolean) => AppStorage.Set('isDark', isOn))
    }
  }
}
