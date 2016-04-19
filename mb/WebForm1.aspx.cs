using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace mb
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public class WebForm1 : System.Web.UI.Page
	{
		protected System.Data.SqlClient.SqlDataAdapter sqlDA_Models;
		protected mb.MOCS DS_MOCS;
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		protected System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1;
		protected System.Data.SqlClient.SqlCommand sqlSelectCommand1;
		protected System.Data.SqlClient.SqlConnection sqlConnection1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			DS_MOCS.Clear();
			sqlDA_Models.Fill(DS_MOCS);
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.sqlConnection1 = new System.Data.SqlClient.SqlConnection();
			this.sqlDA_Models = new System.Data.SqlClient.SqlDataAdapter();
			this.DS_MOCS = new mb.MOCS();
			this.sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter();
			this.sqlSelectCommand1 = new System.Data.SqlClient.SqlCommand();
			((System.ComponentModel.ISupportInitialize)(this.DS_MOCS)).BeginInit();
			this.DataGrid1.SelectedIndexChanged += new System.EventHandler(this.DataGrid1_SelectedIndexChanged);
			// 
			// sqlConnection1
			// 
			this.sqlConnection1.ConnectionString = "data source=DASBOX;initial catalog=marsdb;password=mb;persist security info=True;" +
				"user id=mb_guest;workstation id=DASBOX;packet size=4096";
			this.sqlConnection1.InfoMessage += new System.Data.SqlClient.SqlInfoMessageEventHandler(this.sqlConnection1_InfoMessage);
			// 
			// sqlDA_Models
			// 
			this.sqlDA_Models.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
																								   new System.Data.Common.DataTableMapping("Table", "tblImages", new System.Data.Common.DataColumnMapping[] {
																																																				new System.Data.Common.DataColumnMapping("ID", "ID"),
																																																				new System.Data.Common.DataColumnMapping("filename", "filename"),
																																																				new System.Data.Common.DataColumnMapping("modelID", "modelID"),
																																																				new System.Data.Common.DataColumnMapping("thumbnail", "thumbnail"),
																																																				new System.Data.Common.DataColumnMapping("Expr1", "Expr1"),
																																																				new System.Data.Common.DataColumnMapping("imageID", "imageID"),
																																																				new System.Data.Common.DataColumnMapping("text", "text"),
																																																				new System.Data.Common.DataColumnMapping("moc_name", "moc_name"),
																																																				new System.Data.Common.DataColumnMapping("moc_desig", "moc_desig"),
																																																				new System.Data.Common.DataColumnMapping("Expr2", "Expr2"),
																																																				new System.Data.Common.DataColumnMapping("Expr3", "Expr3")})});
			this.sqlDA_Models.RowUpdated += new System.Data.SqlClient.SqlRowUpdatedEventHandler(this.sqlDA_Models_RowUpdated);
			// 
			// DS_MOCS
			// 
			this.DS_MOCS.DataSetName = "MOCS";
			this.DS_MOCS.Locale = new System.Globalization.CultureInfo("en-US");
			this.DS_MOCS.Namespace = "http://www.tempuri.org/MOCS.xsd";
			// 
			// sqlDataAdapter1
			// 
			this.sqlDataAdapter1.SelectCommand = this.sqlSelectCommand1;
			this.sqlDataAdapter1.TableMappings.AddRange(new System.Data.Common.DataTableMapping[] {
																									  new System.Data.Common.DataTableMapping("Table", "tblImages", new System.Data.Common.DataColumnMapping[] {
																																																				   new System.Data.Common.DataColumnMapping("ID", "ID"),
																																																				   new System.Data.Common.DataColumnMapping("filename", "filename"),
																																																				   new System.Data.Common.DataColumnMapping("modelID", "modelID"),
																																																				   new System.Data.Common.DataColumnMapping("thumbnail", "thumbnail"),
																																																				   new System.Data.Common.DataColumnMapping("Expr1", "Expr1"),
																																																				   new System.Data.Common.DataColumnMapping("imageID", "imageID"),
																																																				   new System.Data.Common.DataColumnMapping("text", "text"),
																																																				   new System.Data.Common.DataColumnMapping("moc_name", "moc_name"),
																																																				   new System.Data.Common.DataColumnMapping("moc_desig", "moc_desig"),
																																																				   new System.Data.Common.DataColumnMapping("Expr2", "Expr2"),
																																																				   new System.Data.Common.DataColumnMapping("Expr3", "Expr3")})});
			this.sqlDataAdapter1.RowUpdated += new System.Data.SqlClient.SqlRowUpdatedEventHandler(this.sqlDataAdapter1_RowUpdated);
			// 
			// sqlSelectCommand1
			// 
			this.sqlSelectCommand1.CommandText = @"SELECT dbo.tblImages.ID, dbo.tblImages.filename, dbo.tblImages.modelID, dbo.tblImages.thumbnail, dbo.tblContent.modelID AS Expr1, dbo.tblContent.imageID, dbo.tblContent.text, dbo.tblMOCS.moc_name, dbo.tblMOCS.moc_desig, dbo.tblContent.ID AS Expr2, dbo.tblMOCS.ID AS Expr3 FROM dbo.tblImages INNER JOIN dbo.tblMOCS ON dbo.tblImages.modelID = dbo.tblMOCS.ID INNER JOIN dbo.tblContent ON dbo.tblImages.ID = dbo.tblContent.imageID AND dbo.tblMOCS.ID = dbo.tblContent.modelID WHERE (dbo.tblMOCS.ID = 2)";
			this.sqlSelectCommand1.Connection = this.sqlConnection1;
			this.Load += new System.EventHandler(this.Page_Load);
			((System.ComponentModel.ISupportInitialize)(this.DS_MOCS)).EndInit();

		}
		#endregion

		private void sqlConnection1_InfoMessage(object sender, System.Data.SqlClient.SqlInfoMessageEventArgs e)
		{
			
		}

		private void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
	
		}

		private void sqlDA_Models_RowUpdated(object sender, System.Data.SqlClient.SqlRowUpdatedEventArgs e)
		{
		
		}

		private void sqlDataAdapter1_RowUpdated(object sender, System.Data.SqlClient.SqlRowUpdatedEventArgs e)
		{
		
		}

		

	}
}
