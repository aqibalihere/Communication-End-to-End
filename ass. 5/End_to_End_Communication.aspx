<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="End_to_End_Communication.aspx.cs" Inherits="EndToEnd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Employee Name:
                    </td>
                    <td>
                        <input type="text" id="name"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Employee ID:
                    </td>
                    <td>
                        <input type="int" id="id"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Designation:
                    </td>
                    <td>
                        <input type="text" id="desig"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Salary:
                    </td>
                    <td>
                        <input type="int" id="sal"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <span onclick="addStudent()">Save</span>                      
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <script>
        function addEmployee() {
            var name = $('#name').val();
            var emp_id = $('#id').val();
            var designation = $('#desig').val();
            var salary = $('#sal').val();

            var Emloyee = new Object();
            Emloyee.name;
            Emloyee.emp_id;
            Emloyee.designation;
            Emloyee.salary;

            var employeeJax = JSON.stringify(Emloyee);

            $.ajax({
                type: "Get",
                url: "WebForm1.aspx/AddEmployee",
                contentType: "Application/JSON",
                data:
                {
                    Emloyee: employeejax,
                },
                success: function (result) {
                    console.log(result);
                }
            });
        }
    </script>
</body>
</html>
