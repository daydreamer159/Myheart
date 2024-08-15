import Goods from '../data/Goods'
import { router } from '@kit.ArkUI'

@Component
export default struct RightSiderBar{
  @Prop myitem:Goods
  @State newitem:Goods=new Goods(1,"","","","","","",false,"",$r("app.media.bj"))
  build() {
    Row() {
      Image(this.myitem.pic)
        .width(120)
        .height(110)
      Column() {
        Text(this.myitem.name)
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({ left: 10, top: 5 })
        Text(this.myitem.total_price)
          .fontSize(20)
          .fontColor(Color.Red)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({ left: 10, top: 5 })
        Text(this.myitem.used_price)
          .fontSize(15)
          .fontColor(Color.Green)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({ left: 10, top: 5 })
        Text(this.myitem.company)
          .fontSize(12)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({ left: 10, top: 5 })
        Text("可以捐助")
          .fontSize(10)
          .fontColor(Color.Blue)
          .width("100%")
          .textAlign(TextAlign.Start)
          .margin({ left: 10, top: 5 })
      }
    }
    .margin({ bottom: 10, top: 10 })
    .onClick(()=>{
      //每个导航页右边各项只要点击就进入详情页显示
      router.pushUrl({
        url:"pages/IsLandComponent",
        params:{item:this.myitem}
      })
    })
  }
}