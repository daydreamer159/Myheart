import router from '@ohos.router'


@Component
export default struct Header{
  //决定是否首页，保证回退是否显示
  @Prop isIndex:boolean
  @Prop title:string
  build() {
    Flex({direction:FlexDirection.Row,
    justifyContent:FlexAlign.SpaceBetween,
    alignItems:ItemAlign.Center}){
      Image(this.isIndex?$r("app.media.back"):"")
        .width("35")
        .height(30)
        .onClick(()=>{
          //back回退一定是pushUrl产生
          router.back();
        })
      Text(this.title)
        .fontSize("25")
        .width("30%")
        .fontColor(Color.Red)
        .textAlign(TextAlign.Center)
      Image($r("app.media.config"))
        .width("35")
        .height(30)
    }
    .height(44)
    .width("100%")
    .backgroundColor(Color.Blue)
  }
}