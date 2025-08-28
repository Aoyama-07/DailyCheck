@Component
export struct CapsuleButton {
  @Prop title: string
  @Prop onTap: (event: ClickEvent) => void = () => {}

  build() {
    Text(this.title)
      .padding({ left: 24, right: 24, top: 12, bottom: 12 })
      .backgroundColor('#3B82F6')
      .borderRadius(20)
      .fontColor(Color.White)
      .onClick(this.onTap)   // 这里用 ArkUI 的原生 onClick
  }
}

