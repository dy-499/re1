<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- TemplateBeginEditable name="doctitle" -->
<title>��ҳ</title>
<!-- TemplateEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
<link href="../htmlѧϰ/1.css" rel="stylesheet" type="text/css" />
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
</style></head>

<body>
<div align="center">
  <div class="container">
    <h1><font face="Arial, Helvetica, sans-serif"></font>��ҳ</h1>
    <p align="justify">����</p>
    <p align="justify">���������վ��û��ʲô��˵�ģ��͵���һ��С���԰ɣ���λ���뷨����Ͷ�壬�����������档</p>
    <h1 align="left">&nbsp;</h1>
  </div>
  <h1>һ��ĸ�����վ</h1>
  <p>&nbsp;</p>
  <div id="comments-container">
    <h3>������</h3>
    <textarea id="comment-input" placeholder="����������"></textarea>
    <button id="submit-comment">�ύ����</button>
    <div id="comments-list"></div>
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
                const comment = document.createElement('div');
                comment.classList.add('comment');
                comment.textContent = text;
                commentsList.appendChild(comment);
                commentInput.value = '';
            }
        });
    </script>
</body>
</html>
