<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Interface.aspx.cs" Inherits="BrailleSystem.Interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .form
         {
           left:50%;
         }
        .Sname 
        {
            font-weight: 300;
            font-size: 36px;
            color: black;
        }
        .panel2 
        {
            background-color: white;
            text-align: center;
            border-radius: 4px 4px 0px 0px;
            height: 80px;
        }
        .panel3 
        {
            text-align: left;
            background-color: lightgray;
            margin-bottom: 0px;
            font-size: 20px;
            border-radius: 4px;
            margin-left: 8px;
            margin-right: 10px;
            margin-top: 25px;
            position: absolute;
            align-items: center;
        }
        .button 
        {
            color: #ffffff;
            background-color: gray;
            height: 38px;
            width: 200px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            box-shadow: 0 6px 8px 0 rgba(0, 0, 0, 0.2), 0 8px 25px 0 rgba(0, 0, 0, 0.15);
            position:relative;
            left: 200px;
            top: 60px;
        }
        .button:hover 
        {
            box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
            background-color: black;
        }
        .textbox 
        {
            border: 1px solid gray;
            border-radius: 1px;
            box-shadow: inset 0px 0px 5px 0px #dbdbdb;
            box-shadow: 0px 1px 1px gray;
            position: relative;
            left: 70px;
        }
        #TextBox1
        {
            top: 70px;
            left: 200px;
        } 
        #TextBox2
        {
            top: 75px;
            left: 145px;
        }

        .lable2 
        {
            font-weight: 300;
        }

        .panel4 
        {
            background-color: #ecf0f1;
            border-radius: 4px;
            margin-left: 615px;
            margin-bottom: 0px;
            text-align: left;
            margin-top: 5px;
        }
        #Label4 
        {
            font-weight: 300;
            margin-left: 30px;
            position: relative;
            left: 390px;
            font-size: 1em;
        }
        .panel5 
        {
            background-color: #ecf0f1;
            border-radius: 4px;
        }
        #Label8 
        {
            position: relative;
            left: 400px;
            font-size: 2em;
        }
        #Image2
        {
            position: relative;
            left: 350px;
        }
        .dropdowns 
        {
            display: flex;
        }
        #DropDownList2
        {
            left: 200px;
            top: 70px;
        }
        #DropDownList3
        {
             left: 145px;
             top: 78px;
        }
        .gridview 
        {
            text-align: center;
            margin-top: 2px;
            color: #ffffff;
            margin-left: 100px;
        }

        .label6
        {
          
            margin: 10px 10px 0px 52px;
        }

        .dropdown2
        {
            height: 25px;
            padding-left: 5px;
            position: relative;
            top: 200px;
        }
        #DropDownList1
        {
            box-shadow: 0px 2px 5px gray;
            border-radius: 4px;
            border: none;
            padding: 2px;
            position: relative;
            top: 96px;
            right: -200px;
        }       
        #DropDownList4
        {
            box-shadow: 0px 2px 5px gray;
            border-radius: 4px;
            border: none;
            padding: 2px;
            position: relative;
            top: 0px;
            right: 10px;
            margin-left: 10px;
        }
        #Label2
        {
            position:absolute;
            top: 150px;
            margin-left: 70px; 
            left: 130px;
        }
        #Label10
        {
           position: relative;
           top: 10px;
           left: 200px;
        }
        #Label5
        {
            position: relative;
            top: 70px;
            left: 200px;
            margin-right: 10px;
        }
        #Label6
        {
            position: relative;
            left: 147px;
            top: 80px;
        }
        #Label9
        {
            position: relative;
            left: 650px;
        }
   </style>

</head>
<body>
 <form runat="server" >
    <div class="form"> 
            <asp:Panel ID="Panel2" runat="server" CssClass="panel2" ><br/>
                <asp:Label ID="Label1" runat="server" CssClass="Sname" Font-Overline="False" Text="Braille System"></asp:Label><br />
                <asp:Panel ID="Panel3" runat="server" CssClass="panel3" Height="427px" Width="600px" BackColor="lightgray"><br/><br/>
                    <asp:Label ID="Label2" runat="server" Text="Select Shape" Font-Size="X-Large"></asp:Label> 
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" Text="Select Character"></asp:Label><br/><br/>
                    <div cssclass="dropdowns">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="White" CssClass="dropdown" Font-Size="10pt" Height="35px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-bottom: 7px; margin-left: 0px; margin-top: 0px;" Width="196px">
                            <asp:ListItem>Shape</asp:ListItem>
                            <asp:ListItem>Circle</asp:ListItem>
                            <asp:ListItem>Triangle</asp:ListItem>
                            <asp:ListItem>Rectangle</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" CssClass="dropdown" Font-Size="10pt" Height="35px" style="margin-top: 0px" Width="196px">
                            <asp:ListItem>Characters</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                            <asp:ListItem>G</asp:ListItem>
                            <asp:ListItem>H</asp:ListItem>
                            <asp:ListItem>I</asp:ListItem>
                            <asp:ListItem>J</asp:ListItem>
                            <asp:ListItem>K</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                            <asp:ListItem>P</asp:ListItem>
                            <asp:ListItem>Q</asp:ListItem>
                            <asp:ListItem>R</asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>T</asp:ListItem>
                            <asp:ListItem>U</asp:ListItem>
                            <asp:ListItem>V</asp:ListItem>
                            <asp:ListItem>W</asp:ListItem>
                            <asp:ListItem>X</asp:ListItem>
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem>Z</asp:ListItem>
                        </asp:DropDownList>

                    </div><br/><br/>
                    <asp:Label ID="Label5" runat="server" Text="Height" Visible="False" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="26px" style="margin-top: 0px" Visible="False" Width="66px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown2" Visible="False" Width="64px">
                        <asp:ListItem>px</asp:ListItem>
                        <asp:ListItem>cm</asp:ListItem>
                        <asp:ListItem>inch</asp:ListItem>
                    </asp:DropDownList>
                    <br/><br/>
                    <asp:Label ID="Label6" runat="server" Text="Width" Visible="False" Font-Size="Large" CssClass="label6"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="26px" Visible="False" Width="66px"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown2" Visible="False" Width="64px">
                        <asp:ListItem>px</asp:ListItem>
                        <asp:ListItem>cm</asp:ListItem>
                        <asp:ListItem>inch</asp:ListItem>
                    </asp:DropDownList>
                    <br/><br/><br/>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Font-Bold="False" Font-Overline="False" OnClick="Button1_Click" Text="Submit" Width="200px" />
                </asp:Panel>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" CssClass="panel4" Height="428px" Width="825px">
                    <br/>
                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    <br/>
                    <br/>
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" style="text-align: left" Font-Bold="True"></asp:Label>
                    <br/> 
                    <br/>
                    <br/>
                    <br/>
                    <asp:Image ID="Image2" runat="server" Height="200px" style="margin-top: 0px" Width="200px" />
            </asp:Panel>
           
        <asp:Panel ID="Panel5" runat="server" Height="301px" style="margin-left: 7px; margin-top: 6px; margin-bottom: 0px;" Width="1433px" CssClass="panel5" Font-Bold="True">
                <br />
                <asp:Label ID="Label9" runat="server" Text="Required Ink & Dot Count" Font-Size="X-Large"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" Width="1219px" CssClass="gridview" Font-Size="Large" Height="200px" ForeColor="#000000">
                    <HeaderStyle BackColor="gray" ForeColor="White" />
                    <RowStyle BackColor="White" BorderStyle="None" Font-Size="Medium" ForeColor="Black"/>
                </asp:GridView>
            </asp:Panel><br />
    </div>
</form>
</body>
</html>