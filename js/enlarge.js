/*
  代码实现

  1. 找到我们各种要操作的元素
    => show
    => mask
    => enlarge
    => list

  2. 移入移出
    => 移入 show 盒子显示
    => 移出 show 盒子隐藏

  3. 需要调整某一个盒子的大小, 让他成比例
        遮罩层尺寸      enlarge 盒子
      ------------- = -------------
      show 盒子尺寸     背景图尺寸

    enlarge 盒子 = 遮罩层尺寸 / show 盒子尺寸 * 背景图尺寸

  4. 移动
    => 直接一个 mousemove 事件就可以了, 绑定给谁? show
    => 获取坐标, 那一套 ?
      -> offset 一套
      -> 当你光标在 遮罩层的时候, 会按照遮罩层来那坐标
    => 移动的边界值判断
    => 右边背景图片跟着动
      遮罩层尺寸        enlarge 盒子尺寸
    -------------   =  -------------
     遮罩层移动距离     enlarge 盒子移动距离(负背景图移动距离)
    enlarge 盒子移动距离(负背景图移动距离) = enlarge 盒子尺寸 * 遮罩层移动距离 / 遮罩层尺寸

  5. 切换图片
    => list 里面的每一个绑定一个点击事件
    => 事件委托, 委托给 list 就可以了
    => 切换边框的显示样式
      -> 所有的兄弟元素 p 都没有
      -> 当前点击的这个 img 的父元素有 类名
    => 换图片
      -> 在布局的时候, 就把图片的地址写在元素身上
*/

function Enlarge(ele) {
  this.ele = document.querySelector(ele)

  // 找到 show 盒子
  this.show = this.ele.querySelector('.show')

  // 找到遮罩层盒子
  this.mask = this.ele.querySelector('.mask')

  // 找到 放大镜盒子
  this.enlarge = this.ele.querySelector('.enlarge')

  // 找到列表盒子
  // this.list = this.ele.querySelector('.list')

  // 这里的 this 也是当前实例
  // 我再这里启动 启动器
  this.init()
}

// 0. 准备一个启动器函数
Enlarge.prototype.init = function () {
  // console.log('我也是原型上的一个方法')
  // 我的 this 也是当前实例
  // console.log(this)
  // 把所有要启动的方法给启动了
  this.getProp()
  this.overOut()
  this.setScale()
  this.move()
  this.bindEvent()
}

// 1. 移入移出
Enlarge.prototype.overOut = function () {
  // 移入 show 显示, 移出 show 隐藏
  this.show.addEventListener('mouseover', () => {
    this.mask.classList.add('active')
    this.enlarge.classList.add('active')
  })

  this.show.addEventListener('mouseout', () => {
    this.mask.classList.remove('active')
    this.enlarge.classList.remove('active')
  })
}

// 2-0. 获取尺寸这些事情提取出来
Enlarge.prototype.getProp = function () {
  // 2-1. 获取遮罩层尺寸
  this.mask_width = parseInt(window.getComputedStyle(this.mask).width)
  this.mask_height = parseInt(window.getComputedStyle(this.mask).height)

  // 2-2. show 盒子尺寸
  this.show_width = this.show.offsetWidth
  this.show_height = this.show.offsetHeight

  // 2-3. 背景图尺寸
  const bg = window.getComputedStyle(this.enlarge).backgroundSize.split(' ')
  this.bg_width = parseInt(bg[0])
  this.bg_height = parseInt(bg[1])
}

// 2. 调整比例
Enlarge.prototype.setScale = function () {
  // 2-4. 计算
  this.enlarge_width = this.mask_width / this.show_width * this.bg_width
  this.enlarge_height = this.mask_height / this.show_height * this.bg_height

  // 2-5. 设置
  this.enlarge.style.width = this.enlarge_width + 'px'
  this.enlarge.style.height = this.enlarge_height + 'px'
}

// 3. 动起来
Enlarge.prototype.move = function () {
  // 3-1. 给 show 盒子绑定一个鼠标移动事件
  this.show.addEventListener('mousemove', e => {
    // 处理事件对象兼容
    e = e || window.event

    // 3-2. 那坐标
    let x = e.offsetX - 100
    let y = e.offsetY - 100

    // 3-3. 边界值判断
    if (x <= 0) x = 0
    if (y <= 0) y = 0
    if (x >= this.show_width - this.mask_width) x = this.show_width - this.mask_width
    if (y >= this.show_height - this.mask_height) y = this.show_height - this.mask_height

    // 3-4. 给遮罩层赋值
    this.mask.style.left = x + 'px'
    this.mask.style.top = y + 'px'

    // 3-5. 右边跟着动
    const moveX = this.enlarge_width * x / this.mask_width
    const moveY = this.enlarge_height * y / this.mask_height

    // 3-6. 给背景图赋值
    this.enlarge.style.backgroundPosition = `-${ moveX }px -${ moveY }px`
  })
}