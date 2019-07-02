$link = mysql_connect('localhost','root','');
if(!$link) {
die('Failed to connect to server: ' . mysql_error());
}

//Select database
Check your database
$db = mysql_select_db('pos', $link);
if(!$db) {
die("Unable to select database");
}

Please check u r database and connect.php


<asp:RequiredFieldValidator ID="enddatevalidator" runat="server" ControlToValidate="Txt_Date" Display="Dynamic" ErrorMessage="Por Favor Ingrese Fecha Final" SetFocusOnError="true" ForeColor="Red" ValidationGroup="submitvalidation" /> <br /><br />


System.Data.SqlClient.SqlException (0x80131904): Incorrect syntax near 'Examen'. 
at System.Data.SqlClient.SqlConnection.OnError (SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction) 
at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction) 
at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose) 
at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady) 
at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData() 
at System.Data.SqlClient.SqlDataReader.get_MetaData() 
at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption) 
at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest) 
at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry) 
at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method) at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method) at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior) 
at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior) 
at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior) 
at System.Data.Common.DbDataAdapter.Fill(DataSet dataSet, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior) 
at System.Data.Common.DbDataAdapter.Fill(DataSet dataSet) 
at Admin_newquiz.DropDownList1_SelectedIndex(Object sender, EventArgs e) in 
c:\Users\Jairo Brenes\Desktop\ReleaseVersion\web_files\Admin\newquiz.aspx.cs:
line 139 ClientConnectionId:116a7066-db4e-42ef-9c95-40f8a959e162 Error Number:102,State:1,Class:15


<asp:ScriptManager runat="server" />                         
<asp:UpdatePanel runat="server" ID="UpdatePanel">                             
<ContentTemplate>                                 
<asp:DropDownList ID="DropDownList_Provincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_Provincia_SelectedIndexChanged" CssClass="w3-button w3-blue w3-text-white" Style="width: 250px;"></asp:DropDownList>                                 <br />                                 <br /



  <connectionStrings>
    <add name="ConnectionString" connectionString="Data Source=(LocalDB)v11.0;AttachDbFilename=|DataDirectory|(quizdb);Integrated Security=True"
      providerName="System.Data.SqlClient"/>
  </connectionStrings>