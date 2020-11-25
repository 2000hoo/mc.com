(function (window) {
    
    const BannerBox = document.querySelector('.banner-x .imgBox')
    const NewBox = document.querySelector('.floorNew .itemList')
    const HotBox = document.querySelector('.floorHot .itemList')
    const GoodBox = document.querySelector('.px60T .main')
    const TopBox = document.querySelector('.lou_nav')

    getMenuList()
    function getMenuList() {
    // 发送请求
        ajax({
            url: './server/mysqli.php',
            dataType: 'json',
            success (res) {
            // 等到请求结果
            const { code,list ,list2, list3, list4, list5 } = res

            if (code !== 1) return

            bindNewList(list3)
            bindHotList(list4)
            bindGoodList(list, list2, list5)
            

            }
        })
    }

    function bindNewList(list3) {
        // 使用 list 数据去渲染页面
        // console.log(list3)
        let str = ''
    
        list3.forEach(item => {
            str += `
            <div class="item">
                <a class="imgbox" href="/product.html?goodsId=${ item.goods_id }">
                    <img src="${ item.goods_img } " class="imgbox x-holder">
                    <img class="leftTop" src="https://s1.miniso.cn/bsimg/ec/public/images/0e/a8/0ea889f78ff4b0c32fdb416653776fd5.png?x-oss-process=image/resize,m_lfit,h_150,w_150" style="opacity:1; ${ item.goods_tag === '' && 'display:none' }">
                </a>
                <div class="tagBox">
                    <span class="tag" style="${ item.goods_tag === '' && 'display:none' } ">${ item.goods_tag }</span>
                </div>
                <a class="title" href="/product.html?goodsId=${ item.goods_id }">${ item.goods_title }</a>
                <span class="price">${ item.goods_price }</span>
                <br>
            </div>
            `
        })
    
        NewBox.innerHTML = str
        // console.log(str)
    
    }

    function bindHotList(list4) {
        // 使用 list 数据去渲染页面
        // console.log(list3)
        let str = ''
    
        list4.forEach((item,index) => {
            str += `
            <div class="item ${ index === 0 && 'firstItem' }">
                <a class="imgbox" href="/product.html?goodsId=${ item.goods_id }">
                    <img class="lazy-load"   src="${ item.goods_img}" alt="${ item.goods_title}">
                    <img class="leftTop"  src="https://s1.miniso.cn/bsimg/ec/public/images/0e/a8/0ea889f78ff4b0c32fdb416653776fd5.png?x-oss-process=image/resize,m_lfit,h_150,w_150" style="opacity:1; ${ item.goods_tag === '' && 'display:none' }">
                </a>
                <div class="tagBox">
                    <span class="tag" style="${ item.goods_tag === '' && 'display:none' }">${ item.goods_tag }</span>
                </div>
                <a class="title" href="/product.html?goodsId=${ item.goods_id }">${ item.goods_title }</a>
                <span class="price">${ item.goods_price }</span>
                <br>
            </div>
            `
        })
    
        HotBox.innerHTML = str
        // console.log(str)
    
    }

    function bindGoodList(list, list2, list5) {
        // 使用 list 数据去渲染页面
        // console.log(list,list2)
        let str = ''
        let str2 = `
            <li class="active">顶部</li>
        `
        let str3 = ''
    
        list.forEach((item,index) => {
            str += `  
            <div class="x-pb60" style="${ index === 0  && 'display:none' }" }">
                <div class="x-channelTitle x-categoryList">
                    <h1>${ item.name }</h1>
                    <ul>
            `
                    list2.filter(t => t.bid === item.id).forEach(item2 => {
                        str += `  
                        <li>
                            <div></div>
                            <a href="/category.html?navId=${ item2.bid }&secId=${ item2.cid }">${ item2.name }</a>
                        </li>
                        `
                    })
                    
        str += `
                    </ul>
                    <a class="x-pt15" href="/category.html?navId=${ item.id }">查看更多 ></a>
                </div>
                <div class="banner2">
                    <a href="#">
                        <img class="lazy-load" src="${ item.img }" alt="">
                    </a>
                </div>
                <div class="itemList clearfix">
                `
                list5.filter(p => p.bid === item.id).forEach((item5,index2) => {
                    if (index2 < 4 ){
                        str += `
                        <div class="item">
                            <a class="imgbox" href="/product.html?goodsId=${ item5.goods_id }">
                                <img class="lazy-load" src="${ item5.goods_img}" alt="${ item5.goods_title}">
                                <img class="leftTop" src="https://s1.miniso.cn/bsimg/ec/public/images/0e/a8/0ea889f78ff4b0c32fdb416653776fd5.png?x-oss-process=image/resize,m_lfit,h_150,w_150" style="opacity:1; ${ item5.goods_tag === '' && 'display:none' }">
                            </a>
                            <div class="tagBox">
                                <span class="tag" style="${ item5.goods_tag === '' && 'display:none' }">${ item5.goods_tag }</span>
                            </div>
                            <a class="title" href="/product.html?goodsId=${ item5.goods_id }">${ item5.goods_title }</a>
                            <span class="price">${ item5.goods_price }</span>
                            <br>
                        </div>
                        `
                    }
                })
        str +=`
                </div>
            </div>
            `
        if(index > 0) {
            str2 += `
                <li>${ item.name }</li>
            `
            str3 += `
            <li>
                <img src="${item.img}" alt="">
            </li>
            `
        }
        })
    
        GoodBox.innerHTML = str
        TopBox.innerHTML = str2
        BannerBox.innerHTML = str3

        // console.log(str)

    
        }

})(window)
