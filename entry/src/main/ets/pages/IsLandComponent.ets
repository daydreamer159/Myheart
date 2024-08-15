import Test_Dialog from '../component/Test_Dialog'
import Goods from '../data/Goods'
import router from '@ohos.router'
import Header from '../component/Header'

@Entry
@Component
export default struct IsLandComponent{
  //捐赠次数
  @State give_num:number=0
  //捐赠数额和物资
  @State moneys:string=""
  @State objects:string=""
  //爱心值(数据库中找)
  @State our_hearts:number=2325678
  @State goods:Record<string,Goods>=router.getParams() as Record<string,Goods>
  //实例化dialog布局
  // @State mydialog:Test_Dialog=new Test_Dialog()
  private customDialog: CustomDialogController = new CustomDialogController({
    builder: Test_Dialog({
      give_sub_num: this.give_num,
      receive_moneys: this.moneys,
      receive_objects: this.objects,
      love_numbers:(this.our_hearts+"").split(""),
      onClickAction: () => {
        this.customDialog.close();
      }
    })
  });

  build() {
    Flex({direction:FlexDirection.Column}){
      Header({isIndex:true,title:"捐赠详情"})
        .margin({bottom:30})
      Flex({direction:FlexDirection.Row,
        justifyContent:FlexAlign.SpaceBetween}){
        Image(this.goods.item.pic)
          .width("30%")
          .margin({top:30,left:150})
          .border({width:4,style:BorderStyle.Solid,color:Color.Green})
          .borderRadius(20)
      }
      .backgroundImage($r("app.media.dao"))
      .width("100%")
      .height(800)
      .margin({bottom:20})
      //显示项目名称
      Text(this.goods.item.name)
        .fontSize(35)
        .margin({bottom:30})
      //显示总览和项目截止日期
      Flex({direction:FlexDirection.Row,
      justifyContent:FlexAlign.SpaceBetween,
      alignItems:ItemAlign.Center}){
        Text("总览")
          .fontSize(30)
          .margin({top:10})
        Text("截止日期:"+this.goods.item.end_time)
          .fontSize(22)
          .margin({top:10})
      }
      .margin({bottom:10})
      //显示捐钱情况
      Flex({direction:FlexDirection.Row}){
        Flex({direction:FlexDirection.Column}){
          Text("爱心捐助总额")
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .fontSize(25)
            .margin({left:15,top:10})
          Text(this.goods.item.total_price)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Bold)
            .fontSize(25)
            .margin({left:20,top:30})
          Image($r("app.media.love"))
            .width("40%")
            .height(150)
            .margin({left:130})
        }
        .width("150%")
        .backgroundColor(Color.Blue)
        .height(120)
        .borderRadius({topLeft:10,bottomLeft:10})
        .margin({left:5})
        Flex({direction:FlexDirection.Column}){
          Flex({direction:FlexDirection.Column}){
            Text("爱心捐助数")
              .fontColor(Color.White)
              .fontSize(20)
              .margin({left:10})
            Text(this.goods.item.used_price)
              .fontColor(Color.Red)
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
              .margin({left:10})
          }
          .width("95%")
          .backgroundColor(Color.Green)
          .height(60)
          .borderRadius({topRight:10,bottomRight:10})
          .margin({right:5})
          Flex({direction:FlexDirection.Column}){
            Text("待捐助数")
              .fontColor(Color.White)
              .fontSize(20)
              .margin({left:10})
            Text((parseInt(this.goods.item.total_price.replace("万","0000"))-
            parseInt(this.goods.item.used_price.replace("万","0000")))/10000+"万元")
              .fontColor(Color.Red)
              .fontSize(25)
              .fontWeight(FontWeight.Bold)
              .margin({left:10})
          }
          .width("95%")
          .backgroundColor(Color.Orange)
          .height(60)
          .borderRadius({topRight:10,bottomRight:10})
          .margin({right:5})
        }
      }
      .margin({top:50})
      //显示捐款功能
      Flex({direction:FlexDirection.Column,
        alignItems:ItemAlign.Center}){
        Text(this.goods.item.company)
          .width(250)
          .fontSize(30)
          .textAlign(TextAlign.Start)
          .margin({bottom:10})
        Text("可捐物品:书，电脑，手机，衣服")
          .fontSize(15)
          .width(250)
          .textAlign(TextAlign.Start)
          .margin({bottom:10})
        Flex({direction:FlexDirection.Row}){
          Text("捐款数额")
            .fontSize(20)
            .margin({top:5})
          TextInput(({placeholder:"20.00"}))
            .fontColor(Color.Red)
            .width(100)
            .height(40)
            .border({width:2,color:Color.Red,style:BorderStyle.Solid})
            .margin({left:10,right:10})
            .onChange((value)=>{
              this.moneys=value
            })
          Text("元")
            .margin({top:5})
            .fontSize(20)
        }
        .width(250)
        .margin({bottom:5})
        Flex({direction:FlexDirection.Row}){
          Text("捐赠物资")
            .fontSize(20)
            .margin({top:5})
          Select([
            {value:"电脑",icon:$r("app.media.computer")},
            {value:"手机",icon:$r("app.media.phone")},
            {value:"衣物",icon:$r("app.media.coat")},
            {value:"学习用具",icon:$r("app.media.study")},
            {value:"不捐赠物资",icon:$r("app.media.kong")}
          ])
            .selected(0)
            .value("不捐赠物资")
            .width(150)
            .onSelect((index,value)=>{
              this.objects=value
            })
          // TextInput(({placeholder:"衣服"}))
          //   .fontColor(Color.Red)
          //   .width(150)
          //   .height(40)
          //   .border({width:2,color:Color.Red,style:BorderStyle.Solid})
          //   .margin({left:10,right:10})
          //   .onChange((value)=>{
          //     this.objects=value
          //   })
        }
        .width(250)
        .margin({bottom:-5})
        Flex({direction:FlexDirection.Row,
          justifyContent:FlexAlign.SpaceBetween}){
          Button("加入捐款岛")
            .width("53%")
            .fontSize(20)
            .backgroundColor(Color.Red)
          Button("立即捐款")
            .width("43%")
            .fontSize(20)
            .backgroundColor(Color.Red)
            .onClick(()=>{
              if(this.moneys!=""||this.objects!=""){
                this.give_num++
                this.our_hearts++
                this.customDialog.open()
              }
            })
        }
        .margin({bottom:-10})
      }
      .width("95%")
      .height(900)
      .border({width:2,color:Color.Gray,style:BorderStyle.Solid})
      .margin({left:10})
      .padding(5)

    }
  }
}