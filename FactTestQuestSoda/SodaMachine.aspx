<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SodaMachine.aspx.cs" Inherits="FactTestQuestSoda.SodaMachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Content/css/style.css" />

    <script src="Scripts/jquery-3.4.1.js"></script> 
    <script src="Scripts/jquery-3.4.1.min.js"></script>
</head>
<body>
    <form id="form1" action="#" runat="server">
        <asp:ScriptManager ID="ScriptManager1"
            runat="server" />
        <main>
            <div>
                <div class="box money">
                    <button onclick="addMoney(event)" value="1">
                        <img src="Content/images/money/OneRub.png" width="50" height="50" />
                    </button>
                    <button onclick="addMoney(event)" value="2">
                        <img src="Content/images/money/2rub.png" width="50" height="50" />
                    </button>
                    <button onclick="addMoney(event)" value="5">
                        <img src="Content/images/money/5rub.png" width="50" height="50" />
                    </button>
                    <button onclick="addMoney(event)" value="10">
                        <img src="Content/images/money/10rub.png" width="50" height="50" />
                    </button>
                </div>
                <div class="box moneyCount">
                    <asp:Label ID="MoneyLable" runat="server" Text="Внесено"></asp:Label>
                    <asp:Label ID="Money" runat="server" Text="0"></asp:Label>
                    <label>рублей</label>
                </div>
            </div>
            <div id="container">
                <ul id="keyboard">
                    <li class="letter">1</li>
                    <li class="letter">2</li>
                    <li class="letter">3</li>
                    <li class="letter clearl">4</li>
                    <li class="letter">5</li>
                    <li class="letter">6</li>

                    <li class="letter clearl">7</li>
                    <li class="letter ">8</li>
                    <li class="letter">9</li>
                    <li class="switch">clear</li>
                    <li class="return">enter</li>
                    <li class="delete lastitem"><</li>
                </ul>
            </div>
            <%-- background --%>
            <div >
                <img src="Content/images/money/refregerator.jpg" class="background" />
                <asp:Button ID="cola" runat="server" CssClass="cola" Width="100" Height="100" />
            </div>
        </main>
    </form>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript">
        function addMoney(event) {
            event.preventDefault();
            var deposited = Number(document.querySelector("#<%=Money.ClientID %>").textContent);
            deposited += Number(event.currentTarget.value);
            //deposited += money;
            document.querySelector("#<%=Money.ClientID %>").textContent = deposited;
        }
    </script>
</body>

</html>
