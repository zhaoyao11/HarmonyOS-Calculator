
@Component
export struct Button2{
  @Link cal:string
  @Link button_opacity_son:number
    num:string = '0'
    buttonColor:number = 0x333333
    textColor:number = Color.White
    textSize:number = 28

  build() {
      Column(){
        Text(`${this.num}`)
          .fontColor(this.textColor)
          .fontWeight(FontWeight.Medium)
          .fontSize(this.textSize)
      }.justifyContent(FlexAlign.Center)
      .onTouch((Event:TouchEvent)=>{
        if(Event.type==TouchType.Down){
          this.button_opacity_son = 0.5
        }
        if(Event.type==TouchType.Up){
          this.button_opacity_son = 1;
        }
      })
      .width(170)
      .opacity(this.button_opacity_son)
      .height(80)
      .alignItems(HorizontalAlign.Center)
      .backgroundColor(this.buttonColor)
      .borderRadius(40)
    .onClick(()=>{
      this.cal+=this.num;
    })
    }

}