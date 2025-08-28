@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      TabContent() {
        HomePage()
      }.tabBar(this.TabBuilder('首页', 0, $r('app.media.ic_home')))

      TabContent() {
        HistoryPage()
      }.tabBar(this.TabBuilder('历史', 1, $r('app.media.ic_history')))

      TabContent() {
        StatsPage()
      }.tabBar(this.TabBuilder('统计', 2, $r('app.media.ic_stats')))

      TabContent() {
        SettingsPage()
      }.tabBar(this.TabBuilder('我的', 3, $r('app.media.ic_settings')))
    }
    .animationDuration(200)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }

  @Builder
  TabBuilder(title: string, index: number, icon: Resource) {
    Column() {
      Image(icon)
        .width(24)
        .height(24)
        .fillColor(this.currentIndex === index ? '#3B82F6' : '#999')

      Text(title)
        .fontSize(12)
        .fontColor(this.currentIndex === index ? '#3B82F6' : '#999')
    }
    .width('100%')
    .height(56)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = index
      this.tabsController.changeIndex(index)
    })
  }
}

// 确保页面组件存在，如果没有请添加这些组件
@Component
struct HomePage {
  build() {
    Text('首页')
  }
}

@Component
struct HistoryPage {
  build() {
    Text('历史')
  }
}

@Component
struct StatsPage {
  build() {
    Text('统计')
  }
}

@Component
struct SettingsPage {
  build() {
    Text('我的')
  }
}
