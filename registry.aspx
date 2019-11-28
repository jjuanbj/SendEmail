<%@ Page Title="" Language="cs" AutoEventWireup="false" MasterPageFile="~/default.Master" CodeBehind="registry.aspx.cs" Inherits="WebQueries.registry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    Registration Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphHead" runat="server">
    <script src="/js/forms/scriptregistry.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMain" runat="server">
    <asp:Panel ID="GeneralPanel" runat="server">


        <div class="row">
            <div class="col-12 col-sm-12">

                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="page-header">
                                    <h4>Registration Form</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="row mb-0">
                    <div class="col-12 col-sm">
                        <div class="form-group">
                            <label for="txtName">Name</label>
                            <asp:TextBox ID="txtName" runat="server" autocomplete="off" ValidationGroup="registrygroup"
                                MaxLength="50" CssClass="form-control required consult-search__field">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="rfvtxtName" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtName"
                                EnableClientScript="true"
                                Text="The field 'Name' is mandatory.">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="txtSurname">Surname</label>
                            <asp:TextBox ID="txtSurname" runat="server" autocomplete="off" MaxLength="50"
                                CssClass="form-control required consult-search__field"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="frvTxtSurname" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtSurname"
                                EnableClientScript="true"
                                Text="The field 'Surname' is mandatory.">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="ddlCountryOrigin">Country:</label>
                            <asp:DropDownList ID="ddlCountryOrigin" runat="server" autocomplete="off"
                               MaxLength="50" CssClass="form-control required consult-search__field">
                                <asp:ListItem>República Dominicana</asp:ListItem>
                                <asp:ListItem>Afganistán</asp:ListItem>
                                <asp:ListItem>Albania</asp:ListItem>
                                <asp:ListItem>Alemania</asp:ListItem>
                                <asp:ListItem>Andorra</asp:ListItem>
                                <asp:ListItem>Angola</asp:ListItem>
                                <asp:ListItem>Antigua y Barbuda</asp:ListItem>
                                <asp:ListItem>Arabia Saudita</asp:ListItem>
                                <asp:ListItem>Argelia</asp:ListItem>
                                <asp:ListItem>Argentina</asp:ListItem>
                                <asp:ListItem>Armenia</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>Austria</asp:ListItem>
                                <asp:ListItem>Azerbaiyán</asp:ListItem>
                                <asp:ListItem>Bahamas</asp:ListItem>
                                <asp:ListItem>Bangladés</asp:ListItem>
                                <asp:ListItem>Barbados</asp:ListItem>
                                <asp:ListItem>Baréin</asp:ListItem>
                                <asp:ListItem>Bélgica</asp:ListItem>
                                <asp:ListItem>Belice</asp:ListItem>
                                <asp:ListItem>Benín</asp:ListItem>
                                <asp:ListItem>Bielorrusia</asp:ListItem>
                                <asp:ListItem>Birmania</asp:ListItem>
                                <asp:ListItem>Bolivia</asp:ListItem>
                                <asp:ListItem>Bosnia y Herzegovina</asp:ListItem>
                                <asp:ListItem>Botsuana</asp:ListItem>
                                <asp:ListItem>Brasil</asp:ListItem>
                                <asp:ListItem>Brunéi</asp:ListItem>
                                <asp:ListItem>Bulgaria</asp:ListItem>
                                <asp:ListItem>Burkina Faso</asp:ListItem>
                                <asp:ListItem>Burundi</asp:ListItem>
                                <asp:ListItem>Bután</asp:ListItem>
                                <asp:ListItem>Cabo Verde</asp:ListItem>
                                <asp:ListItem>Camboya</asp:ListItem>
                                <asp:ListItem>Camerún</asp:ListItem>
                                <asp:ListItem>Canadá</asp:ListItem>
                                <asp:ListItem>Catar</asp:ListItem>
                                <asp:ListItem>Chad</asp:ListItem>
                                <asp:ListItem>Chile</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>Chipre</asp:ListItem>
                                <asp:ListItem>Ciudad del Vaticano</asp:ListItem>
                                <asp:ListItem>Colombia</asp:ListItem>
                                <asp:ListItem>Comoras</asp:ListItem>
                                <asp:ListItem>Corea del Norte</asp:ListItem>
                                <asp:ListItem>Corea del Sur</asp:ListItem>
                                <asp:ListItem>Costa de Marfil</asp:ListItem>
                                <asp:ListItem>Costa Rica</asp:ListItem>
                                <asp:ListItem>Croacia</asp:ListItem>
                                <asp:ListItem>Cuba</asp:ListItem>
                                <asp:ListItem>Dinamarca</asp:ListItem>
                                <asp:ListItem>Dominica</asp:ListItem>
                                <asp:ListItem>Ecuador</asp:ListItem>
                                <asp:ListItem>Egipto</asp:ListItem>
                                <asp:ListItem>El Salvador</asp:ListItem>
                                <asp:ListItem>Emiratos Árabes Unidos</asp:ListItem>
                                <asp:ListItem>Eritrea</asp:ListItem>
                                <asp:ListItem>Eslovaquia</asp:ListItem>
                                <asp:ListItem>Eslovenia</asp:ListItem>
                                <asp:ListItem>España</asp:ListItem>
                                <asp:ListItem>Estados Unidos</asp:ListItem>
                                <asp:ListItem>Estonia</asp:ListItem>
                                <asp:ListItem>Etiopía</asp:ListItem>
                                <asp:ListItem>Filipinas</asp:ListItem>
                                <asp:ListItem>Finlandia</asp:ListItem>
                                <asp:ListItem>Fiyi</asp:ListItem>
                                <asp:ListItem>Francia</asp:ListItem>
                                <asp:ListItem>Gabón</asp:ListItem>
                                <asp:ListItem>Gambia</asp:ListItem>
                                <asp:ListItem>Georgia</asp:ListItem>
                                <asp:ListItem>Ghana</asp:ListItem>
                                <asp:ListItem>Granada</asp:ListItem>
                                <asp:ListItem>Grecia</asp:ListItem>
                                <asp:ListItem>Guatemala</asp:ListItem>
                                <asp:ListItem>Guyana</asp:ListItem>
                                <asp:ListItem>Guinea</asp:ListItem>
                                <asp:ListItem>Guinea ecuatorial</asp:ListItem>
                                <asp:ListItem>Guinea-Bisáu</asp:ListItem>
                                <asp:ListItem>Haití</asp:ListItem>
                                <asp:ListItem>Honduras</asp:ListItem>
                                <asp:ListItem>Hungría</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Indonesia</asp:ListItem>
                                <asp:ListItem>Irak</asp:ListItem>
                                <asp:ListItem>Irán</asp:ListItem>
                                <asp:ListItem>Irlanda</asp:ListItem>
                                <asp:ListItem>Islandia</asp:ListItem>
                                <asp:ListItem>Islas Marshall</asp:ListItem>
                                <asp:ListItem>Islas Salomón</asp:ListItem>
                                <asp:ListItem>Israel</asp:ListItem>
                                <asp:ListItem>Italia</asp:ListItem>
                                <asp:ListItem>Jamaica</asp:ListItem>
                                <asp:ListItem>Japón</asp:ListItem>
                                <asp:ListItem>Jordania</asp:ListItem>
                                <asp:ListItem>Kazajistán</asp:ListItem>
                                <asp:ListItem>Kenia</asp:ListItem>
                                <asp:ListItem>Kirguistán</asp:ListItem>
                                <asp:ListItem>Kiribati</asp:ListItem>
                                <asp:ListItem>Kuwait</asp:ListItem>
                                <asp:ListItem>Laos</asp:ListItem>
                                <asp:ListItem>Lesoto</asp:ListItem>
                                <asp:ListItem>Letonia</asp:ListItem>
                                <asp:ListItem>Líbano</asp:ListItem>
                                <asp:ListItem>Liberia</asp:ListItem>
                                <asp:ListItem>Libia</asp:ListItem>
                                <asp:ListItem>Liechtenstein</asp:ListItem>
                                <asp:ListItem>Lituania</asp:ListItem>
                                <asp:ListItem>Luxemburgo</asp:ListItem>
                                <asp:ListItem>Madagascar</asp:ListItem>
                                <asp:ListItem>Malasia</asp:ListItem>
                                <asp:ListItem>Malaui</asp:ListItem>
                                <asp:ListItem>Maldivas</asp:ListItem>
                                <asp:ListItem>Malí</asp:ListItem>
                                <asp:ListItem>Malta</asp:ListItem>
                                <asp:ListItem>Marruecos</asp:ListItem>
                                <asp:ListItem>Mauricio</asp:ListItem>
                                <asp:ListItem>Mauritania</asp:ListItem>
                                <asp:ListItem>México</asp:ListItem>
                                <asp:ListItem>Micronesia</asp:ListItem>
                                <asp:ListItem>Moldavia</asp:ListItem>
                                <asp:ListItem>Mónaco</asp:ListItem>
                                <asp:ListItem>Mongolia</asp:ListItem>
                                <asp:ListItem>Montenegro</asp:ListItem>
                                <asp:ListItem>Mozambique</asp:ListItem>
                                <asp:ListItem>Namibia</asp:ListItem>
                                <asp:ListItem>Nauru</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                                <asp:ListItem>Nicaragua</asp:ListItem>
                                <asp:ListItem>Níger</asp:ListItem>
                                <asp:ListItem>Nigeria</asp:ListItem>
                                <asp:ListItem>Noruega</asp:ListItem>
                                <asp:ListItem>Nueva Zelanda</asp:ListItem>
                                <asp:ListItem>Omán</asp:ListItem>
                                <asp:ListItem>Países Bajos</asp:ListItem>
                                <asp:ListItem>Pakistán</asp:ListItem>
                                <asp:ListItem>Palaos</asp:ListItem>
                                <asp:ListItem>Panamá</asp:ListItem>
                                <asp:ListItem>Papúa Nueva Guinea</asp:ListItem>
                                <asp:ListItem>Paraguay</asp:ListItem>
                                <asp:ListItem>Perú</asp:ListItem>
                                <asp:ListItem>Polonia</asp:ListItem>
                                <asp:ListItem>Portugal</asp:ListItem>
                                <asp:ListItem>Reino Unido</asp:ListItem>
                                <asp:ListItem>República Centroafricana</asp:ListItem>
                                <asp:ListItem>República Checa</asp:ListItem>
                                <asp:ListItem>República de Macedonia</asp:ListItem>
                                <asp:ListItem>República del Congo</asp:ListItem>
                                <asp:ListItem>República Democrática del Congo</asp:ListItem>
                                <asp:ListItem>República Sudafricana</asp:ListItem>
                                <asp:ListItem>Ruanda</asp:ListItem>
                                <asp:ListItem>Rumanía</asp:ListItem>
                                <asp:ListItem>Rusia</asp:ListItem>
                                <asp:ListItem>Samoa</asp:ListItem>
                                <asp:ListItem>San Cristóbal y Nieves</asp:ListItem>
                                <asp:ListItem>San Marino</asp:ListItem>
                                <asp:ListItem>San Vicente y las Granadinas</asp:ListItem>
                                <asp:ListItem>Santa Lucía</asp:ListItem>
                                <asp:ListItem>Santo Tomé y Príncipe</asp:ListItem>
                                <asp:ListItem>Senegal</asp:ListItem>
                                <asp:ListItem>Serbia</asp:ListItem>
                                <asp:ListItem>Seychelles</asp:ListItem>
                                <asp:ListItem>Sierra Leona</asp:ListItem>
                                <asp:ListItem>Singapur</asp:ListItem>
                                <asp:ListItem>Siria</asp:ListItem>
                                <asp:ListItem>Somalia</asp:ListItem>
                                <asp:ListItem>Sri Lanka</asp:ListItem>
                                <asp:ListItem>Suazilandia</asp:ListItem>
                                <asp:ListItem>Sudán</asp:ListItem>
                                <asp:ListItem>Sudán del Sur</asp:ListItem>
                                <asp:ListItem>Suecia</asp:ListItem>
                                <asp:ListItem>Suiza</asp:ListItem>
                                <asp:ListItem>Surinam</asp:ListItem>
                                <asp:ListItem>Tailandia</asp:ListItem>
                                <asp:ListItem>Tanzania</asp:ListItem>
                                <asp:ListItem>Tayikistán</asp:ListItem>
                                <asp:ListItem>Timor Oriental</asp:ListItem>
                                <asp:ListItem>Togo</asp:ListItem>
                                <asp:ListItem>Tonga</asp:ListItem>
                                <asp:ListItem>Trinidad y Tobago</asp:ListItem>
                                <asp:ListItem>Túnez</asp:ListItem>
                                <asp:ListItem>Turkmenistán</asp:ListItem>
                                <asp:ListItem>Turquía</asp:ListItem>
                                <asp:ListItem>Tuvalu</asp:ListItem>
                                <asp:ListItem>Ucrania</asp:ListItem>
                                <asp:ListItem>Uganda</asp:ListItem>
                                <asp:ListItem>Uruguay</asp:ListItem>
                                <asp:ListItem>Uzbekistán</asp:ListItem>
                                <asp:ListItem>Vanuatu</asp:ListItem>
                                <asp:ListItem>Venezuela</asp:ListItem>
                                <asp:ListItem>Vietnam</asp:ListItem>
                                <asp:ListItem>Yemen</asp:ListItem>
                                <asp:ListItem>Yibuti</asp:ListItem>
                                <asp:ListItem>Zambia</asp:ListItem>
                                <asp:ListItem>Zimbabue</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="txtAssociation">Association to which belongs:</label>
                            <asp:TextBox ID="txtAssociation" runat="server" autocomplete="off"
                                MaxLength="50" CssClass="form-control required consult-search__field">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="rfvTxtAssociation" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtAssociation"
                                EnableClientScript="true"
                                Text="The field 'Association' is mandatory.">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="txtNameCompany">Company Name:</label>
                            <asp:TextBox ID="txtNameCompany" runat="server" autocomplete="off"
                                MaxLength="50" CssClass="form-control required consult-search__field">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="rfvtxtNameCompany" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtNameCompany"
                                EnableClientScript="true"
                                Text="The field 'Company Name' is mandatory.">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="txtID">ID:</label>
                            <asp:TextBox ID="txtID" runat="server" autocomplete="off" MaxLength="11"
                                CssClass="form-control required only-numbers consult-search__field">
                            </asp:TextBox> 
                            <label id="lblIDWarning" runat="server" style="color:red;font-weight: normal !important;"></label>                           
                        </div>

                        <div class="form-group">
                            <label for="txtOccupationOnCompany">Position held within the Company:</label>
                            <asp:TextBox ID="txtOccupationOnCompany" runat="server" autocomplete="off" MaxLength="50"
                                CssClass="form-control required consult-search__field">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtOccupationOnCompany"
                                EnableClientScript="true"
                                Text="The field 'Position held within the Company' is mandatory.">
                            </asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="txtMainContact">Primary Contact Number:</label>
                            <asp:TextBox ID="txtMainContact" runat="server" autocomplete="off" MaxLength="50"
                                CssClass="form-control required only-numbers consult-search__field">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="rfvTxtMainContact" runat="server"
                                ErrorMessage="*" Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtMainContact"
                                EnableClientScript="true"
                                Text="The field 'Primary Contact Number' is mandatory.">
                            </asp:RequiredFieldValidator>                            
                        </div>

                        <div class="form-group">
                            <label for="txtOtherMainContact">Other contact number:</label>
                            <asp:TextBox ID="txtOtherMainContact" runat="server" autocomplete="off" MaxLength="50"
                                CssClass="form-control required only-numbers consult-search__field">
                            </asp:TextBox>                            
                        </div>

                        <div class="form-group">
                            <label for="txtEmail">Email:</label>
                            <asp:TextBox ID="txtEmail" runat="server" autocomplete="off"
                                MaxLength="50" CssClass="form-control required consult-search__field">                                
                            </asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="rfvTxtEmail"
                                runat="server"
                                ErrorMessage="*"
                                Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtEmail"
                                EnableClientScript="true"
                                Text="The field 'Email' is mandatory.">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator
                                ID="revTxtEmail"
                                runat="server"
                                ErrorMessage="*"
                                Display="Dynamic"
                                ValidationGroup="vgregistry"
                                ControlToValidate="txtEmail"
                                SetFocusOnError="True"
                                EnableClientScript="true"
                                Text="Invalid Email"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                DisplayMode="List" ShowMessageBox="True" />
                        </div>
                    </div>
                </div>

                <div class="row mb-0">
                    <div class="col-12 col-sm">
                        <div class="form-group">
                            <label for="txtComment">Comments</label>
                            <asp:TextBox ID="txtComment" runat="server" autocomplete="off" TextMode="Multiline" 
                                CssClass="form-control required consult-search__field">
                            </asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ID="valComment"
                            ControlToValidate="txtComment"
                            ValidationExpression="^[\s\S]{0,200}$"
                            ErrorMessage="Please, in Comments type a maximum of 200 characters"
                            ValidationGroup="vgregistry"
                            Display="Dynamic">Please, type a maxium of 200 characters</asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>

                <div class="row mb-0" style="float: right;">
                    <div class="consult-search__buttons">
                        <div class="col-12 col-sm">
                            <div class="col-12 text-sm-right text-xs-left">
                                <h4 id="lblSuccessful" runat="server"></h4>
                                <asp:Button ID="btnSend" runat="server" Text="Send"
                                    CssClass="consult-search__button-search btn btn-primary ml-2"
                                    ValidationGroup="vgregistry" />                                
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-12">                                
                                    <h4 id="H2" runat="server"></h4>                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </asp:Panel>  
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <script type="text/javascript">
        var ID;
        $(document).click(function (e) {
            // Check for left button
            if (e.button == 0) {
                $('#<%= lblSuccessful.ClientID%>').text("");               
                $('#<%= lblIDWarning.ClientID%>').text("");               
            }            
        });
        
        $('#<%= txtID.ClientID%>').bind('input paste', function () {
            this.value = this.value.replace(/[^0-9]/g, '');            
        });

        $('#<%= txtMainContact.ClientID%>').bind('input paste', function () {
            this.value = this.value.replace(/[^0-9]/g, '');
        });

        $('#<%= txtOtherMainContact.ClientID%>').bind('input paste', function () {
            this.value = this.value.replace(/[^0-9]/g, '');
        });        

        $('#<%= btnSend.ClientID%>').click(function () {
            if ($('#<%= lblIDWarning.ClientID%>').val() != '') {
                $('#<%= lblSuccessful.ClientID%>').text("");               
            }                        
        });
        
    </script> 
</asp:Content>
