// 0. 获取元素
var box = document.querySelector('.whiteBox > .main')
// 3-0. 准备两个变量
// 总数
var total = 0
// 总价
var totalPrice = 0

// 1. 模拟数据
var list = [
  {
    id: 1,
    url: 'https://s1.miniso.cn/bsimg/ec/public/images/60/ff/60ff478297492a95baae118782eb4f08.jpg?x-oss-process=style/high',
    title: '动物系列Q版加水暖水袋',
    number: 15,
    price: 29.9,
    cart_num: 2,
    isSelect: false
  },
  {
    id: 2,
    url: 'https://s1.miniso.cn/bsimg/ec/public/images/4c/91/4c9142584c4057dfb3bf4eb46af38139.jpg?x-oss-process=style/high',
    title: '动物系列猫爪加水暖水袋',
    number: 15,
    price: 29.9,
    cart_num: 2,
    isSelect: true
  }
]

// var list = JSON.parse(window.localStorage.getItem('list')) || []

// 2. 渲染页面的函数
bindHtml()
function bindHtml(){
    total = 0
    totalPrice = 0
    // 3-1. 计算总价
    list.forEach(function (item){
        if(item.isSelect === true){
            // 把每一个的数量叠加
            total += item.cart_num
            // 把每一个的 单价 * 数量 叠加
            totalPrice += item.cart_num * item.price
        }
    })

    // 3-3. 全选按钮是不是要选中
    var selectAll = list.every(function (item) { return item.isSelect })

    // 使用 template 方法渲染
    box.innerHTML = template('tmp',{
        list: list,
        total: total,
        totalPrice: totalPrice,
        selectAll: selectAll
    })

    // 把最新的数组存储进去
    window.localStorage.setItem('list', JSON.stringify(list))
}

box.addEventListener('click', function (e) {
    // 处理事件对象兼容
    e = e || window.event
    // 处理事件目标兼容
    var target = e.target || e.srcElement

    console.log(target)

    // 4-1. 判断是选择按钮
    if (target.id === 'select-item') {
        // 拿到他身上的 data-id 属性
        var id = target.dataset.id - 0
        // 真实开发: 不再是修改数组, 告诉服务器 商品 id 是 xxx, 修改状态位 true 还是 false
        // 根据 id 找到数组里面对应的那一条数据 find()
        var goods = list.find(function (t) { return t.id === id })
        // 修改 goods 里面得 isSelect
        goods.isSelect = !goods.isSelect
        // 从新渲染页面
        bindHtml()
      }
    
    // 4-2. 判断数量减少
    if (target.className === 'reduce') {
        var id = target.dataset.id - 0
        // 真实开发: 告诉服务器, id 位 xxx 的商品数量减少
        var goods = list.find(function (t) { return t.id === id })
        // 判断一下
        if (goods.cart_num === 1) return
        goods.cart_num--
        bindHtml()
    }

    // 4-3. 判断数量增加
    if (target.className === 'plus') {
        var id = target.dataset.id - 0
        // 真实开发: 告诉服务器, 商品 id 位 xxx 的数量增加
        var goods = list.find(function (t) { return t.id === id })
        // 判断是不是到了最大值
        if (goods.cart_num == goods.number) return
        goods.cart_num++
        bindHtml()
    }

    // 4-4. 判断删除按钮
    if (target.className === 'del') {
        var id = target.dataset.id - 0
        // 从数组里面删除
        // 方法1:
        // var index = list.findIndex(function (t) { return t.id === id })
        // list.splice(index, 1)
        // 方法2:
        list = list.filter(function (t) { return t.id !== id })
        bindHtml()
    }
    
    // 4-5. 判断去支付
    if (target.id === 'checkout') {
        // 跳转一个新的页面, 吧价格带过去
        window.location.href = './pay.html?p=' + totalPrice
    }

    // 4-6. 判断清空购物车
    if (target.className === 'clear') {
        list = []
        bindHtml()
    }

    // 4-7. 判断全选按钮
    if (target.id == 'select-all') {
        if ( target.className == 'x-checkbox chooseAll x-checkboxC'){
            var type = false
        }else{
            var type = true
        }
        list.forEach(function (t) { t.isSelect = type })
        bindHtml()
    }
})

