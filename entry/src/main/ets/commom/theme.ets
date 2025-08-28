interface AppColorsType {
  primary: Resource;
  secondary: Resource;
  bg: Resource;
}

export const AppColors: AppColorsType = {
  primary: $r('app.color.brand_primary'),
  secondary: $r('app.color.brand_secondary'),
  bg: AppStorage.Get('isDark') ? $r('app.color.bg_dark') : $r('app.color.bg_light')
}
