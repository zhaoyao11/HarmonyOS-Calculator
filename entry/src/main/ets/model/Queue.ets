export class queue_my{
   items:string[]

  constructor(){
    this.items = [];
  }

  enqueue(item:string){
    this.items.push(item);
  }

  //删除第一个元素并且返回被删除的元素
  dequeue(){
    return this.items.shift();
  }

  //返回队列中的第一个元素
  peek(){
    return this.items[0];
  }

  //判断队列是否为空
  isEmpty(){
    return this.items.length ? false : true;
  }

  //返回队列大小
  size(){
    return this.items.length;
  }
  //打印队列中的元素
  print_queue(){
    for(let i =0;i<this.items.length;i++){
      console.log(this.items[i]);
    }
  }


}