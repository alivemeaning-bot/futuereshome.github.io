<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>futuere的小站</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 只引CSS，JS放最底部 -->
</head>
<body>

<div class="container-fluid bg-primary text-white py-2 mb-4">
    <h2 style="text-align: left;">futuere的小站</h2>
    <p>欢迎来到我的主页</p>
</div>

<div class="container text-center mt-5">
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card">
                <img src="./image/OIP-C.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title text-primary">注册难点！</h5>
                    <p class="card-text">请您进入并尝试注册一个账号吧！</p>
                    <button type="button" class="btn btn-primary" id="openModalBtn">点击注册</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 弹窗 -->
<div class="modal fade" id="examGame1" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">注册账号</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="myForm" action="register.jsp" method="post">
                    <div class="mb-3">
                        <label>用户名</label>
                        <input type="text" class="form-control" name="username">
                    </div>
                    <div class="mb-3">
                        <label>性别</label>
                        <input type="text" class="form-control" id="gender" name="gender">
                        <div id="genderTip" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label>密码</label>
                        <input type="text" class="form-control" id="pwd" name="pwd">
                        <div id="pwdTip" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label>手机号</label>
                        <input type="hidden" name="phone" id="phone">
                        <input type="range" class="form-range" min="10000000000" max="99999999999" value="10000000000" id="phoner">
                        <p>手机号：<span id="showPhone">10000000000</span></p>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">注册</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS 放最底部，避免加载顺序问题 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
// 初始化弹窗
const modal = new bootstrap.Modal(document.getElementById('examGame1'));
// 点击按钮打开弹窗
document.getElementById('openModalBtn').addEventListener('click', function(){
    modal.show();
});

// 手机号滑块
let phoner = document.getElementById("phoner");
let showPhone = document.getElementById("showPhone");
let phone = document.getElementById("phone");
phoner.oninput = function(){
    let val = this.value;
    showPhone.innerText = val;
    phone.value = val;
};

// 表单校验
let myForm = document.getElementById("myForm");
myForm.addEventListener("submit", function(e){
    document.getElementById("genderTip").textContent = "";
    document.getElementById("pwdTip").textContent = "";

    let g = document.getElementById("gender").value.trim();
    let p = document.getElementById("pwd").value.trim();
    let err = false;

    if(g.includes("男") || g.includes("女")){
        document.getElementById("genderTip").textContent = "该性别已被占用";
        err = true;
    }
    if(p !== "密码" && p !== "合法的密码"){
        document.getElementById("pwdTip").textContent = "请输入合法的密码";
        err = true;
    }

    if(err){
        e.preventDefault();
    }
});
</script>

</body>
</html>
