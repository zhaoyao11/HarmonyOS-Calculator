import { Button1 } from '../model/Button1'
import { Button1_second } from '../model/Button1_second'
import { Button2_second } from '../model/Button2_second'
import { Button2 } from '../model/Button2'
import {CharacterStack} from '../model/CharacterStack'
import {NumberStack} from '../model/NumberStack'
import {queue_my} from '../model/Queue'

@Entry
@Component
struct Index {
  @State cal:string = '';
  @State result:string|undefined|number = '';
  @Provide flag:boolean = true;
  @State rotate_icon:number = 0;
  sta_x = 0;
  distance_x = 0;
  @State UIstate:boolean = false;
  @State Delete_bool:boolean = false;
  @State button_opacity_0:number = 1
  @State button_opacity_1:number = 1
  @State button_opacity_2:number = 1
  @State button_opacity_3:number = 1
  @State button_opacity_4:number = 1
  @State button_opacity_5:number = 1
  @State button_opacity_6:number = 1
  @State button_opacity_7:number = 1
  @State button_opacity_8:number = 1
  @State button_opacity_9:number = 1
  @State button_opacity_10:number = 1
  @State button_opacity_11:number = 1
  @State button_opacity_12:number = 1
  @State button_opacity_13:number = 1
  @State button_opacity_14:number = 1
  @State button_opacity_15:number = 1
  @State button_opacity_16:number = 1
  @State button_opacity_17:number = 1
  @State button_opacity_18:number = 1
  @State button_opacity_19:number = 1
  @State button_opacity_20:number = 1
  @State button_opacity_21:number = 1
  @State button_opacity_22:number = 1
  @State button_opacity_23:number = 1
  @State button_opacity_24:number = 1
  @State button_opacity_25:number = 1
  @State button_opacity_26:number = 1
  @State button_opacity_27:number = 1
  @State button_opacity_28:number = 1
  @State button_opacity_29:number = 1
  @State button_opacity_30:number = 1
  @State button_opacity_31:number = 1
  @State button_opacity_32:number = 1
  @State button_opacity_33:number = 1
  @State button_opacity_34:number = 1
  @State button_opacity_35:number = 1
  @State button_opacity_36:number = 1
  build() {
      Column({space:10}) {
        Row() {
          Image($r('app.media.change'))
            .width(40)
            .height(40)
            .rotate({angle:this.rotate_icon})
            .animation({
              duration:300
            })
            .onClick(()=>{
              this.rotate_icon = this.rotate_icon+180;
              this.UIstate = !this.UIstate;
            })
        }.width('100%')
        .justifyContent(FlexAlign.End)
        .margin({top:10,right:15})

        Blank()
        Column() {
          Text(`${this.result}`)
            .fontSize(60)
            .fontColor(Color.White)
        }
        .alignItems(HorizontalAlign.End)
        .justifyContent(FlexAlign.End)
        .padding({ right: 30 })
        .width('100%')
        .height(100)

        Row() {
          Text(`${this.cal}`)
            .fontSize(24)
            .fontColor(Color.White)
        }.height(70)
        .width('100%')
        .justifyContent(FlexAlign.End)
        .padding({ right: 35 })
        .onTouch((Event:TouchEvent)=>{
          if(Event.type==TouchType.Down){
            this.sta_x = Event.touches[0].x
            this.Delete_bool = true;
          }
          if(Event.type==TouchType.Up){
              this.Delete_bool = true
          }
          if(Event.type==TouchType.Move){
              this.distance_x = Math.abs(this.sta_x - Event.touches[0].x)
           // console.log(`x轴的距离为：${this.distance_x}`)
           // console.log(`bool值为：${this.Delete_bool}`)
            if(this.distance_x>20&&this.Delete_bool == true){
             this.cal = this.cal.slice(0,-1);
             this.Delete_bool = false;
            }
          }
        })


        if (this.UIstate == true) {
          Row({ space: 10 }) {
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_25,
              result: $result,
              num: 'lg',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_26,
              result: $result,
              num: 'ln',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_27,
              result: $result,
              num: 'sin',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_28,
              result: $result,
              num: 'cos',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_29,
              result: $result,
              num: 'tan',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
          }

          Row({ space: 10 }) {
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_30,
              result: $result,
              num: 'AC',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_1,
              result: $result,
              num: '(',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_2,
              result: $result,
              num: ')',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_3,
              result: $result,
              num: '÷',
              buttonColor: 0xFF9F0B
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_36,
              result: $result,
              num: '%',
              textSize: 22,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_4,
              result: $result,
              num: '7'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_5,
              result: $result,
              num: '8'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_6,
              result: $result,
              num: '9'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_7,
              result: $result,
              num: '×',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_32,
              result: $result,
              num: '!',
              textSize: 24,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_8,
              result: $result,
              num: '4'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_9,
              result: $result,
              num: '5'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_10,
              result: $result,
              num: '6'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_11,
              result: $result,
              num: '-',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_33,
              result: $result,
              num: '√',
              textSize: 20,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_12,
              result: $result,
              num: '1'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_13,
              result: $result,
              num: '2'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_14,
              result: $result,
              num: '3'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_15,
              result: $result,
              num: '+',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_34,
              result: $result,
              num: 'π',
              textSize: 24,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button2_second({ cal: $cal, button_opacity_son: $button_opacity_16 })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_17,
              result: $result,
              num: '.'
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_18,
              result: $result,
              num: '=',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
            Button1_second({
              cal: $cal,
              button_opacity_son: $button_opacity_35,
              result: $result,
              num: '^',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
          }.margin({ bottom: 20 })
        }
        else {
          Row({ space: 10 }) {
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_0,
              result: $result,
              num: 'AC',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_1,
              result: $result,
              num: '(',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_2,
              result: $result,
              num: ')',
              textColor: Color.Black,
              buttonColor: 0xA5A5A5
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_3,
              result: $result,
              num: '÷',
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_4,
              result: $result,
              num: '7'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_5,
              result: $result,
              num: '8'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_6,
              result: $result,
              num: '9'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_7,
              result: $result,
              num: '×',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })

          }

          Row({ space: 10 }) {
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_8,
              result: $result,
              num: '4'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_9,
              result: $result,
              num: '5'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_10,
              result: $result,
              num: '6'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_11,
              result: $result,
              num: '-',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_12,
              result: $result,
              num: '1'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_13,
              result: $result,
              num: '2'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_14,
              result: $result,
              num: '3'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_15,
              result: $result,
              num: '+',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
          }

          Row({ space: 10 }) {
            Button2({ cal: $cal, button_opacity_son: $button_opacity_16 })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_17,
              result: $result,
              num: '.'
            })
            Button1({
              cal: $cal,
              button_opacity_son: $button_opacity_18,
              result: $result,
              num: '=',
              textSize: 30,
              buttonColor: 0xFF9F0B
            })
          }
          .margin({ bottom: 20 })
        }
      }
      .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)

  }
}
//获得优先级等级的函数
function getPrecedence(item:string):number{
  switch(item){
    case 'lg':return 4
    case '√' :return 3
    case '!' :return 4
    case 'ln':return 4
    case 'sin':return 4
    case 'cos':return 4
    case 'tan':return 4
    case '^':return 4
    case '%':return 4
    case '×':return 2
    case '÷':return 2
    case '+':
     // console.log('读取到了+号')
      return 1
    case '-':return 1
    default:return 0
  }

}

//中缀表达式转后缀表达式函数
export function SwitchMiddleToEnd(cal:string){
  let queue = new queue_my();
  let first_fu:boolean = true
  let switchStack = new CharacterStack();
  let i =0;
  let currentcharacter:string = '';
  let flaglog:boolean = false;
  let flagtriangle:boolean = false;
  while(i<cal.length){
    if(isCharacter(cal[i])){
      currentcharacter = cal[i];
      console.log('当前的符号为：'+currentcharacter);
    }
    else if(cal[i]=='l'){
      currentcharacter = 'l'+cal[i+1];
      console.log('当前的符号为：'+currentcharacter);
      flaglog = true;
    }
    else if(isSingleCharacter1(cal[i])&&cal[i]!='l'){
      currentcharacter = cal[i]+cal[i+1]+cal[i+2];
      console.log('当前的符号为：'+currentcharacter);
      flagtriangle = true;
    }


    //如果遍历到数字直接入队
    if(isNumber(cal[i])){
      let numberstring = '';
      if(cal[i]=='π'){
        queue.enqueue(String(Math.PI));
      }
      else {
        while (isNumber(cal[i])) {
          numberstring += cal[i];
          i++
        }
        queue.enqueue(numberstring);

        console.log(`${numberstring}入队`);
        i--
      }
    }
    //如果遇到第一个位置是左括号加-号
      else if(cal[0]=='('&&cal[1]=='-'&&first_fu){
        switchStack.push(cal[0]);
        let numberstring = '-'
        first_fu = false;
        i = 2
        while(isNumber(cal[i])){
          numberstring+=cal[i]
          i++
        }
        queue.enqueue(numberstring)
      i--
      console.log(`${numberstring}入队`);
      console.log(`此时遍历到了：${cal[i]}`)
    }

    else if(cal[0]=='-'&&isNumber(cal[1])&&first_fu){
      let numberstring = '-';
      first_fu = false;
      i=1;
      while(isNumber(cal[i])){
        numberstring+=cal[i];
        i++
      }
      queue.enqueue(numberstring);
      console.log(`${numberstring}入队`);
      i--;
    }
    //如果连按几次同一个操作符
     /* else if(!isNumber(cal[i])&&!isNumber(cal[i+1])&&cal[i]==cal[i+1]){
        i++;
    }*/
    //带括号的负数在中间的时候
      else if(cal[i]=='('&&cal[i+1]=='-'&&isNumber(cal[i+2])){
      let numberstring = '-';
      i = i+2;
      while(isNumber(cal[i])){
        numberstring+=cal[i];
        ++i
      }
      queue.enqueue(numberstring)
      console.log(`${numberstring}已经入队`)
    }

    //如果栈中为空或者遇到左括号直接入栈
    else if(switchStack.isEmpty()||cal[i]=='('){
      if(cal[i]=='(') console.log('遇到了左括号')
      switchStack.push(currentcharacter);
    }
    //栈顶操作符优先级小于当前操作符优先级
    else if(cal[i]!=')'&&getPrecedence(switchStack.peek())<getPrecedence(currentcharacter)){
      switchStack.push(currentcharacter);
      console.log("放入的操作符为:"+currentcharacter);
    }
    //栈顶操作符优先级大于当前操作符优先级
    else if(cal[i]!=')'&&getPrecedence(switchStack.peek())>=getPrecedence(currentcharacter)){
        //栈顶元素出栈并且加到队列中去
        while(getPrecedence(currentcharacter)<=getPrecedence(switchStack.peek()))
        {queue.enqueue(String(switchStack.pop()))
          if(switchStack.isEmpty()){break}
        }
        switchStack.push(currentcharacter);
    }
    //如果遇到了右括号
    else if(currentcharacter==')') {
      console.log('遇到了右括号')
      while (switchStack.peek() != '(') {
        let temp: string = String(switchStack.pop());
        queue.enqueue(temp);
      }
      //遇到左括号时直接将左括号弹出
      switchStack.pop()
     // console.log('左括号出栈')
    }
    if(flaglog){
      i = i+2;
      flaglog = false;
    }
    else if(flagtriangle){
      i = i+3;
      flagtriangle = false;
    }
    else {
      i++;
    }
    console.log('现在的i为：'+i);
  }
  //最后将剩余的操作符全部放到队列中
  while(!switchStack.isEmpty()) {
    queue.enqueue(String(switchStack.pop()))
  }
  queue.print_queue()
  return queue;
}


//后缀表达式计算函数
export function calculate_achieve(que:queue_my):string{
    let numberstack = new NumberStack();
    let i =0;
    let sum=que.size()
    while(i<sum){
      console.log('queue中的peek元素为：'+que.peek());
      //如果遇到数字直接入栈并删除该元素
      if(!isCharacter(que.peek())&&!isSingleCharacter2(que.peek())){
        console.log(`${que.peek()}已经入栈`)
          numberstack.push(que.peek());
          que.dequeue()
          i++;
      }

      //如果遇到了单目运算符
      else if(isSingleCharacter2(que.peek())){
        console.log('遇到了单目运算符');
        let num = numberstack.pop();
        if(que.peek()=='cos'){
          numberstack.push(String(Math.cos(Number(num))));
        }
        else if(que.peek()=='sin'){
          numberstack.push(String(Math.sin(Number(num))));
        }
        else if(que.peek()=='tan'){
          numberstack.push(String(Math.tan(Number(num))));
        }
        else if(que.peek()=='lg') {
          numberstack.push(String(Math.log10(Number(num))));
        }
        else if(que.peek()=='ln') {
          numberstack.push(String(Math.log(Number(num))));
        }
        else if(que.peek()=='!'){
          numberstack.push(String(factorial1(Number(num))));
        }
        else if(que.peek()=='%'){
          numberstack.push(String(Number(num)*0.01));
        }
        else if(que.peek()=='√'){
          numberstack.push(String(Math.sqrt(Number(num))));
        }
        que.dequeue();
        i++;
      }

      //如果遇到了双目操作符
      else{
        let num_up = numberstack.pop();
        let num_down = numberstack.pop();
        if(que.peek()=='+'){
          numberstack.push(String(Number(num_down)+Number(num_up)))
       //   console.log(`${String(Number(num_down)+Number(num_up))}入栈`)
        }
        else if(que.peek()=='-'){
          numberstack.push(String(Number(num_down)-Number(num_up)))
        //  console.log(`${String(Number(num_down)-Number(num_up))}入栈`)

        }
        else if(que.peek()=='^'){
          numberstack.push(String(Math.pow(Number(num_down),Number(num_up))));
        }
        else if(que.peek()=='×'){
          if(num_up=='3'||num_up=='6'||num_up=='9') {
            numberstack.push(String((Number(num_down)*(Number(num_up)*10000))/10000))
          }
          else{
            numberstack.push(String((Number(num_down) * Number(num_up) * 100) / 100))
          }
       //   console.log(`${String(Number(num_down)*Number(num_up))}入栈`)
        }
        else if(que.peek()=='÷'){
          if(num_up=='0') numberstack.push('不能除以0')
          else {
            numberstack.push(String(Number(num_down) / Number(num_up)))
          }
       //   console.log(`${String(Number(num_down)/Number(num_up))}入栈`)
        }
        que.dequeue();
        i++;
      }
    }
    return String(roundToDecimal(numberstack.pop()));
}
//判断这个字符是不是数字
function isNumber(item:string):boolean{
  if(item=='0'||item=='1'||item=='2'||item=='3'||item=='4'||item=='5'||item=='6'||
    item=='7'||item=='8'||item=='9'||item=='.'||item=='π'){
    return true;
  }
  else return false;
}
//判断这个字符是不是操作符
function isCharacter(item:string):boolean{
  if(item=='+'||item=='-'||item=='÷'||item=='×'||item=='('||item==')'||item=='^'||item=='!'||item=='%'||item=='√'){
    return true;
  }
  else return false;
}

//判断这个字符是不是单目运算符
function isSingleCharacter1(item:string):boolean{
  if(item=='c'||item=='s'||item=='t'||item=='lg'||item=='ln'){
    return true;
  }
  else return false;
}

function isSingleCharacter2(item:string):boolean{
  if(item=='cos'||item=='sin'||item=='tan'||item=='lg'||item=='ln'||item=='!'||item=='%'||item=='√'){
    return true;
  }
  else return false;
}


//阶乘函数
function factorial1(n:number):number{
  if(n<=1&&n>=0){
    return 1;
  }
  else if(n<0){
    return 0;
  }
  else{
    return n*factorial1(n-1);
  }
}

//保留两位小数的函数
export function roundToDecimal(res?:string){
  let num =  Number(res);
  const multiplier = Math.pow(10,8);
  return Math.round(num*multiplier)/multiplier
}