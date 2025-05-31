<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- TemplateBeginEditable name="doctitle" -->
<title>主页</title>
<!-- TemplateEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
<link href="../html学习/1.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-image: url(../%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/320.jpg);
}
body,td,th {
	color: #FF0000;
}
.STYLE2 {font-size: xx-large}
-->
</style>
</head>
<body>
<div align="center">
  <div class="container">
    <h1><font face="Arial, Helvetica, sans-serif"></font>主页</h1>
    <p align="justify">介绍</p>
    <p align="justify">一次小测试，代码不是自己搞得（确实有点难），但排版是，各位有想法可以投稿，评论在最下面。</p>
    <h1 align="left">&nbsp;</h1>
  </div>
  <h1>一鸽睿的个人网站</h1>
  <p>&nbsp;</p>
  <div id="comments-container">
    <h3>评论区</h3>
    <textarea id="comment-input" placeholder="请输入评论"></textarea>
    <button id="submit-comment">提交评论</button>
    <div id="comments-list">
      <!-- 从服务器加载评论 -->
      <%
        // 从数据库中获取评论
        var comments = getCommentsFromDatabase();
        for (var i = 0; i < comments.length; i++) {
          %>
          <div class="comment"><%= comments[i] %></div>
          <%
        }
      %>
    </div>
  </div>
</div>
<p align="left">&nbsp;</p>
<script>
const commentInput = document.getElementById('comment-input');
const submitButton = document.getElementById('submit-comment');
const commentsList = document.getElementById('comments-list');

submitButton.addEventListener('click', () => {
    const text = commentInput.value.trim();
    if (text) {
        // 发送评论到服务器
        fetch('/submit-comment', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: 'comment=' + encodeURIComponent(text)
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                // 清空输入框
                commentInput.value = '';
                // 刷新评论列表
                fetchComments();
            } else {
                alert('评论提交失败');
            }
        });
    }
});

// 加载评论列表
function fetchComments() {
    fetch('/get-comments')
        .then(response => response.json())
        .then(data => {
            commentsList.innerHTML = ''; // 清空现有评论
            data.comments.forEach(comment => {
                const commentElement = document.createElement('div');
                commentElement.classList.add('comment');
                commentElement.textContent = comment;
                commentsList.appendChild(commentElement);
            });
        });
}
</script>
</body>
</html>

<%
// 模拟从数据库获取评论的函数
function getCommentsFromDatabase() {
    // 这里返回一个模拟的评论数组
    return ["这是第一条评论", "这是第二条评论"];
}
%>
