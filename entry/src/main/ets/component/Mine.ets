import { font } from '@kit.ArkUI'
import MyCategory from '../data/MyCategory'
import options  from '../mocjs/options'
import juan_datas from '../mocjs/juan'
import { it } from '@ohos/hypium'


@Component
export default struct Mine {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Column }) {
        //用户名显示
        Flex({
          direction: FlexDirection.Column,
          alignItems: ItemAlign.Center,
          justifyContent: FlexAlign.Center
        }) {
          Flex() {
            Image($r("app.media.user"))
              .width(100)
              .height(100)
              .borderRadius(50)
          }
          .backgroundColor(Color.White)
          .width(100)
          .height(100)
          .borderRadius(50)
          .margin({ bottom: 10 })

          Text("用户名：白日梦想家")
            .fontColor(Color.White)
            .fontSize(20)
            .margin({ bottom: 10 })
          Text("一般用户")
            .backgroundColor(Color.White)
            .width(100)
            .height(30)
            .textAlign(TextAlign.Center)
            .borderRadius(20)
        }
        .width("100%")
        .height(200)
        .linearGradient({
          colors: [
            [0xff0000, 0.0],
            [0xee9900, 1.0]
          ]
        })

        //银行卡
        Flex({ direction: FlexDirection.Column }) {
          Flex({ direction: FlexDirection.Row }) {
            //logo
            Image($r("app.media.logo"))
              .width(50)
              .height(50)
            Flex({ direction: FlexDirection.Column }) {
              Text("HUAWEI")
                .fontWeight(FontWeight.Bold)
              Text("中信银行")
                .fontWeight(FontWeight.Bold)
            }
          }
          .margin({ top: 20, left: 20 })
          .height(50)

          //磁芯
          Image($r("app.media.xinpian"))
            .width(50)
            .height(50)
            .margin({ left: 30 ,top:15})
          //卡号
          Text("6227 0019 4312 2019 112")
            .fontSize(25)
            .margin({ left: 10, top: 10 })
          //银联
          Flex({
            direction: FlexDirection.Row,
            justifyContent: FlexAlign.SpaceBetween
          }) {
            Text("")
            Image($r("app.media.yinlian"))
              .width(60)
              .height(30)
          }
          .width("90%")
          .height(60)
        }
        //背景
        .width("90%")
        .height(200)
        .backgroundImage($r("app.media.dragon"))
        .backgroundImageSize(ImageSize.Cover)
        .borderRadius(30)
        .margin({ left: 15, top: 10 })

        //横向功能列表
        Text("任务功能展示")
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
          .width("100%")
          .height(50)
          .backgroundColor(Color.Pink)
          .padding(10)
          .margin({ top: 10 })
        Flex({ direction: FlexDirection.Row }) {
          ForEach(options, (item: MyCategory) => {
            Flex({ direction: FlexDirection.Column }) {
              Image(item.icon)
                .width("20%")
                .height(30)
                .aspectRatio(1)
                .objectFit(ImageFit.Contain)
                .margin({ left: 10 })
              Text(item.mytxt)
                .width("23%")
                .textAlign(TextAlign.Center)
            }
            .margin({ left: 5, top: 10 })
            .height(100)
            .border({ width: 1, style: BorderStyle.Solid, color: Color.Gray })
            .borderRadius(6)
          })
        }
        .width("100%")
        .height(130)

        //众筹的项,一行两个竖着排列
        Text("捐赠功能展示")
          .width("100%")
          .height(50)
          .backgroundColor(Color.Pink)
          .padding(10)
          .fontWeight(FontWeight.Bold)
          .fontSize(25)
          .margin({ top:-10,bottom: -10 })
        Flex({
          direction: FlexDirection.Row,
          wrap: FlexWrap.Wrap
        }) {
          ForEach(juan_datas, (item: MyCategory) => {
            Flex({
              direction: FlexDirection.Column,
              justifyContent: FlexAlign.Center,
              alignItems: ItemAlign.Center
            }) {
              Image(item.icon)
                .width(50)
                .height(50)
                .aspectRatio(1)
                .objectFit(ImageFit.Contain)
                .margin({ bottom: 10 })
              Text(item.mytxt)
                .width(100)
                .textAlign(TextAlign.Center)
            }
            .border({ width: 1, style: BorderStyle.Solid, color: Color.Gray })
            .width("45%")
            .height(100)
            .borderRadius(6)
            .margin({ left: 10, top: 10 })
          })
        }
        .margin({ top: 10 })
      }

    }
  }
}