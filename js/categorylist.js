(function (window) {

    // 1. 拿到传递过来商品 id
    // const obj = parseQueryString(window.location.search)
    // 判断有没有商品 id , 如果没有, 跳转回列表页面
    // if (!obj.goodsId) return window.location.href = '/index.html'
    // const goodsId = obj.goodsId

    const obj = parseQueryString(window.location.search)
    if (!obj.navId) return window.location.href = '/index.html'
    const navId = obj.navId
    
    const cateBox = document.querySelector('.keywords > .category ul')
    const goodsBox = document.querySelector('.listContent .itemList')

    // const listInfo = {
    //     current: 1,
    //     pagesize: 2,
    //     catename: '全部', //全部  小类的名字
    //     ishot: 2, // 2 表示全部, 1 表示热销, 0 表示不热销
    //     sortType: 1, // 1 表示综合, 2 表示价格, 3 表示销量
    //     sort: 'ASC', // 'DESC'
    //   }

    getMenuList()
    function getMenuList() {
    // 发送请求
        ajax({
            url: './server/catelist.php',
            data: {navId},
            dataType: 'json',
            success (res) {
                console.log(res)
                // 等到请求结果
                const { code, list, list2, info} = res

                if (code !== 1) return

                bindCateList(list)
                bindGoodList(list2)
                bindHtml(info)
            }
        })
    }

    function bindCateList(list) {
        // 使用 list 数据去渲染页面
        // console.log(list)
        let str = `
            <li class="checkCate active">
                <a href="javascript:;">全部</a>
            </li>
        `

        list.forEach(item => {
            str += ` 
            <li class="checkCate ">
                <a href="javascript:;" data-catename="${ item.name }">${ item.name }</a>
            </li>
            `
        })
    
        cateBox.innerHTML = str
    
    }
    function bindGoodList(list2) {
        // 使用 list 数据去渲染页面
        // console.log(list)
        let str = ''

        list2.forEach(item => {
            str += ` 
                <div class="item">
                    <a class="imgbox" href="/product.html?goodsId=${ item.goods_id }">
                        <img class="lazy-load" src="${ item.goods_img}" alt="${ item.goods_title}">
                        <img class="leftTop" src="https://s1.miniso.cn/bsimg/ec/public/images/0e/a8/0ea889f78ff4b0c32fdb416653776fd5.png?x-oss-process=image/resize,m_lfit,h_150,w_150" style="opacity:1; ${ item.goods_tag === '' && 'display:none' }">
                    </a>
                    <div class="tagBox">
                        <span class="tag" style="${ item.goods_tag === '' && 'display:none' }">${ item.goods_tag }</span>
                    </div>
                    <a class="title" href="/product.html?goodsId=${ item.goods_id }">${ item.goods_title }</a>
                    <span class="price">${ item.goods_price }</span>
                    <br>
                    <br>
                    <p class="desc ">
                        ${ item.goods_desc }
                    </p>
                </div>
            `
            
        })

        goodsBox.innerHTML = str
    }
    function bindHtml(info) {
        const pagename = document.querySelector('.page > a:last-child')
        const bannerimg = document.querySelector('.cateBanner img')
    
        pagename.innerHTML = info.name
        pagename.href = "/category.html?navId=" + info.id
        bannerimg.src = info.img

      }
})(window)
