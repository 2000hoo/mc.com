(function (window) {

    const MenuBox = document.querySelector('.headerBottom .navMenu')
    const LoginMenu = document.querySelector('.headerTop .topRight')
    const userBox = getCookie('user')

    let login =''
    if( userBox ){
        login +=`
        <div class="userBoard">
            <ul>
                <li class="username">你好${ userBox }</li>
                <li>
                    <a href="#">退出登录</a>
                </li>
            </ul>
        </div>
        `
    }else{
        login +=`
        <div class="login">
            <ul>    
                <li>
                    <a href="login.html">登录</a>
                </li>
                <li>
                    <a href="register.html">注册</a>
                </li>
            </ul>
        </div>
        `
    }
    login += `
    <ul class="topOther">
        <li>
            <a href="/member-orders.html" target="_blank">订单管理</a>
        </li>
        <li>
            <a href="https://web.jiaxincloud.com/onekey.html?id=zzgxbtd3m2j0bg&appName=mcyp678&appChannel=20008" target="_blank">在线客服</a>
        </li>
        <li>
            <a href="/article-index_question-i-13.html" target="_blank">帮助中心</a>
        </li>
    </ul>
    `
    LoginMenu.innerHTML = login

    getMenuList()
    function getMenuList() {
    // 发送请求
        ajax({
            url: './server/mysqli.php',
            dataType: 'json',
            success (res) {
            // 等到请求结果
            const { code, list, list2} = res

            if (code !== 1) return

            bindMenuList(list, list2)
            }
        })
    }   
    function bindMenuList(list, list2) {
    // 使用 list 数据去渲染页面
    // console.log(list,list2)
    let str = ''
    list.forEach((item, index) => {
        str += `  
        <li class="parent ${ index === 0 && 'active' }">
            <a href="${ index === 0 && 'index.html' || '/category.html?navId='+ item.id}"> ${ item.name } </a>
            <div class="secMenu">
                <div class="main">
        `
                list2.filter(t => t.bid === item.id).forEach(item2 => {
                    str += `
                    <a href="/category.html?navId=${ item2.bid }&secId=${ item2.cid }">
                        <div class="menuBox">
                            <div class="imgbox">
                                <img src="${ item2.img}" alt="">
                            </div>
                            <p>${ item2.name }</p>
                        </div>
                    </a>
                    `
                })

        str += `
                </div>
            </div>
        </li>
        `
    })

    MenuBox.innerHTML = str

    // console.log(str)

    }

})(window)
