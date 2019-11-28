using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;

public class Registry : System.Web.UI.Page
{
    protected void btnSend_Click(object sender, EventArgs e)
    {
        var _name = txtName.Text;
        var _lastname = txtLastName.Text;
        var _country_origin = ddlCountryOrigin.Text;
        var _association = txtAssociation.Text;
        var _company = txtNameCompany.Text;
        var _ID = txtID.Text;
        var _occupation = txtOccupationonCompany.Text;
        var _main_contact = txtMainContact.Text;
        var _other_contact = txtOtherMainContact.Text;
        var _Email = txtEmail.Text;
        var _comments = txtComments.Text;

        if (_ID.Length > 0 & _ID.Length != 9 & _ID.Length != 11)
        {
            lblIDWarning.InnerText = "The ID number you specified is invalid, please verify...";
            lblSuccessful.InnerText = string.Empty;
        }
        else if (InsertFormRegistry(_name, 
                                    _lastname, 
                                    _country_origin, 
                                    _association, 
                                    _company, 
                                    _main_contact, 
                                    _other_contact, 
                                    _Email, 
                                    _comments, 
                                    _ID, 
                                    _occupation) == 0)
        {
            bool itWasRegistered = false;
            string vMessage = string.Empty;
            itWasRegistered = Email_PrepareSend(ref vMessage, 
                                        _name, 
                                        _lastname, 
                                        _country_origin, 
                                        _association, 
                                        _company, 
                                        _ID, 
                                        _occupation, 
                                        _main_contact, 
                                        _other_contact, 
                                        _Email, 
                                        _comments);
            if (itWasRegistered)
            {
                lblSuccessful.InnerText = "Registration has been carried out successfully.";
                CleanFields();
            }
            else
                lblSuccessful.InnerText = "Error sending mail: " + vMessage;
        }
    }

    private int InsertFormRegistry(string name, 
                                    string lastname, 
                                    string country_origin, 
                                    string association, 
                                    string company, 
                                    string main_contact, 
                                    string other_contact, 
                                    string Email, 
                                    string comments, 
                                    string ID, 
                                    string occupation)
    {
        OracleConnection conn = null;
        try
        {
            string connstr = Utilities.Decipher(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString);
            conn = new OracleConnection(connstr);
            conn.Open();

            OracleParameter p_name = new OracleParameter("P_name", OracleDbType.Varchar2, name, ParameterDirection.Input);
            OracleParameter p_lastname = new OracleParameter("P_lastname", OracleDbType.Varchar2, lastname, ParameterDirection.Input);
            OracleParameter p_country_origin = new OracleParameter("P_country_origin", OracleDbType.Varchar2, country_origin, ParameterDirection.Input);
            OracleParameter p_association = new OracleParameter("P_association", OracleDbType.Varchar2, association, ParameterDirection.Input);
            OracleParameter p_company = new OracleParameter("P_company", OracleDbType.Varchar2, company, ParameterDirection.Input);
            OracleParameter p_main_contact = new OracleParameter("P_main_contact", OracleDbType.Varchar2, main_contact, ParameterDirection.Input);
            OracleParameter p_other_contact = new OracleParameter("P_other_contact", OracleDbType.Varchar2, other_contact, ParameterDirection.Input);
            OracleParameter p_Email = new OracleParameter("P_Email", OracleDbType.Varchar2, Email, ParameterDirection.Input);
            OracleParameter p_comments = new OracleParameter("P_comments", OracleDbType.Varchar2, comments, ParameterDirection.Input);
            OracleParameter p_ID = new OracleParameter("P_ID", OracleDbType.Varchar2, ID, ParameterDirection.Input);
            OracleParameter p_occupation = new OracleParameter("P_occupation_on_company", OracleDbType.Varchar2, occupation, ParameterDirection.Input);

            OracleCommand command = new OracleCommand();
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "USER.SQUEMA";
            command.BindByName = true;
            command.Parameters.Add(p_name);
            command.Parameters.Add(p_lastname);
            command.Parameters.Add(p_country_origin);
            command.Parameters.Add(p_association);
            command.Parameters.Add(p_company);
            command.Parameters.Add(p_main_contact);
            command.Parameters.Add(p_other_contact);
            command.Parameters.Add(p_Email);
            command.Parameters.Add(p_comments);
            command.Parameters.Add(p_ID);
            command.Parameters.Add(p_occupation);
            command.ExecuteNonQuery();

            InsertFormRegistry = 0;
        }

        catch (Exception ex)
        {
            lblSuccessful.InnerText = "There was a problem with your registry, try later.";
            InsertFormRegistry = 1;
            if ((System.Web.UI.Page.Request.UserHostAddress == "127.0.0.1") | (System.Web.UI.Page.Request.UserHostAddress == "::1"))
                lblSuccessful.InnerText += Strings.Chr(13) + ex.StackTrace + " ---- " + ex.Message;
        }
        finally
        {
            conn.Close();
        }
    }
    private bool Email_PrepareSend(ref string Msg, 
                                           string name, 
                                           string lastname, 
                                           string country_origin, 
                                           string association, 
                                           string company, 
                                           string ID, 
                                           string occupation, 
                                           string main_contact, 
                                           string other_contact, 
                                           string Email, 
                                           string comments)
    {
        Msg = string.Empty;
        bool itWasRegistered = false;

        try
        {
            var body_message = "<p style = font-family:Lucida Sans;font-size:11px;>"
                                + "<strong>Thank you for registering for the workshop. "
                                + "\"Technology providers for issuing electronic vouchers\""
                                + "</strong> <br/><br/> We notify you that the registration has been made correctly. "
                                + "<br/><br/> The data will be validated in the system in the next hours. "
                                + "<br/><br/> You will be sent a notification about the status of your request. <br/><br/> "
                                + "This registry does not guarantee your participation in the workshop, until you receive approval and process "
                                + "the transfer of payment by participation. <br/><br/> "
                                + "If you need any additional information, please do not hesitate to contact us. "
                                + "<br/><br/> Best regards</p>";
            var senderMail = System.Configuration.ConfigurationManager.AppSettings.Get("SenderMail");
            var InternalRecipientMail = System.Configuration.ConfigurationManager.AppSettings.Get("InternalRecipientMail");
            itWasRegistered = SendMail(ref Msg == Msg, senderMail, Email, string.Empty, "REGISTER OF ELECTRONIC BILLING PROVIDERS", string.Empty, string.Empty, body_message);
            if (!itWasRegistered)
                return false;

            var internal_body_message = "<p style = font-family:Lucida Sans;font-size:11px;><strong>New Participant Registration</strong> <br/><br/>" 
                                        + "name: " + name + "<br/>" + "lastname: " + lastname + "<br/>" + "Country of origin: " + country_origin 
                                        + "<br/>" + "Association: " + association + "<br/>" + "company: " + company + "<br/>" + "ID: " + ID + "<br/>" 
                                        + "Position held in the company: " + occupation + "<br/>" + "Primary Contact Number: " 
                                        + main_contact + "<br/>" + "Other contact number: " + other_contact + "<br/>" + "Email: " 
                                        + Email + "<br/>" + "comments: " + comments + "</p>";
            itWasRegistered = SendMail(ref Msg, 
                            senderMail, 
                            InternalRecipientMail, 
                            string.Empty, 
                            "REGISTER OF ELECTRONIC BILLING PROVIDERS", 
                            string.Empty, 
                            string.Empty, 
                            internal_body_message);
            if (!itWasRegistered)
                return false;
        }
        catch (Exception ex)
        {
            Msg = ex.Message + " ---- " + ex.StackTrace;
            return false;
        }
        return true;
    }
    private bool SendMail(ref string Msg, string from, string to, string cc, string matter, string atacha_text, string atacha_bin, string Message)
    {
        Msg = string.Empty;

        OracleConnection conn = null/* TODO Change to default(_) if this is not a reference type */;
        try
        {
            string connstr = Utilities.Decipher(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionStrings").ConnectionString);
            conn = new OracleConnection(connstr);
            conn.Open();

            OracleParameter p_from = new OracleParameter("SEND", OracleDbType.Varchar2, from, ParameterDirection.Input);
            OracleParameter p_to = new OracleParameter("DESTINY", OracleDbType.Varchar2, to, ParameterDirection.Input);
            OracleParameter p_cc = new OracleParameter("COPY", OracleDbType.Varchar2, cc, ParameterDirection.Input);
            OracleParameter p_matter = new OracleParameter("MATTER", OracleDbType.Varchar2, matter, ParameterDirection.Input);
            OracleParameter p_atacha_text = new OracleParameter("ATACHA_TEX", OracleDbType.Varchar2, atacha_text, ParameterDirection.Input);
            OracleParameter p_atacha_bin = new OracleParameter("ATACHA_BIN", OracleDbType.Varchar2, atacha_bin, ParameterDirection.Input);
            OracleParameter p_msg = new OracleParameter("MESSAGE", OracleDbType.Varchar2, Message, ParameterDirection.Input);

            OracleCommand command = new OracleCommand();
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "SENDMAILZ";
            command.BindByName = true;
            command.Parameters.Add(p_de);
            command.Parameters.Add(p_para);
            command.Parameters.Add(p_cc);
            command.Parameters.Add(p_matter);
            command.Parameters.Add(p_atacha_text);
            command.Parameters.Add(p_atacha_bin);
            command.Parameters.Add(p_msg);
            command.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Msg = ex.Message + " ---- " + ex.StackTrace;
            return false;
        }
        finally
        {
            conn.Close();
        }
        return true;
    }

    private void CleanFields()
    {
        txtName.Text = string.Empty;
        txtLastName.Text = string.Empty;
        txtAssociation.Text = string.Empty;
        txtNameCompany.Text = string.Empty;
        txtID.Text = string.Empty;
        txtOccupationonCompany.Text = string.Empty;
        txtMainContact.Text = string.Empty;
        txtOtherMainContact.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtComments.Text = string.Empty;
        lblIDWarning.InnerText = string.Empty;

        return null;
    }
}
