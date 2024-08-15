import Goods from '../data/Goods'

@Component
export default struct CarSiderBar {
  @Link sub_moneys: string
  @Link sub_objects: string
  @Prop myitem: Goods

  build() {
    Flex({
      direction: FlexDirection.Row,
      justifyContent: FlexAlign.Center
    }) {
      Row() {
        //单选钮
        Radio({ group: "mygroup", value: "" })
          .onChange((value) => {
            this.sub_moneys = 1 + ""
            this.sub_objects = "不捐赠物质"
          })
        Image(this.myitem.pic)
          .width(120)
          .height(200)
        Column() {
          Text(this.myitem.name)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })
          Text("捐赠期望值" + this.myitem.total_price)
            .fontSize(20)
            .fontColor(Color.Red)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })
          Text("已捐款数" + this.myitem.used_price)
            .fontSize(15)
            .fontColor(Color.Green)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })
          Text(this.myitem.company)
            .fontSize(15)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5 })
          Text("可以捐物")
            .fontSize(15)
            .fontColor(Color.Blue)
            .width("100%")
            .textAlign(TextAlign.Start)
            .margin({ left: 10, top: 5,bottom:5})

          //显示捐款功能
          Flex({ direction: FlexDirection.Row }) {
            Text("捐款数额")
              .fontSize(20)
              .margin({ top: 10,left:0 })
            TextInput(({ placeholder: "1.00" }))
              .fontColor(Color.Red)
              .width(70)
              .height(40)
              .border({ width: 2, color: Color.Red, style: BorderStyle.Solid })
              .margin({ left: 10, right: 10 })
              .onChange((value) => {
                this.sub_moneys = value
              })
            Text("元")
              .margin({ top: 10 })
              .fontSize(20)
          }
          .width(350)
          .height(40)
          .margin({left:25, bottom: 10 })

          Flex({ direction: FlexDirection.Row }) {
            Text("捐赠物资")
              .fontSize(20)
              .margin({ top: 10 })
            Select([
              { value: "电脑", icon: $r("app.media.computer") },
              { value: "手机", icon: $r("app.media.phone") },
              { value: "衣物", icon: $r("app.media.coat") },
              { value: "学习用具", icon: $r("app.media.study") },
              { value: "不捐赠物资", icon: $r("app.media.kong") }
            ])
              .selected(0)
              .value("不捐赠物资")
              .width(100)
              .onSelect((index, value) => {
                this.sub_objects = value
              })
          }
          .width(350)
          .margin({left:25, bottom: 20 })
        }
      }
      .width("90%")
      .margin({ bottom: 10,top:10 })
      .border({width:{bottom:2}})

    }
  }
}
