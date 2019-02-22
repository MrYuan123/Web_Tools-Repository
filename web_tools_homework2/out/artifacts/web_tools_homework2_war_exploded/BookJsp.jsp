<%--
  Created by IntelliJ IDEA.
  User: leonardyuan
  Date: 1/30/19
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Book Application</title>
    <link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.css">
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
</head>
<body>
    <jsp:include page="NavigationBar.jsp" flush="true"></jsp:include>
    <div class="row" id="replaceSection">
        <div class="col-md-4"></div>
        <div class="col-md-4" >
            <form>
                <fieldset>
                    <div class="form-group">
                        <label class="col-form-label" for="inputNumber"><strong>Input Number: </strong></label>
                        <input type="number" class="form-control" placeholder="Book Numbers" id="inputNumber">
                    </div>
                    <button type="submit" class="btn btn-primary" onclick="replace()" >Submit</button>
                </fieldset>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</body>
<script>
    function replace() {
        var counts = document.getElementById("inputNumber").value;
        if(counts <=0){
            alert('Should Be Positive Number!')
            return
        }

        var left = "<div class='col-md-2'></div><div class='col-md-8'><h2></h2><form action='/homework2-2/part8' method='post'><fieldset><table class='table table-bordered'><tr><th>ISBN</th><th>Book Title</th><th>Authors</th> <th>Price</th></tr>";

        for(var m = 1; m <= counts; m++){
            addItem = "<tr>";
            addItem = addItem + "<td><input type='text' class='form-control' placeholder='ISBN' name='"+ m + "_ISBN"+"'></td>";
            addItem = addItem + "<td><input type='text' class='form-control' placeholder='Title' name='"+ m + "_Title"+"'></td>";
            addItem = addItem + "<td><input type='text' class='form-control' placeholder='Authors' name='"+ m + "_Authors"+"'></td>";
            addItem = addItem + "<td><input type='number' step='0.01' class='form-control' placeholder='Price' name='"+ m + "_Price"+"'></td>";
            addItem = addItem + "</td>";
            left = left + addItem;
        }
        var right = "</table><button type='submit' class='btn btn-primary'>Submit</button> </fieldset> </form> </div> <div class='col-md-2'></div>";
        left = left + right;
        document.getElementById("replaceSection").innerHTML = left;
    }
</script>
</html>