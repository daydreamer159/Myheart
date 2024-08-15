import IndexComponent from '../component/IndexComponent'
import MyNewSliderBar from '../component/MyNewSliderBar'
import Mine from '../component/Mine'
import IsLandComponent from './IsLandComponent'
import nav from '../mocjs/nav_data'
import MyIsLand from '../component/MyIsLand'
import Header from '../component/Header'

@Entry
@Component
struct Index {
  //导航栏,封装一个图标和文字集一体的tabBar，@Builder创建组件为tabBar参数
  //定义一个icon数组
  // @State tabicons: Array<Resource> = [$r("app.media.index_icon"),
  //   $r("app.media.give_icon"),
  //   $r("app.media.love_icon"),
  //   $r("app.media.mine_icon")]
  // //定义一个文本数组
  // @State tabtxts: Array<Resource> = [$r("app.string.nav_index"),
  //   $r("app.string.nav_give"),
  //   $r("app.string.nav_car"),
  //   $r("app.string.nav_mine")]
  //定义图片和文字
  //定义一个开关
  @State mynav_switch:number=0
  @Builder
  customerTabs(index: number) {
    Column() {
      Image(this.mynav_switch==index?nav[index].selectedIcon:nav[index].icon)
        .width(35)
        .margin({ bottom: 5 })
      Text(nav[index].mytxt)
        .fontColor(this.mynav_switch==index?nav[index].selected_color:nav[index].color)
    }
    .backgroundColor(this.mynav_switch==index?Color.Gray:Color.White)
    .width(80)
    .height(80)
  }

  build() {
    Flex() {
      //tabBar可以点击和onclick冲突
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          Flex({direction:FlexDirection.Column}){
            Header({isIndex:false,title:"首页"})
              .margin({bottom:-10})
            IndexComponent()
          }
        }.tabBar(this.customerTabs(0))

        TabContent() {
          Flex({direction:FlexDirection.Column}){
            Header({isIndex:false,title:"分类"})
            MyNewSliderBar()
          }
        }.tabBar(this.customerTabs(1))

        TabContent() {
          Flex({direction:FlexDirection.Column}){
            Header({isIndex:false,title:"捐助岛"})
            MyIsLand()
          }
        }.tabBar(this.customerTabs(2))

        TabContent() {
          Flex({direction:FlexDirection.Column}){
            Header({isIndex:false,title:"我的"})
            Mine()
          }
        }.tabBar(this.customerTabs(3))
      }
      //Tabs可以调onchange改变状态
      .onChange((index)=>{
        //记录当前开关的值变化
        this.mynav_switch=index
      })
    }
  }
}