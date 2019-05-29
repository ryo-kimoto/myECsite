<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
   <head>

      <meta http-equiv ="Content-Type" content ="text/html; charset=uft-8"/>
      <meta http-equiv ="Content-Style-Type" content ="text/css"/>
      <meta http-equiv ="Content-Scropt-Type" content ="text/javascript"/>
      <meta http-equiv ="imagetoolbar" content ="no"/>
      <meta name ="description" content =""/>
      <meta name ="keywords" content =""/>
      <title>error画面</title>

      <style type = "text/css">
         body{
            marjgin:0;
            padding:0;
            line-height: 1.6;
            letter-spacing:1px;
            font-family:Verdana, Helvetica, sans-serif;
            font-size:12px;
            color:#333;
            background:#fff;
         }

         table{
            text-align:center;
            margin:0 auto;
         }

         #top{
            width:780px;
            margin:30px auto;
            border: 1px solid #333;
         }

         #header{
            width: 100%;
            height: 80px;
            background-color: black;
         }

         #main{
            width: 100%;
            height: 500px;
            text-align: center;
         }

         #footer{
            width: 100%;
            height: 80px;
            background-color: black;
            clear: both;
         }

      </style>
   </head>
      <body>

         <div id = "header">
            <div id = "pr"></div>
         </div>

         <div id = "main">
            <div id = "top">
               <p>ログイン画面</p>
            </div>

            <div>
            <h3>ログインに失敗しました。ご確認していただき、もう一度入力してください。</h3>
            <s:form action = "LoginAction">
               <s:textfield name = "loginUserId" label="ログインID"/>
               <s:password name = "loginPassword" label="パスワード "/>
               <s:submit value = "ログイン"/>
            </s:form>
            <br/>

               <div id = "text-link">
                  <p>新規ユーザー登録ページは
                     <a href ='<s:url action = "UserCreateAction"/>'>こちら</a></p>
                  <p>ホームページへ戻るときは
                     <a href = '<s:url action = "GoHomeAction" />'>こちら</a></p>
               </div>
            </div>
         </div>

      </body>
</html>