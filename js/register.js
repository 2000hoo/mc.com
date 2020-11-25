 /*
                     前端业务逻辑
                       1. 获取元素
                       2. 绑定事件
                         => submit 事件
                         => button 的点击事件
                         => **阻止表单的自动提交**
                       3. 获取用户输入的内容
                       4. 表单验证
                         => 非空验证
                         => 格式验证
                       5. 发送请求
                       6. 根据响应做不同的操作

                   */

 // 1. 获取元素
 const nameInp = document.querySelector('.Register input[name=username]')
 const pwdInp = document.querySelector('.Register input[name=password]')
     // const btn = document.querySelector('button')
 const form = document.querySelector('.Register form')
 const errMsg = document.querySelector('.Register .err-msg')


 // 2. 绑定事件
 form.addEventListener('submit', e => {
    e = e || window.event
        // 阻止默认事件
    e.preventDefault()

    // 3. 获取用户输入的数据
    const username = nameInp.value
    const password = pwdInp.value


    // 4. 简单的非空验证
    if (!username || !password) return alert('完整填写表单')


    // 5. 提交到后端
    // const xhr = new XMLHttpRequest()
    // xhr.open('POST', './register.php')
    // xhr.onload = function () {
    //   // 准备根据后端返回的结果去操作
    //   const { message, code } = JSON.parse(xhr.responseText)

    //   if (code === 1) {
    //     // 登录成功
    //     window.location.href = './index.html'
    //   } else if (code === 2) {
    //     h3.style.display = 'block'
    //   }

    // }
    // xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded')
    // xhr.send(`username=${username}&password=${password}`)

    // 5. 提交到后端
    ajax({
        url: './server/register.php',
        type: 'POST',
        data: { username, password },
        dataType: 'json',
        success(res) {
            console.log(res)

            const { code } = res

            if (code === 1) {
                window.location.href = './login.html'
            } else if (code === 2) {
                errMsg.style.display = 'block'
            }
        }
    })
})