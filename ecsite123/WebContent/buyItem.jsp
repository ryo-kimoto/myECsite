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
      <title>buyItem画面</title>

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
               <p>購入画面</p>
            </div>

            <div>
               <s:form action = "BuyItemAction">
                  <table>
                     <tr>
                        <td>
                           <span>商品名</span>
                        </td>
                        <td>
                           <s:property value = "session.buyItem_name"/>

                        </td>
                     </tr>

                     <tr>
                        <td>
                           <span>値段</span>
                        </td>
                        <td>
                           <s:property value = "session.buyItem_price"/>
                           <span>円</span>
                        </td>
                     </tr>

                     <tr>
                        <td>
                           <span>購入個数</span>
                        </td>
                        <td>
                           <select name = "count">
                              <option value = "5" selected = "selected">5</option>
                                 <option value = "10">10</option>
                                 <option value = "15">15</option>
                                 <option value = "20">20</option>
                                 <option value = "25">25</option>
                                 <option value = "30">30</option>
                                 <option value = "35">35</option>
                                 <option value = "40">40</option>
                                 <option value = "45">45</option>
                                 <option value = "50">50</option>
                                 <option value = "100">100</option>
                           </select>
                        </td>
                     </tr>

                     <tr>
                        <td>
                           <span>お支払い方法</span>
                        </td>
                        <td>
                           <input type = "radio" name = "pay" value = "1" checked = "checked">現金払い
                           <input type = "radio" name = "pay" value = "2">クレジットカード
                        </td>
                     </tr>

                     <tr>
                        <td>
                           <s:submit value = "購入"/>
                        </td>
                     </tr>
                  </table>
               </s:form>
                  <div>
                     <p>前画面に戻りたいときは<a href = '<s:url action = "GoHomeAction"/>'>こちら</a>です</p>
                     <p>マイページに戻るときは<a href = '<s:url action = "MyPageAction"/>'>こちら</a>です</p>
                  </div>
            </div>
         </div>

         <div id = "footer">
            <div id = "pr"></div>
         </div>

   </body>
</html>



