import { text } from '@kit.ArkGraphics2D'
import {calculate_achieve} from '../pages/Index'
import {SwitchMiddleToEnd} from '../pages/Index'
import {roundToDecimal} from '../pages/Index'
//@Preview
@Component

export struct Button1_second{
  @Link cal:string
  @Link result:string|undefined|number
  @Consume flag:boolean
  @Link button_opacity_son:number
  num:string = '1'
  buttonColor:number = 0x333333
  textColor:number = Color.White
  textSize:number = 24

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
    .width(60)
    .height(60)
    .opacity(this.button_opacity_son)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor(this.buttonColor)
    .borderRadius(30)
    .onClick(()=>{
      if(this.num=='AC'){
        this.flag = true;
        this.cal='';
        this.result = '0';
        return
      }
      else if(this.num=='='){
        if(this.flag == true) {
          this.flag = false;
          let EndExpression =SwitchMiddleToEnd(this.cal);
          EndExpression.print_queue()
          this.result = calculate_achieve(EndExpression);
        }
        else {
          let EndExpression = SwitchMiddleToEnd(this.cal);
          EndExpression.print_queue()
          this.result = calculate_achieve(EndExpression);
          this.result = String(roundToDecimal(this.result));
        }
      }
      else {
        this.cal += this.num;
      }

    })
  }
}