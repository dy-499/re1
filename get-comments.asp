<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<%
// 从数据库中获取评论
var comments = getCommentsFromDatabase();
Response.Write("{ \"comments\": [" + comments.join(", ") + "] }");

// 模拟从数据库获取评论的函数
function getCommentsFromDatabase() {
    // 这里可以连接到数据库并获取评论
    // 例如：使用SQL Server获取评论
    // var conn = new ActiveXObject("ADODB.Connection");
    // conn.Open("Provider=SQLOLEDB;Data Source=your_server;Initial Catalog=your_database;User ID=your_user;Password=your_password;");
    // var rs = new ActiveXObject("ADODB.Recordset");
    // rs.Open("SELECT Text FROM Comments", conn);
    // var comments = [];
    // while (!rs.EOF) {
    //     comments.push('"' + rs.Fields("Text").Value + '"');
    //     rs.MoveNext();
    // }
    // rs.Close();
    // conn.Close();
    // return comments;

    // 返回模拟的评论数组
    return ['"这是第一条评论"', '"这是第二条评论"'];
}
%>