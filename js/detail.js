(function(window){

    // 1. 拿到传递过来商品 id
  const obj = parseQueryString(window.location.search)
  // 判断有没有商品 id , 如果没有, 跳转回列表页面
  if (!obj.goodsId) return window.location.href = '/category.html'
  const goodsId = obj.goodsId

  // 2. 根据 goodsId 去请求数据
  getGoodsInfo()
  function getGoodsInfo() {
    ajax({
      url: './server/goodsInfo.php',
      data: { goodsId },
      dataType: 'json',
      success (res) {
        const { code, info ,info2, info3 } = res
        if (code !== 1) return
        bindHtml(info, info2, info3)
        console.log(info)
      }
    })
  }

  function bindHtml(info, info2, info3) {
    const pagename = document.querySelector('.page > a:last-child')
    const img = document.querySelector('.mainPic img')
    const enlarge = document.querySelector('.mainPic .enlarge')
    const title = document.querySelector('.Pright h2')
    const desc = document.querySelector('.Pright .x-gray')
    const price = document.querySelector('.Pright .x-price')
    const originPrice = document.querySelector('.Pright .x-originPrice span')
    const secname = document.querySelector('.page > .secname')
    const navname = document.querySelector('.page > .navname')
    const addcart = document.querySelector('.btnBar > .x-redBtn')

    pagename.innerHTML = info.goods_title
    img.src = info.goods_img
    enlarge.backgroundImage = `url(${info.goods_img})`
    title.innerHTML = info.goods_title
    desc.innerHTML = info.goods_desc
    price.innerHTML = info.goods_price
    originPrice.innerHTML = info.goods_price
    navname.innerHTML = info3.name
    navname.href = "/category.html?navId=" + info3.bid
    if (info2.bid !== 9){
      secname.innerHTML = info2.name
      secname.href = "/category.html?navId=" + info2.bid + "&secId=" + info2.cid
    }

    addcart.addEventListener('click',function(e) {
      var goodsId = info.goods_id
      var goods = info
      // 3. 先从 localStorage 里面获取一个数组
      var list = JSON.parse(window.localStorage.getItem('list')) || []
      
      // 4. 向数组里面添加
      if (!list.length) { // 数组没有内容
          goods.cart_num = 1
          goods.isSelect = false
          goods.goods_price.substr(1)
          list.push(goods)
      } else { // 数组里面有内容
          // 4-2. 先看看数组里面是不是又这条数据
          //      some() 只要数组里面又任意一条满足要求的就是 true
          //      看看数组(list)里面是不是有一个 goods_id 和我点击的这个数据 id 一样的
          var res = list.some(function (item) { return item.goods_id === goodsId })
          if (res) { // 数组里面有你当前点击的这条数据
          // 把这条数据的 cart_number++
          // 找到索引 findIndex
          var index = list.findIndex(function (item) { return item.goods_id === goodsId })
          list[index].cart_number++
          } else { // 数组里面没有你当前点击的这条数据
          goods.cart_num = 1
          goods.isSelect = false
          goods.goods_price.substr(1)
          list.push(goods)
          }
      }

      // 5. 组装好的数组存起来
      window.localStorage.setItem('list', JSON.stringify(list))
    })

  }

  

})(window)