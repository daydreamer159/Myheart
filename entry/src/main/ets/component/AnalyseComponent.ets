import Test_Dialog from './Test_Dialog'

@Component
export default struct AnalyseComponent{
  @State give_num:number=0
  @Prop moneys:string
  @Prop objects:string
  @State our_hearts:number=2325678
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
  })
  build() {
    Flex({direction:FlexDirection.Row,
    justifyContent:FlexAlign.SpaceBetween,
    alignItems:ItemAlign.Center}){
      Text("捐钱:"+this.moneys+",捐赠物品:"+this.objects)
        .fontSize(20)
        .foregroundColor(Color.White)
      Button("捐赠")
        .width("20%")
        .fontSize(20)
        .height(40)
        .backgroundColor(Color.Red)
        .onClick(()=>{
          if (this.moneys!=""||this.objects!="") {
            this.give_num++
            this.our_hearts++
            this.customDialog.open()
          }
        })
    }
    .height(100)
    .width("100%")
    .backgroundColor(Color.Green)
  }
}