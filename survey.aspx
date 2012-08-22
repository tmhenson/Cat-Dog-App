<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="survey.aspx.vb" Inherits="Cat_Dog_App.survey" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MYM Form</title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
  <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
 
   
 
</head>
<body>
<div class="header"><image alt="mymlogo" src="images/" style="float:left;" /><div style="float:left;"><h2>Cat/Dog adopter survey</h2><br />
    <em>Save this form to your computer and email it to adoptions<br /></em></div> </div>
   <br style="clear:both"/>

   <form id="form2" runat="server">
    <asp:HiddenField runat="server" ID="hfMasterID" />
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table>
            <tr>
                <td>
                    <asp:label ID="lblfirst" runat="server" Text="First Name" /></td><td><asp:TextBox ID="tbFirstName" runat="server"/></td>
                <td>
                    <asp:label ID="lblLast" runat="server" Text="Last Name" /></td><td><asp:TextBox ID="tbLastName" runat="server"/></td>
                <td>
                    <asp:label ID="lblDate" runat="server" Text="Date" /></td><td><asp:TextBox ID="tbDate" runat="server"/></td>
            </tr>
            <tr>
                <td>
                    <asp:label ID="lblAddress" runat="server" Text="Address" /></td><td><asp:TextBox ID="tbAddress" runat="server"/>
                </td>
                <td>
                    <asp:label ID="lblCity" runat="server" Text="City" /></td><td><asp:TextBox ID="tbCity" runat="server"/>
                </td>
                <td>
                    <asp:label ID="lblState" runat="server" Text="State" /></td><td><asp:TextBox ID="tbState" runat="server"/>
                    <asp:Label ID="lblZip" runat="server" Text="Zip" /></td><td><asp:TextBox ID="tbZip" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:label ID="lblHome" runat="server" Text="Home Phone" /></td><td><asp:TextBox ID="tbHomePhone" runat="server"/>
                </td>
                <td>
                    <asp:label ID="lblWork" runat="server" Text="Work Phone" /></td><td><asp:TextBox ID="tbWorkPhone" runat="server"/>
                </td>
                <td>
                    <asp:label ID="lblEmail" runat="server" Text="Email" /></td><td><asp:TextBox ID="tbEmail" runat="server"/>
                </td>
                <td>
                    <asp:RadioButton ID="rbCat" runat="server" Text="Cat" class="noprint" />
                    <asp:RadioButton ID="rbDog" runat="server" Text="Dog" class="noprint" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="noprint"/>
                </td>
                <td></td>
            </tr>
        </table>

       <asp:Label runat="server" ID="lblResults" class="noprint" />
        <asp:Panel runat="server" ID="pnlCat" Visible="false">
            <div class="details">
                 <table>
                    <tr>
                        <td >1</td>
                        <td>I would consider my household to be like</td>
                        <td ><asp:CheckBox runat="server" ID="cbQ1A" Text="A library" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq1b" Text="Middle of the Road" /></td>
                        <td ><asp:CheckBox runat="server" ID="q1c" Text="A carnival" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >2</td>
                        <td>I am comfortable with a cat that likes to play "chase my ankles" and similiar games</td>
                        <td ><asp:CheckBox runat="server" ID="cbq2a" Text="NO" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq2b" Text="Somewhat" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq2c" Text="YES" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >3</td>
                        <td>I want my cat to interact with guests that come to my house</td>
                        <td ><asp:CheckBox runat="server" ID="cbq3a" Text="Little of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq3b" Text="Some of the time" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq3c" Text="All of the time" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >4</td>
                        <td>How do you feel about a boisterous cat that gets into everything?</td>
                        <td ><asp:CheckBox runat="server" ID="cbq4a" 
                                Text="Love them but rather not live with them" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq4b" Text="Depends on the situation" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq4c" Text="Fine by me" /></td>
                        <td></td>

                    </tr>
                     <tr><td >5</td>
                        <td>My cat needs to be able to adjust to new situations quickly</td>
                        <td ><asp:CheckBox runat="server" ID="cbq5a" Text="Not Important" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq5b" Text="Somewhat" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq5c" Text="Yes" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >6</td>
                        <td>I want my cat to love being with my children in my home</td>
                        <td><asp:CheckBox runat="server" ID="cbq6a" 
                                Text="It's not important whether my cat loved being with children" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq6b" Text="Some of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq6c" Text="Most of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq6d" Text="Children do not often come to my house" /></td>
                    </tr>
                     <tr>
                        <td >7</td>
                        <td>My cat needs to be able to be alone</td>
                         <td ><asp:CheckBox runat="server" ID="cbq7a" Text="More than 9 hours per day" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq7b" Text="4 to 8 hours per day" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq7c" Text="Less than 4 hour per day" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >8</td>
                        <td>When I am at home, I want my cat to be by my side or in my lap</td>
                        <td ><asp:CheckBox runat="server" ID="cbq8a" Text="Little of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq8b" Text="Some of the time" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq8c" Text="All of the time" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >9</td>
                        <td>I want my cat to enjoy being held</td>
                        <td ><asp:CheckBox runat="server" ID="cbq9a" Text="Little of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq9b" Text="Some of the time" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq9c" Text="Most of the time" /></td>
                        <td></td>

                    </tr>
                     <tr>
                        <td >10</td>
                        <td>I need my cat to get along with (choose all that apply)</td>
                        <td ></td>
                        <td></td>
                        <td ></td>
                        <td><asp:CheckBox runat="server" ID="cbq10a" Text="Dogs" />
                            <asp:CheckBox runat="server" ID="cbq10b" Text="Cats" />
                            <asp:CheckBox runat="server" ID="cbq10c" Text="Birds" />
                            <asp:CheckBox runat="server" ID="cbq10d" Text="other" /></td>
                    </tr>
                     <tr>
                        <td >11</td>
                        <td>My cat will be</td>
                        <td ><asp:CheckBox runat="server" ID="cbq11a" Text="Inside" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq11b" Text="Inside and Outside" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq11c" Text="Outside" /></td>
                        <td></td>
                    </tr>
                     <tr>
                        <td >12</td>
                        <td>I have lived with cats before</td>
                        <td ><asp:CheckBox runat="server" ID="cbq12a" Text="NO" /></td>
                        <td></td>
                        <td ><asp:CheckBox runat="server" ID="cbq12b" Text="YES" /><br />Date<asp:TextBox runat="server" ID="tbDateCats" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq12c" Text="Currently" /></td>
                    </tr>
                     <tr>
                        <td >13</td>
                        <td>I prefer my cat to be talkative</td>
                        <td ><asp:CheckBox runat="server" ID="cbq13a" Text="NO" /></td>
                        <td></td>
                        <td ><asp:CheckBox runat="server" ID="cbq13b" Text="YES" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq13c" 
                                Text="It's not important if my cat is talkative" /></td>
                    </tr>
                     <tr>
                        <td >14</td>
                        <td>I want my cat to play with toys</td>
                        <td ><asp:CheckBox runat="server" ID="cbq14a" Text="Little of the time" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq14b" Text="Sometimes" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq14c" Text="Often" /></td>
                        <td></td>
                    </tr>
                     <tr>
                        <td >15</td>
                        <td>I want my cat to be active</td>
                        <td ><asp:CheckBox runat="server" ID="cbq15a" Text="Not very active at all" /></td>
                        <td><asp:CheckBox runat="server" ID="cbq15b" Text="Somewhat" /></td>
                        <td ><asp:CheckBox runat="server" ID="cbq15c" Text="Yes, very" /></td>
                        <td></td>
                    </tr>
                     <tr>
                        <td >16</td>
                        <td>It's most important to me that my cat</td>
                        <td colspan="4"><asp:textbox runat="server" ID="tbQuestion" Width="100%" /></td>
                    </tr>
                </table>
                <asp:Button ID="btnCat" runat="server" Text="Submit" class="noprint" />
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlDog" runat="server" Visible="false">
        <div class="details">
      <table>
        <tr>
            <td>1</td>
            <td>I have owned a dog before.</td>
            <td><asp:CheckBox runat="server" ID="q1a" Text="YES" /></td>
            <td><asp:CheckBox runat="server" ID="q2b" Text="NO" /></td>
            <td></td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cbq1c" Text="Currently own dog(s)" /></td>
        </tr>
         <tr>
            <td>2</td>
            <td>The last time I had a dog was...</td>
            <td><asp:CheckBox runat="server" ID="q2a" Text="2-10 years ago" /></td>
            <td><asp:CheckBox runat="server" ID="cb5" Text="10 years +" /></td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb6" Text="Currently own dog(s)" /></td>
            <td></td>
        </tr>
         <tr>
            <td>3</td>
            <td>My dog needs to get along with other dogs</td>
            <td><asp:CheckBox runat="server" ID="q3a" Text="NO" /></td>
            <td colspan="3">If yes list names, ages, genders & breeds:<asp:TextBox ID="tbbreeds" runat="server" /></td>
            <td><asp:CheckBox runat="server" ID="q3b" Text="YES" /></td>

        </tr>
         <tr>
            <td>4</td>
            <td>My dog needs to be good with:</td>
            <td><asp:CheckBox runat="server" ID="cb10" Text="Children over 8 years old" /></td>
            <td><asp:CheckBox runat="server" ID="cb11" Text="Childer under 8 years old" /></td>
            <td><asp:CheckBox runat="server" ID="cb12" Text="Elderly People" /></td>
            <td><asp:CheckBox runat="server" ID="cb13" Text="Cats" /><asp:CheckBox runat="server" ID="cb14" Text="Other" /></td>

        </tr>
         <tr><td>5</td>
            <td>My dog will primarily be an...</td>
            <td><asp:CheckBox runat="server" ID="cb15" Text="Inside dog" /></td>
            <td></td>
            <td></td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb16" Text="Outside dog" /></td>
        </tr>
        <tr>
            <td>6</td>
            <td colspan="2">How many hours will your dog spend outside per day</td>
            <td colspan="4"><asp:textbox id="tbHourDay" runat="server"/></td>
        </tr>
  
         <tr>
            <td>7</td>
            <td>My dog needs to be able to be alone(per day)....</td>
            <td><asp:CheckBox runat="server" ID="cb17" Text="4 Hours or less" /></td>
            <td><asp:CheckBox runat="server" ID="cb18" Text="8-10 hours" /></td>
            <td><asp:CheckBox runat="server" ID="cb19" Text="4-8 hours" /></td>
            <td><asp:CheckBox runat="server" ID="cb20" Text="2 hours or less" /></td>
            <td><asp:CheckBox runat="server" ID="cb21" Text="12 hours" /></td>
        </tr>
         <tr>
            <td>8</td>
            <td>When I am at home, I want my cat to be by my side or in my lap</td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb22" Text="All of the time" /></td>
            <td><asp:CheckBox runat="server" ID="cb23" Text="Some of the time" /></td>
            <td><asp:CheckBox runat="server" ID="cb24" Text="Little of the time" /></td>
            <td></td>
        </tr>
         <tr>
            <td>9</td>
            <td>When I'm at home, I want my dog to be by my side....</td>
            <td><asp:CheckBox runat="server" ID="cb25" Text="In the garage" /></td>
            <td><asp:CheckBox runat="server" ID="cb26" Text="In aa crate in the house" /></td>
            <td><asp:CheckBox runat="server" ID="cb27" Text="In the yeard" /></td>
            <td><asp:CheckBox runat="server" ID="cb28" Text="Loose in the house" /></td>
            <td><asp:CheckBox runat="server" ID="cb29" Text="Confined to one room in the house" /></td>
            <td></td>
        </tr>
         <tr>
            <td>10</td>
            <td>I want a guard dog</td>
            <td><asp:CheckBox runat="server" ID="cb30" Text="NO" /></td>
            <td></td>
            <td></td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb31" Text="YES" /></td>
        </tr>
         <tr>
            <td>11</td>
            <td>I want my dog to hunt or herd with me</td>
            <td><asp:CheckBox runat="server" ID="cb32" Text="NO" /></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
         <tr>
            <td>12</td>
            <td>I want my dog to be the type that is very enthusiastic in the way she shows she loves people</td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb33" Text="Not at all" /></td>
            <td><asp:CheckBox runat="server" ID="cb34" Text="Somewhat" /></td>
            <td><asp:CheckBox runat="server" ID="cb35" Text="Very" /></td>
            <td></td>
        </tr>
        <tr>
            <td>13</td>
            <td>I want my dog to be playful</td>
            <td></td>
            <td><asp:CheckBox runat="server" ID="cb36" Text="Not at all" /></td>
            <td><asp:CheckBox runat="server" ID="cb37" Text="Somewhat" /></td>
            <td><asp:CheckBox runat="server" ID="cb38" Text="Not at all" /></td>
            <td></td>
        </tr>
         <tr>
            <td>14</td>
            <td>I want my dog to be laid back</td>
                 <td></td>
            <td><asp:CheckBox runat="server" ID="cb39" Text="Very" /></td>
            <td><asp:CheckBox runat="server" ID="cb40" Text="Somewhat" /></td>
            <td><asp:CheckBox runat="server" ID="cb41" Text="Not at all" /></td>
            <td></td>
        </tr>
         <tr>
            <td>15</td>
            <td>I am comfortable doing some training with my dog to improve manners such as jumping, stealing food, and pulling on the leash</td>
             <td></td>
             <td><asp:CheckBox runat="server" ID="cb42" Text="No training" /></td>
            <td><asp:CheckBox runat="server" ID="cb43" Text="Some training" /></td>
            <td><asp:CheckBox runat="server" ID="cb44" Text="A lot of training" /></td>
            <td></td>
        </tr>
         <tr>
            <td>16</td>
            <td>It's most important to me that my cat</td>
            <td></td>
             <td></td>
             <td><asp:CheckBox runat="server" ID="cb45" Text="NO" /></td>
            <td><asp:CheckBox runat="server" ID="cb46" Text="YES" /></td>
             <td></td>
             <td></td>
         </tr>
         <tr>
             <td>17</td>
             <td>I am interested in a dog with "special needs" (medical or behavioral)</td>
             <td></td>
             <td></td>
            <td><asp:CheckBox runat="server" ID="cb47" Text="NO" /></td>
            <td><asp:CheckBox runat="server" ID="cb48" Text="YES" /></td>
         <td></td>
     </tr>
     <tr>
        <td>18</td>
        <td>It's most important to me that my dog</td>
        <td colspan="5"><asp:textbox runat="server" ID="tbQuestionDog" Width="100%" /></td>
    </tr>
    </table>
    </div>
    <asp:Button ID="btnDog" runat="server" Text="Submit" />
   </asp:Panel>
    <p>Some footer information here with maybe a copyright sign. </p>

    </form>
  
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  <script>
      $(function () {
          //added date picker to keep data standard in db
          $("#tbDate").datepicker();
          $("#tbDateCats").datepicker();
      });
	</script>
</body>
</html>
