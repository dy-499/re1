<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<%
var comment = Request.Form("comment");
if (comment) {
    // 将评论存储到数据库
    saveCommentToDatabase(comment);
    Response.Write("{ \"success\": true }");
} else {
    Response.Write("{ \"success\": false }");
}

// 模拟将评论存储到数据库的函数
function saveCommentToDatabase(comment) {
    // 这里可以连接到数据库并存储评论
    // 例如：使用SQL Server存储评论
    // var conn = new ActiveXObject("ADODB.Connection");
    // conn.Open("Provider=SQLOLEDB;Data Source=your_server;Initial Catalog=your_database;User ID=your_user;Password=your_password;");
    // var rs = new ActiveXObject("ADODB.Recordset");
    // rs.Open("INSERT INTO Comments (Text) VALUES ('" + comment + "')", conn);
    // rs.Close();
    // conn.Close();
}
%>