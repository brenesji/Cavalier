

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>

<title>Universidad Hispanoamericana - Registro</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css"/>
<link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'/>

<!-- Custom styles for this template -->
<link href="css/grayscale.min.css" rel="stylesheet"/>

</head>
<body>

</body>

    <form id="form1" runat="server">
    <!-- Login Section -->
    <section id="login" class="content-section text-center">
      <div class="container">
        <div class="col-lg-8 mx-auto">
          <h2>Registro de Usuario</h2>
            <div class="text-center" >
                   
                   <h2>Usuario & Contraseña</h2>
                   <table class="text-center table table-default" >
                       
                       <tr>
                           <td>
                              <label class="text-justify">Correo Electronico:</label> <br /><br />                          
                           </td>
                           <td>
                               &nbsp;&nbsp;<asp:TextBox ID="txt_IDusuario" runat="server" MaxLength="50"></asp:TextBox>                            
                               <br /><br />
                           </td> 
                            <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingrese Nombre de Usuario" ControlToValidate="txt_IDusuario" ForeColor="Red" Display="Dynamic"></asp:requiredfieldvalidator><br/>
                               <asp:regularexpressionvalidator runat="server" errormessage="Ingrese una cuenta de Correo Valida" ControlToValidate="txt_IDusuario" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator><br/>                    
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Contraseña:</label> <br/>                        
                           </td>
                           <td>
                                &nbsp;&nbsp;<asp:TextBox ID="txt_Password" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox> 
                               <br /><br />                          
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingresa una Contrasena" ForeColor="Red" ControlToValidate="txt_Password"></asp:requiredfieldvalidator><br/>
                               <asp:comparevalidator runat="server" errormessage="Las Contrasenas no son iguales" ForeColor="Red" ControlToCompare="txt_Password1" ControlToValidate="txt_Password"></asp:comparevalidator><br/>
                               
                           </td>
                       </tr>
                        <tr>
                           <td>
                                <label class="text-justify">Validar Contraseña:</label> <br /><br />
                           </td>
                            <td>
                                &nbsp;&nbsp;<asp:TextBox ID="txt_Password1" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox> 
                                <br /><br />
                           </td>
                            <td class="text-left"><asp:requiredfieldvalidator runat="server" errormessage="Reingresa una Contrasena" ForeColor="Red" ControlToValidate="txt_Password1"></asp:requiredfieldvalidator><br/>
                                
                           </td>
                       </tr>
                   </table>
                <br/>
                   
                    <!-- Informacion Personal -->                
                   <h2>Informacion Personal</h2>

                   <table class="text-center table table-default">
                        <tr>
                           <td>
                               <label class="text-justify">Nombre:</label> <br /><br />
                           </td>
                            <td>
                               <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox> <br /><br />
                           </td>   
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingrese Nombre" ControlToValidate="txt_Name" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Primer Apellido:</label> <br /><br />
                           </td>
                            <td>
                               <asp:TextBox ID="txt_FirstName" runat="server"></asp:TextBox> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingrese Primer Apellido" ControlToValidate="txt_FirstName" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                        <tr>
                           <td>
                               <label class="text-justify">Segundo Apellido:</label> <br /><br />
                           </td>
                            <td>
                               <asp:TextBox ID="txt_LastName" runat="server"></asp:TextBox> <br /><br />
                           </td>
                            <td class="text-left">
                                <asp:requiredfieldvalidator runat="server" errormessage="Ingrese Segundo Apellido" ControlToValidate="txt_LastName" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                        <tr>
                           <td>
                               <label class="text-justify">Provincia:</label> <br /><br />
                           </td>
                            <td>
                               <asp:dropdownlist ID="DropDownList_Provincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Provincia_SelectedIndexChanged" style="width: 250px;"></asp:dropdownlist> <br /><br />
                           </td>
                            <td class="text-left">
                                <asp:requiredfieldvalidator runat="server" errormessage="Seleccione una Provincia" ControlToValidate="DropDownList_Provincia" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Canton:</label> <br /><br />
                           </td>
                            <td>
                               <asp:dropdownlist id="DropDownList_Canton" runat="server"  OnSelectedIndexChanged="DropDownList_Canton_SelectedIndexChanged1" AutoPostBack="True" style="width: 250px;" ></asp:dropdownlist> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Seleccione un Canton" ControlToValidate="DropDownList_Canton" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Distrito:</label> <br /><br />
                           </td>
                            <td>
                               <asp:DropDownList ID="DropDownList_Distrito" runat="server" AutoPostBack="True" style="width: 250px;" ></asp:DropDownList> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Seleccione un Distrito " ControlToValidate="DropDownList_Distrito" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                                <label class="text-justify">Colegio:</label> <br /><br />
                           </td>
                            <td>
                                <asp:DropDownList ID="DropDownList_HighSchool" runat="server" style="width: 250px;">
                                    <asp:ListItem Value="0">Test</asp:ListItem>
                                </asp:DropDownList> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Seleccione un Colegio" ControlToValidate="DropDownList_HighSchool" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Sexo:</label> <br /><br />
                           </td>
                            <td>
                               <asp:DropDownList ID="DropDownList_Gender" runat="server" style="width: 250px;">
                                   <asp:ListItem Value="0">Hombre</asp:ListItem>
                                   <asp:ListItem Value="1">Mujer</asp:ListItem>
                                </asp:DropDownList> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Seleccione un Sexo" ControlToValidate="DropDownList_Gender" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                                <i class="fa fa-phone fa-fw"></i> <label class="text-justify">Telefono:</label> <br /><br />
                           </td>
                            <td>
                               <asp:TextBox ID="txt_Telefono" runat="server" TextMode="Phone"></asp:TextBox> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingrese un Numero de Telefono" ControlToValidate="txt_Telefono" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Nacionalidad:</label> <br /><br />
                           </td>
                            <td>
                                <asp:DropDownList ID="DropDownList_Country" runat="server" style="width: 250px;" >
                                </asp:DropDownList> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Seleccione una Nacionalidad" ControlToValidate="DropDownList_Country" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>

                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Cedula:</label> <br /><br />
                           </td>
                            <td> 
                               <asp:TextBox ID="txt_Cedula" runat="server" TextMode="Number"></asp:TextBox> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" errormessage="Ingrese una Cedula" ControlToValidate="txt_Cedula" ForeColor="Red"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <label class="text-justify">Fecha de Nacimiento (Mes/Dia/Ano):</label>
                               <br /><br />
                           </td>
                            <td>
                               <asp:TextBox ID="Txt_Date" runat="server" ToolTip="Mes/Dia/Ano"></asp:TextBox> <br /><br />
                           </td>
                           <td class="text-left">
                               <asp:requiredfieldvalidator runat="server" Type="Date" Operator="DataTypeCheck" errormessage="Ingrese Fecha de Nacimiento" ControlToValidate="txt_Date" ForeColor="Red" style="text-align: center"></asp:requiredfieldvalidator>
                           </td>
                       </tr>
                   </table>
                  <br/>
                  <br/>
                  <asp:Button ID="Submit" runat="server" Text="Registrar" class="btn btn-default btn-lg"  OnClick="Submit_Click"/>
                   <br />
                  <asp:Button ID="btn_Return" runat="server" Text="Home Page" class="btn btn-default btn-lg" visible="False" OnClick="btn_Return_Click"/>
                  <br/>
                  <br/>
            </div>
        </div>
      </div>
    </section>
    
 <!-- Footer -->


   <!-- Bootstrap core JavaScript -->
   <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   </form>

</html>
 <footer>
   <div class="container text-center">
        <%--<p>Copyright &copy; Your Website 2018</p>--%>
      </div>
 </footer>
