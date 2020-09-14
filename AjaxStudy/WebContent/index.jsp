<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--반응형웹 -->
    <link rel="stylesheet" href="css/bootstrap-theme.css" />
    <title>JSP AJAX</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script></script>
  </head>
  <body>
    <div class="container">
      <div class="form-group row pull-right">
        <div class="col-xs-8">
          <input type="text" class="form-control" size="20" />
        </div>
        <div class="col-xs-2">
          <button class="btn btn-primary" type="button">검색</button>
        </div>
      </div>
      <table class="table" style="text-align: center; border: 1px solid #dddddd">
        <thead>
            <tr>
                <th style="background-color: #fafafa; text-align: center;">이름</th>
                <th style="background-color: #fafafa; text-align: center;">나이</th>
                <th style="background-color: #fafafa; text-align: center;">성별</th>
                <th style="background-color: #fafafa; text-align: center;">이메일</th>
            </tr>
        </thead>
      </table>
    </div>
  </body>
</html>
