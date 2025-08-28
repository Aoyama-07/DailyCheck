import { CapsuleButton } from '../components/CapsuleButton'

@Component
export struct HomePage {
  build() {
    Column({ space: 16 }) {
      Text('今日打卡')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .padding(24)

      // 这里留空，后续填功能
      Blank()

      CapsuleButton({ title: '立即打卡' })
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.bg_light'))
  }
}
