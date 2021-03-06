USE [snippetconnect]
GO
/****** Object:  Table [dbo].[VB]    Script Date: 03/12/2015 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VB](
	[VBId] [int] IDENTITY(1,1) NOT NULL,
	[Content_vb] [nvarchar](100) NOT NULL,
	[Sourcecode_vb] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VBId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[VB] ON
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (1, N'Generate Random Numbers', N'Generate Random Numbers$
Private&160;Sub&160;Button1_Click(ByVal&160;sender&160;As&160;System.Object,&160;ByVal&160;e&160;As&160;System.EventArgs)&160;Handles&160;Button1.Click$

        Dim number As Integer$
  
        Randomize()$
        &39; The program will generate a number from 0 to 50$
        number = Int(Rnd() * 50) + 1$
  
        TextBox1.Text = number$
    End Sub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (2, N'Read a text file to a textbox', N'Read a text file to a textbox $
TextBox1.Text = My.Computer.FileSystem.ReadAllText(&amp;quot;C:\your path\file.txt&amp;quot;)$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (3, N'Validate numbers then average out scores', N'Validate numbers then average out scores $
Private Sub Button1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) _ $
 Handles Button1.Click $
        With TextBox1 $
            If Not IsNumeric(.Text) And .Text &amp;lt;&amp;gt; vbNullString Then $
                MsgBox(&amp;quot;Sorry, only numbers allowed&amp;quot;)$
                .Text = &amp;quot;&amp;quot;$
            Else $
                With TextBox2 $
                    If Not IsNumeric(.Text) And .Text &amp;lt;&amp;gt; vbNullString Then$
                        MsgBox(&amp;quot;Sorry, only numbers allowed&amp;quot;)$
                        .Text = &amp;quot;&amp;quot;$
                    Else $
                        MsgBox(&amp;quot;The Average is &amp;quot; &amp;amp; (Val(TextBox1.Text) + Val(TextBox2.Text)) / 2)$
                    End If $
                End With $
            End If $
        End With $
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (4, N'Calculate age', N'Calculate age $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _ $
 Handles Button1.Click $
        Dim a As String $
        Dim b As String $
        Dim c As String $
                       a = TextBox3.Text $
                       b = TextBox1.Text $
                       c = TextBox2.Text $
        Dim DOB As New DateTime(a, b, c)$
        Dim Years As Integer = DateDiff(DateInterval.Year, DOB, Now) - 1 $
        Dim Months As Integer = DateDiff(DateInterval.Month, DOB, Now) Mod 12 $
        Dim days As Integer = DateDiff(DateInterval.Day, DOB, Now) Mod 30 - 10 $
                       TextBox4.Text = Years &amp;amp;amp; &amp;amp;quot; Years, &amp;amp;quot; &amp;amp;amp; Months &amp;amp;amp; &amp;amp;quot; Months &amp;amp;quot;$
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (5, N'Inverted an image', N'Inverted an image$
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles$  Button1.Click$ 
        Dim pic As New Bitmap(PictureBox1.Image)$
        For y As Integer = 0 To pic.Height - 1$
            For x As Integer = 0 To pic.Width - 1$
                Dim inv As Color = pic.GetPixel(x, y)$
                inv = Color.FromArgb(255, 255 - inv.R, 255 - inv.G, 255 - inv.B)$
                pic.SetPixel(x, y, inv)$
                PictureBox2.Image = pic$
            Next x$
        Next y$
    End Sub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (6, N'Validate phone number', N'Validate phone number $
Private Sub Button1_Click_1(sender As System.Object, _ $
 e As System.EventArgs) Handles Button1.Click $
        Dim phoneNumber As New Regex(&amp;amp;quot;\(\d{3}\)\d{3}-\d{4}&amp;amp;quot;) $
     If phoneNumber.IsMatch(TextBox1.Text) Then $
            TextBox2.Text = &amp;amp;quot;Valid phone number&amp;amp;quot; $
          Else $
            TextBox2.Text = &amp;amp;quot;Not Valid phone number&amp;amp;quot; $
          End If $
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (7, N'Function to Validate Double Value', N'Function to Validate Double Value $
Function validateDoublesAndCurrency(stringValue As String) As Boolean $
        Dim rslt As Boolean = False $
        Dim value As Double $
        Dim valueToTest As String = stringValue $
        Try $
           
            valueToTest = Double.Parse(stringValue, Globalization.NumberStyles.Currency)$
        Catch ex As Exception $
  
        End Try $
       
        If Double.TryParse(valueToTest, value) Then $
            
            rslt = True $
        Else $
           
            rslt = False $
        End If $
        Return rslt $
    End Function $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (8, N'Temperature convertor', N'Temperature convertor $ 
Private Sub Button1_Click(ByVal sender As System.Object, $
ByVal e As System.EventArgs) $
Handles Button1.Click $
   RadioButton1.Checked =True Then $
   Label1.Text = MaskedTextBox1.Text &amp; &quot; Fahrenheit = &quot; &amp; $
(MaskedTextBox1.Text - 32) / 1.8 &amp; &quot; Celsius&quot; $
 Else If  $
    RadioButton2.Checked = True Then $
   Label1.Text = MaskedTextBox1.Text &amp; &quot; Celsius = &quot; &amp; $
(MaskedTextBox1.Text * 1.8) + 32 &amp; &quot; Fahrenheit&quot; $
  End If $
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (9, N'Inserting Data', N'Inserting Data$
Dim ConnectionString As String = _$
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True$
Dim connection As New SqlConnection(ConnectionString)$
Try$
  connection.Open()$
 
  &39; declare and create a sql command object$
  Dim command As SqlCommand = connection.CreateCommand$
 
  &39; set the sql statement to execute at the data source$
  command.CommandText = _$
  &quot;INSERT INTO Users(Username, Password, FirstName, LastName) &quot; &amp; _$
  &quot;VALUES(@Username, @Password, @FirstName, @LastName)&quot;$
 
  &39; add the parameters$
  command.Parameters.AddWithValue(&quot;@Username&quot;, Username.Text)$
  command.Parameters.AddWithValue(&quot;@Password&quot;, Password.Text)$
  command.Parameters.AddWithValue(&quot;@FirstName&quot;, FirstName.Text)$
  command.Parameters.AddWithValue(&quot;@LastName&quot;, LastName.Text)$
 
  &39; execute the sql statement against the connection$
  command.ExecuteNonQuery()$
 
  &39; release the resources$
  command.Dispose()$
Catch ex As Exception
  Console.Write(ex.Message)$
Finally$
  &39; close the connection$
  connection.Close()$
End Try$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (10, N'Updating Data', N'Updating Data$
Dim ConnectionString As String = _$
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True$
Dim connection As New SqlConnection(ConnectionString)$
Try$
  connection.Open()$
 
  &amp;39; declare and create a sql command object$
  Dim command As SqlCommand = connection.CreateCommand$
 
  &amp;39; set the sql statement to execute at the data source$
  command.CommandText = _$
  &amp;quot;UPDATE Users SET Password = @Password WHERE Username = @Username&amp;quot;$
 
  &amp;39; add the parameters$
  command.Parameters.AddWithValue(&amp;quot;@Username&amp;quot;, Username.Text)$
  command.Parameters.AddWithValue(&amp;quot;@Password&amp;quot;, Password.Text)$
 
  &amp;39; execute the sql statement against the connection$
  command.ExecuteNonQuery()$
 
  &amp;39; release the resources$
  command.Dispose()$
Catch ex As Exception$
  Console.Write(ex.Message)$
Finally$
  &amp;39; close the connection$
  connection.Close()$
End Try$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (11, N'Deleting Data', N'Deleting Data$
Dim ConnectionString As String = _$
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True$
Dim connection As New SqlConnection(ConnectionString)$
Try$
  connection.Open()$
 
  &39; declare and create a sql command object$
  Dim command As SqlCommand = connection.CreateCommand$
 
  &39; set the sql statement to execute at the data source$
  command.CommandText = &quot;DELETE FROM Users WHERE Username = @Username&quot;$
 
  &39; add the parameters$
  command.Parameters.AddWithValue(&quot;@Username&quot;, Username.Text)$
 
  &39; execute the sql statement against the connection$
  command.ExecuteNonQuery()$
 
  &39; release the resources$
  command.Dispose()$
Catch ex As Exception$
  Console.Write(ex.Message)$
Finally$
  &39; close the connection$
  connection.Close()$
End Try$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (13, N'Catching ADO.NET errors', N'Catching ADO.NET errors $
Dim ConnectionString As String = _ $
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True $
Dim connection As New SqlConnection(ConnectionString) $
Try $
  connection.Open()$

Catch ex As SqlException $
      do something with this type of exception $
Catch ex As DataException $
      do something with this type of exception $
Catch ex As Exception $
   if above exceptions are not thrown then it checkes the, $
  System.Exception class which is the base class for all exceptions $
 
   do something with this exception $
Finally $
  connection.Close()$
End Try $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (14, N'Connect to MySql Database', N'Connect to MySql Database $
Public Sub connect()$
        Dim DatabaseName As String = &amp;quot;Database NAme&amp;quot;$
        Dim server As String = &amp;quot;ip address here&amp;quot;$
        Dim userName As String = &amp;quot;sarmasar here&amp;quot;$
        Dim password As String = &amp;quot;password here&amp;quot;$
        If Not conn Is Nothing Then conn.Close()$
        conn.ConnectionString = String.Format(&amp;quot;server={0}; user id={1}; password={2}; database={3};$ pooling=false&amp;quot;, server, userName, password, DatabaseName)$
        Try $
            conn.Open()$
  
            MsgBox(&amp;quot;Connected&amp;quot;)$
        Catch ex As Exception $
            MsgBox(ex.Message)$
        End Try $
        conn.Close() $
    End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (15, N'Create a Check in Microsoft Word', N'Create a Check in Microsoft Word $
Private Function convertHundreds(ByVal input As Integer) As String $
        Dim output As String $
        If input &amp;lt;= 99 Then $
            output = (convertTens(input))$
        Else $
            output = ones(Floor(input / 100))$
            output += &amp;quot; Hundred &amp;quot;$
            If input - Floor(input / 100) * 100 = 0 Then $
                output += &amp;quot;&amp;quot;$
            Else $
                output += &amp;quot;&amp;quot; + convertTens(input - Floor(input / 100) * 100)$
            End If $
        End If $
        Return output $
    End Function $
 
    Private Function convertTens(ByVal input As Integer) As String $
        Dim output As String $
        If input &amp;lt; 20 Then $
            output = ones(input) $
            input = 0 $
        Else $
            output = tens(CType(Floor(input / 10), Integer))$
            input -= Floor(input / 10) * 10 $
        End If $
        output = output + IIf(ones(input).Trim = &amp;quot;&amp;quot;, &amp;quot;&amp;quot;, &amp;quot;-&amp;quot; + ones(input))$
        Return output $
    End Function $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (16, N'Get The Last Used Excel Cell', N'Get The Last Used Excel Cell $
Public Function LastUsedCell()$
        Dim LastColumn As Long $
        Dim LastRow As Long $
        With worksheet $
            LastRow = .Cells(.Rows.Count, 1).End(Excel.XlDirection.xlUp).Row $
            LastColumn = .Cells(1, .Columns.Count).End(Excel.XlDirection.xlToLeft).Column $
        End With $
        Return LastColumn $
       Return LastRow $
End Function $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (17, N'Display Access Table Records in DataGridView', N'Display Access Table Records in DataGridView $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles $ Button1.Click $
        MyConn = New OleDbConnection $
        MyConn.ConnectionString = connString $
        ds = New DataSet $
        tables = ds.Tables $
        da = New OleDbDataAdapter(&amp;quot;Select * from [items]&amp;quot;, MyConn) $
        da.Fill(ds, &amp;quot;items&amp;quot;)  $
        Dim view As New DataView(tables(0)) $
        source1.DataSource = view $
        DataGridView1.DataSource = view $
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (18, N'Get Column Total Value in DataGridView', N'Get Column Total Value in DataGridView$
Private Sub CountButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CountButton.Click$
        Dim total As String = 0$
        For i As Integer = 0 To DataGridView1.RowCount - 1$
            total += DataGridView1.Rows(i).Cells(2).Value$
            &39;Change the number 2 to your column index number (The first column has a 0 index column)$
            &39;In this example the column index of Price is 2$
        Next$
        TextBox1.Text = total$
End Sub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (19, N'Format Column to Percentage', N'Format Column to Percentage$
PrivateButton2_Click(ByValenderAs;System.Object,;ByValSystem.EventArgs)$
  HandlesButton2.Click$
  DataGridView1.Columns(2).DefaultCellStyle.Format =&quot;p2&quot;&39;number 2 represents decimal digits$
  DataGridView1.Refresh()$

EndSub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (20, N'Add Watermark to a Picture', N'Add Watermark to a Picture $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)Handles $
Button1.Click $
    Dim NF As New Font(&amp;quot;Impact&amp;quot;, 36, FontStyle.Italic)$
    Dim NB As New SolidBrush(Color.FromArgb(64, 192, 255, 255))$
    NB.Color = Color.FromArgb(128, 0, 0, 0)$
    PictureBox1.CreateGraphics.DrawString(TextBox1.Text, NF, NB, 15, 135)$
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (21, N'Monitor Mouse Movement and Clicks', N'Monitor Mouse Movement and Clicks $
Private Function MouseHookProc(ByVal nCode As Int32, ByVal wParam As IntPtr, $ 
ByRef lParam As MSLLHOOKSTRUCT) As Int32 $
        Dim formw As String $
        Dim formh As String $
        formw = Me.Width $
        formh = Me.Height $
 
        Dim screenw As String $
        Dim screenh As String $
        screenw = My.Computer.Screen.Bounds.Width $
        screenh = My.Computer.Screen.Bounds.Height $
 
        Dim w As String $
        Dim h As String $
 
        w = screenw / formw $
        h = screenh / formh $
        Button1.Location = New Point(lParam.pt.X * formw / screenw, lParam.pt.Y * formh / screenh)$
        Try $
            For i = 1 To 255 $
                result = 0 $
                result = GetAsyncKeyState(i)$
 
                If result = -32767 Then $
                    Button2.Location = Button1.Location $
                End If $
            Next i $
        Catch ex As Exception $
        End Try $
    End Function $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (22, N'Get list of installed fonts', N'Get list of installed fonts $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _ $
 Handles Button1.Click $
        Dim fonts As New InstalledFontCollection $
  
        For Each one As FontFamily In fonts.Families $
            ListBox1.Items.Add(one.Name) $
        Next $
  
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (23, N'Change WebBrowser Home Page', N'Change WebBrowser Home Page $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) $
Handles Button1.Click $
        Dim response As Object $
        response = InputBox(&amp;quot;Please Enter Home Page URL&amp;quot;, $
&amp;quot;Webbrowser&amp;quot;, My.Settings.Home) $
        My.Settings.Home = response $
        My.Settings.Save()$
    End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (24, N'Go to home page button', N'Go to home page button $
Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles $ Button2.Click $
    WebBrowser1.Navigate(My.Settings.Home)$
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (25, N'Webbrowser Zoom In and out', N'Webbrowser Zoom In and out$
Public Sub PerformZoom(ByVal Value As Integer)$
        Try $
            Dim Res As Object = Nothing $
            Dim MyWeb As Object $
  MyWeb = Me.WebBrowser1.ActiveXInstance $
 MyWeb.ExecWB(Exec.OLECMDID_OPTICAL_ZOOM, execOpt.OLECMDEXECOPT_PROMPTUSER, $
CObj(Value), CObj(IntPtr.Zero))$
        Catch ex As Exception $
            MsgBox(ex.Message) $
        End Try $
    End Sub $
Zoom In Button Code $
Private Sub ZoomIn_Click(sender As System.Object, e As System.EventArgs) Handles ZoomIn.Click $
        InitialZoom += 10 $
        PerformZoom(InitialZoom)$
    End Sub $
               Zoom Out Button Code $
             Private Sub ZoomOut_Click(sender As System.Object, As System.EventArgs)Handles ZoomOut.Click $
              InitialZoom -= 10 $
              PerformZoom(InitialZoom) $
EndSub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (26, N'Get List of all Links on a Web Page', N'Get List of all Links on a Web Page $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) $
Handles Button1.Click $
        Dim a As Integer $
        Dim b As String $
        For a = 1 To WebBrowser1.Document.Links.Count - 1 $
            b = b &amp;amp; WebBrowser1.Document.Links(a).InnerHtml &amp;amp; vbCrLf $
        Next $
  
        TextBox1.Text = b $
        Label1.Text = WebBrowser1.Document.Links.Count &amp;amp; &amp;quot; links.&amp;quot; $
    End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (27, N'Read the Source Code of a Web Page', N'Read the Source Code of a Web Page $
Private Sub WebBrowser1_DocumentCompleted(ByVal sender As System.Object, $
ByVal e As System.Windows.Forms.WebBrowserDocumentCompletedEventArgs)  $
Handles WebBrowser1.DocumentCompleted $
      
        TextBox1.Text = WebBrowser1.DocumentText $
    End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (28, N'Check if internet connection available', N'Check if internet connection available $
Public Function IsConnectionAvailable() As Boolean  $
        Dim objUrl As New System.Uri(&amp;quot;http://www.youtube.com&amp;quot;)  $
        Dim objWebReq As System.Net.WebRequest  $
        objWebReq = System.Net.WebRequest.Create(objUrl) $
        Dim objresp As System.Net.WebResponse  $
  
        Try  $
            objresp = objWebReq.GetResponse  $
            objresp.Close() $
            objresp = Nothing  $
            Return True  $
  
        Catch ex As Exception  $
            objresp = Nothing  $
            objWebReq = Nothing  $
            Return False  $
        End Try  $
End Function  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (29, N'Creating ADO.NET Commands', N'Creating ADO.NET Commands $
Dim ConnectionString As String = _  $
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True  $
Dim connection As New SqlConnection(ConnectionString) $
Try  $
  connection.Open() $
 
  Dim command As New SqlCommand $
  command.Connection = connection $
  command.CommandText = &amp;quot;SELECT * FROM aspnet_Users&amp;quot; $
 
  Dim command As SqlCommand = connection.CreateCommand $
  command.CommandText = &amp;quot;SELECT * FROM aspnet_Users&amp;quot; $
 
  Dim command As New SqlCommand(&amp;quot;SELECT * FROM aspnet_Users&amp;quot;, connection) $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (30, N'Using Data Reader', N'Using Data Reader $
Dim ConnectionString As String = _ $
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True $
Dim connection As New SqlConnection(ConnectionString)$
Try $
  connection.Open()$
 
  Dim command As SqlCommand = connection.CreateCommand $
 
  command.CommandText = &amp;quot;SELECT Username FROM aspnet_Users&amp;quot; $
 
  Dim reader As SqlDataReader = command.ExecuteReader $
 
  If reader.HasRows Then $
  While reader.Read $
 
  Console.WriteLine(reader.GetString(0))$

  Console.WriteLine(reader(0).ToString)$

  Console.WriteLine(reader(&amp;quot;Username&amp;quot;).ToString)$
  End While $
  End If $

  reader.Close()$
  command.Dispose() $
Catch ex As Exception $
  Console.Write(ex.Message) $
Finally $

  connection.Close()$
End Try $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (31, N'Using Data Adapters', N'Using Data Adapters $
Dim adapter As New SqlDataAdapter( _ $
SELECT Username FROM aspnet_Users, connection) $
 
Dim dataset As New DataSet $
adapter.Fill(dataset) $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (32, N'Working with Stored Procedures in ADO.NET', N'Working with Stored Procedures in ADO.NET $
Dim ConnectionString As String = _ $
Data Source=SqlServerNameOrIP;Initial Catalog=DBName;Integrated Security=True $
Dim connection As New SqlConnection(ConnectionString)$
Try $
  connection.Open()$

  Dim command As SqlCommand = connection.CreateCommand $

  command.CommandType = CommandType.StoredProcedure $
 
  command.CommandText = &amp;quot;ProcedureName&amp;quot; $
 

  command.Parameters.Add(&amp;quot;@UserID&amp;quot;, SqlDbType.Int, 4).Value = Convert.ToInt32(lblID.Text) $
 
  Dim reader As SqlDataReader = command.ExecuteReader $
 
  If reader.HasRows Then $
 
  While reader.Read $ 
  Me.Username.Text = reader(&amp;quot;UserName&amp;quot;).ToString $
  End While $
  End If $
 
  reader.Close()$
  command.Dispose()$
Catch ex As Exception $
  Console.Write(ex.Message) $
Finally $
  connection.Close() $
End Try $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (33, N'Executing Commands Asynchronously', N'Executing Commands Asynchronously $
First :: you must append the statement Asynchronous Processing=true  $
Dim connection As New SqlConnection( _ $
  &amp;quot;Data Source=SqlServerNameOrIP;Initial Catalog=DBName;&amp;quot; + _ $
  &amp;quot;Integrated Security=True;Asynchronous Processing=true;&amp;quot;)$
Meaning after getting the connection set, you build the Command object and initialize it to $
be able to execute the long running SQL query. $

Dim command As SqlCommand = connection.CreateCommand $

command.CommandType = CommandType.Text $

command.CommandText = &amp;quot;SELECT * FROM Users&amp;quot; $
 
command.BeginExecuteReader( _ $
AddressOf Me.AsynchronousCallback, _ $
command, _ $
CommandBehavior.CloseConnection) $
         
Private Sub AsynchronousCallback(ByVal async As IAsyncResult)$
  
  Dim command As SqlCommand = CType(async.AsyncState, SqlCommand)$
 
  Dim reader As SqlDataReader = command.EndExecuteReader(async)$
 
  Dim table As New DataTable()$
  table.Load(reader)$
 
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (34, N'Round Number to Nearest .99', N'Round Number to Nearest .99 $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _  $
 Handles Button1.Click  $
        Dim x As String = TextBox1.Text * 100  $
        Dim y As String = 10  $
        Dim z As String  $
        z = (Math.Round(x / 10) * 10) - 1  $
        MsgBox(z / 100)  $
    End Sub  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (35, N'Capture Full Screen', N'Capture Full Screen $ 
Shared Function GetDesktopImage(Optional ByVal Width As Integer = 0, $
Optional ByVal Height As Integer = 0, Optional ByVal ShowCursor As Boolean = True) As Image $
       Dim W As Integer = Screen.PrimaryScreen.Bounds.Width $
       Dim H As Integer = Screen.PrimaryScreen.Bounds.Height $
       Dim DesktopBitmap As New Bitmap(W, H) $
       Dim g As Graphics = Graphics.FromImage(DesktopBitmap) $
g.CopyFromScreen(0, 0, 0, 0, New Size( $
Screen.PrimaryScreen.Bounds.Width, Screen.PrimaryScreen.Bounds.Height),  $
CopyPixelOperation.SourceCopy) $
       If ShowCursor Then Cursors.Default.Draw(g, New Rectangle(Cursor.Position, New Size(32, 32))) $
       g.Dispose() $
       If Width = 0 And Height = 0 Then  $
           Image = DesktopBitmap  $
           Return DesktopBitmap  $
 
       Else  $
Dim ScaledBitmap As Image = DesktopBitmap.GetThumbnailImage(  $
Width, Height, Nothing,  IntPtr.Zero) $
           DesktopBitmap.Dispose() $
           Image = ScaledBitmap  $
           Return ScaledBitmap  $
       End If  $
   End Function  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (36, N'Process Function to extract the month and day of the date of birth', N'Process Function to extract the month and day of the date of birth $
Public Function Process(dateOfBirth As Date) As String  $
        Dim Info As String  $
        Dim BirthMonth As Integer = dateOfBirth.Month  $
        Dim BirthDay As Integer = dateOfBirth.Day  $
        Select Case BirthMonth  $
            Case 1  $
                If BirthDay &amp;gt; 19 Then  $
                    Info = Zodiac(11)  $
                ElseIf BirthDay &amp;lt; 20 Then  $
                    Info = Zodiac(10) $
                End If  $
            Case 2  $
                If BirthDay &amp;gt; 18 Then  $
                    Info = Zodiac(12) $
                ElseIf BirthDay &amp;lt; 19 Then  $
                    Info = Zodiac(11) $
                End If  $
            Case 3  $
                If BirthDay &amp;gt; 20 Then  $
                    Info = Zodiac(1) $
                ElseIf BirthDay &amp;lt; 21 Then  $
                    Info = Zodiac(12) $
                End If  $
            Case 4  $
                If BirthDay &amp;gt; 19 Then  $
                    Info = Zodiac(2)  $
                ElseIf BirthDay &amp;lt; 20 Then  $
                    Info = Zodiac(1) $
                End If  $
            Case 5  $
                If BirthDay &amp;gt; 20 Then  $
                    Info = Zodiac(3)  $
                ElseIf BirthDay &amp;lt; 21 Then  $
                    Info = Zodiac(2) $
                End If  $
            Case 6  $
                If BirthDay &amp;gt; 20 Then  $
                    Info = Zodiac(4)  $
                ElseIf BirthDay &amp;lt; 21 Then  $
                    Info = Zodiac(3)  $
                End If  $
            Case 7  $
                If BirthDay &amp;gt; 22 Then  $
                    Info = Zodiac(5) $
                ElseIf BirthDay &amp;lt; 23 Then  $
                    Info = Zodiac(4) $
                End If  $
            Case 8  $
                If BirthDay &amp;gt; 22 Then  $
                    Info = Zodiac(6) $
                ElseIf BirthDay &amp;lt; 23 Then  $
                    Info = Zodiac(5) $
                End If  $
            Case 9  $
                If BirthDay &amp;gt; 22 Then  $
                    Info = Zodiac(7)  $
                ElseIf BirthDay &amp;lt; 23 Then  $
                    Info = Zodiac(6) $
                End If  $
            Case 10  $
                If BirthDay &amp;gt; 22 Then  $
                    Info = Zodiac(8) $
                ElseIf BirthDay &amp;lt; 23 Then  $
                    Info = Zodiac(7) $
                End If  $
            Case 11  $
                If BirthDay &amp;gt; 22 Then  $
                    Info = Zodiac(9) $
                ElseIf BirthDay &amp;lt; 23 Then  $
                    Info = Zodiac(8) $
                End If  $
            Case 12  $
                If BirthDay &amp;gt; 21 Then  $
                    Info = Zodiac(10)  $
                ElseIf BirthDay &amp;lt; 22 Then  $
                    Info = Zodiac(9) $
                End If  $
        End Select  $
        Return Info  $
    End Function  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (37, N'function define the Zodiac sign and planet info', N'function define the Zodiac sign and planet info $
Public Function Zodiac(id As Integer) As String  $
        Dim sign As String  $
        Dim planet As String  $
        Dim symbol As String  $
        Dim charas As String  $
        Select Case id  $
            Case 1  $
                sign = &amp;quot;Aries&amp;quot;  $
                PictureBox1.Image = My.Resources.Aries  $
                planet = &amp;quot;Mars&amp;quot;  $
                charas = &amp;quot;Active, Demanding, Determined, Effective, Ambitious&amp;quot;  $
            Case 2  $
                sign = &amp;quot;Taurus&amp;quot;  $
                PictureBox1.Image = My.Resources.Taurus  $
                planet = &amp;quot;Venus&amp;quot;  $
                charas = &amp;quot;Security, Subtle strength, Appreciation, Instruction, Patience&amp;quot;  $
            Case 3  $
                sign = &amp;quot;Gemini&amp;quot;  $
                PictureBox1.Image = My.Resources.Gemini  $
                planet = &amp;quot;Mercury&amp;quot; $
                charas = &amp;quot;Communication, Indecision, Inquisitive, Intelligent, Changeable&amp;quot; $
            Case 4  $
                sign = &amp;quot;Cancer&amp;quot;  $
                PictureBox1.Image = My.Resources.Cancer
                planet = &amp;quot;The Moon&amp;quot;
                charas = &amp;quot;Emotion, Diplomatic, Intensity, Impulsive, Selective&amp;quot;
            Case 5
                sign = &amp;quot;Leo&amp;quot;
                PictureBox1.Image = My.Resources.Leo  $
                planet = &amp;quot;The Sun&amp;quot;  $
                charas = &amp;quot;Ruling, Warmth, Generosity, Faithful, Initiative &amp;quot; $
            Case 6  $
                sign = &amp;quot;Virgo&amp;quot;  $
                PictureBox1.Image = My.Resources.Virgo  $
                planet = &amp;quot;Mercury&amp;quot;  $
                charas = &amp;quot;Analyzing, Practical, Reflective, Observation, Thoughtful&amp;quot; $
            Case 7  $
                sign = &amp;quot;Libra&amp;quot; $
                PictureBox1.Image = My.Resources.Libra  $
                planet = &amp;quot;Venus&amp;quot; $
                charas = &amp;quot;Balance, Justice, Truth, Beauty, Perfection&amp;quot; $
            Case 8  $
                sign = &amp;quot;Scorpio&amp;quot; $
                PictureBox1.Image = My.Resources.Scorpio  $
                planet = &amp;quot;Pluto&amp;quot; $
                charas = &amp;quot;Transient, Self-Willed, Purposeful, Unyielding&amp;quot; $
            Case 9  $
                sign = &amp;quot;Sagittarius&amp;quot; $
                PictureBox1.Image = My.Resources.Sagittarius  $
                planet = &amp;quot;Jupiter&amp;quot; $
                charas = &amp;quot;Philosophical, Motion, Experimentation, Optimism&amp;quot; $
            Case 10  $
                sign = &amp;quot;Capricorn&amp;quot; $
                PictureBox1.Image = My.Resources.Capricorn  $
                planet = &amp;quot;Saturn&amp;quot;  $
                charas = &amp;quot;Determination, Dominance, Perservering, Practical, Willful&amp;quot; $
            Case 11  $
                sign = &amp;quot;Aquarius&amp;quot;  $
                PictureBox1.Image = My.Resources.Aquarius  $
                planet = &amp;quot;Uranus&amp;quot; $
                charas = &amp;quot;Knowledge, Humanitarian, Serious, Insightful, Duplicitous&amp;quot; $
            Case 12  $
                sign = &amp;quot;Pisces&amp;quot;  $
                PictureBox1.Image = My.Resources.Pisces  $
                planet = &amp;quot;Neptune&amp;quot;  $
                charas = &amp;quot;Fluctuation, Depth, Imagination, Reactive, Indecisive&amp;quot;  $
        End Select  $
Return &amp;quot;Zodiac Sign: &amp;quot; &amp;amp; sign &amp;amp; Environment.NewLine &amp;amp;  $
Environment.NewLine &amp;amp; &amp;quot;Planet: &amp;quot; &amp;amp; planet &amp;amp;  $
Environment.NewLine &amp;amp; Environment.NewLine &amp;amp; &amp;quot;Characteristics: $
 &amp;quot; &amp;amp; charas  $
    End Function  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (38, N'Round a number', N'Round a number $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) _ $
 Handles Button1.Click $
        Dim a As Single $
        Dim b As Double $
        b = Convert.ToDouble(TextBox1.Text) $
        a = Math.Round(b) $
   
        TextBox1.Text = a $
    End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (39, N'Record from a Microphone', N'Record from a Microphone  $
Private Declare Function record Lib &amp;quot;winmm.dll&amp;quot; $
Alias &amp;quot;mciSendStringA&amp;quot; (  $
         ByVal lpstrCommand As String,  $
         ByVal lpstrReturnString As String,   $
         ByVal uReturnLength As Integer,   $
         ByVal hwndCallback As Integer  $
)  $
 As Integer  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (40, N'Print Screen send keys', N'Print Screen send keys $
Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)Handles  $ Button1.Click  $

     SendKeys.SendWait(&amp;quot;%({PRTSC})&amp;quot;) $
My.Computer.Clipboard.GetImage().Save(&amp;quot;C:\form.jpg&amp;quot;) $

End Sub  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (41, N'Monitor a Secondary Screen from a Form', N'Monitor a Secondary Screen from a Form$
Imports System.Runtime.InteropServices$
Public Class Form1$
     Dim result As Integer$
Private Declare Function GetAsyncKeyState Lib &quot;user32&quot;(ByVal vKey As Long) As Integer$
Declare Sub mouse_event& Lib &quot;user32&quot; Alias &quot;mouse_event&quot;(ByVal dwFlags As Integer,ByVal,dx,As,Integer,ByVal,dy,As,Integer,ByVal,cButtons,As,Integer,ByVal dwExtraInfo& As Integer)$
MOUSEEVENTF_ABSOLUTE = &amp;H8000$
MOUSEEVENTF_LEFTDOWN = &amp;H2$
MOUSEEVENTF_LEFTUP = &amp;H4$
MOUSEEVENTF_MOVE = &amp;H1$
MOUSEEVENTF_MIDDLEDOWN = &amp;H20$
MOUSEEVENTF_MIDDLEUP = &amp;H40$
MOUSEEVENTF_RIGHTDOWN = &amp;H8$
MOUSEEVENTF_RIGHTUP = &amp;H10$

      Private Structure MSLLHOOKSTRUCT$
Public As Point$
Public mouseData As Int32$
Public flags As Int32$
Public time As ;Int32$
Public extra As IntPtr$
End Structure$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (42, N'Copy file from destination folder', N'Copy file from destination folder $
Public Class Form1$
Dim tempFileName As String $
Private Sub BrowseSourceButton_Click(sender As System.Object, e As System.EventArgs)Handles $  BrowseSourceButton.Click $

Dim fDialog As New OpenFileDialog $
fDialog.ShowDialog()$
SourceText.Text = fDialog.FileName $
tempFileName = fDialog.SafeFileName $
End Sub $

Private Sub BrowseDestinationBtton_Click(sender As System.Object, e As System.EventArgs)Handles $ BrowseDestinationBtton.Click $
Dim fDialog As New FolderBrowserDialog $
fDialog.ShowDialog() $
DestinationText.Text = fDialog.SelectedPath &amp;amp; &amp;quot;\&amp;quot; &amp;amp;$ tempFileName $
End Sub $

 Private  Sub CopyButton_Click(sender As System.Object, e As System.EventArgs) Handles $
 CopyButton.Click $
 SourceText.Text.Length &amp;gt; 0 And DestinationText.Text.Length &amp;gt; 0 Then $
 My.Computer.FileSystem.CopyFile(SourceText.Text, DestinationText.Text)$
 MsgBox(&amp;quot;Successfully Copied&amp;quot;)$
 End If $
End Sub $
End Class $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (43, N'Filter Columns Value in DataGridView', N'Filter Columns Value in DataGridView $
First add the following namespaces: $
Imports System.Data $
Imports System.Data.OleDb $
Imports System.Data.Odbc $
Imports System.Data.DataTable $
Declaration after Public Class Form1 $
Public Class Form1 $
Dim provider As String $
Dim dataFile As String $
connString As String $
myConnection As OleDbConnection  $= New OleDbConnection $
Dim ds As DataSet = New DataSet $
Dim da As OleDbDataAdapter $
Dim tables As DataTableCollection = ds.Tables $
Dim source1 As New BindingSource() $
 Code is the form load event $
Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)Handles $
MyBase.Load $
provider =&quot;Provider=Microsoft.ACE.OLEDB.12.0;Data Source =&quot; $
dataFile = &quot;C:\Users\Jimmy\Documents\Merchandise.accdb&quot;$
change to access database location on your computer $
connString = provider &amp; dataFile $
myConnection.ConnectionString = connString $
  da = New OleDbDataAdapter(&quot;Select [Item Code], $
[Description], [Price] from items&quot;, myConnection)$
 da.Fill(ds,&quot;Items&quot;)$

Dim view1 As New DataView(tables(0))$
source1.DataSource = view1 $
DataGridView1.DataSource = view1 $
DataGridView1.Refresh()$
End Sub $ 

Private SubFilterButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) $
Handles FilterButton.Click $
source1.Filter =&quot;[Item Code] = &amp; TextBox1.Text &amp; &quot; &quot; $
DataGridView1.Refresh()$
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (44, N'Sort Datagridview column', N'Sort Datagridview column$
Ascending$
DataGridView1.Sort(DataGridView1.Columns(1), System.ComponentModel.ListSortDirection.Ascending)$
//Change the number to the column index that you want to sort$
Descending$
DataGridView1.Sort(DataGridView1.Columns(1), System.ComponentModel.ListSortDirection.Descending)$
//Change the number to the column index that you want to sort$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (45, N'Function to count how many times a string occurs', N'Function to count how many times a string occurs$
Private Function FindWords(ByVal TextSearched As String, _$
ByVal Paragraph As String) As Integer$
 
        Dim location As Integer = 0$
 
        Dim occurances As Integer = 0$
 
        Do$
 
            location = TextSearched.IndexOf(Paragraph, location)$
 
            If location &lt;&gt; -1 Then$
 
                occurances += 1$
 
                location += Paragraph.Length$
 
   
 
            End If$
 
        Loop Until location = -1$
 
        Return occurances$
 
End Function$
Then add the following code to &quot;Check&quot; button click event$
Private Button1_Click(ByVal sender As System.Object, _$
ByVal e As System.EventArgs)Handles Button1.Click$

MsgBox(&quot;The word &quot;&amp; TextBox2.Text &amp;&quot; has occured &quot&amp; _$
FindWords(TextBox1.Text, TextBox2.Text) &amp;&quot; times!!&quot;)$

End Sub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (46, N'Read ListBox Up Down', N'Read ListBox Up Down $ 
Private Sub Button1_Click(ByVal sender As System.Object,   $
ByVal e As System.EventArgs) _  $
Handles Button1.Click  $
Dim a As Integer  $
Dim b As String  $
 Do  $
 a = ListBox1.Items.Count - 1  $
    b =     ListBox1.Items(a)  $
   ListBox2.Items.Add(b)  $
   ListBox1.Items.RemoveAt(a) $
  Loop Until a = 0  $
End Sub  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (47, N'Handling data-update errors', N'Handling data-update errors $
Private Sub OleDbDataAdapter1_RowUpdated(ByVal sender As Object, _  $
ByVal e As System.Data.OleDb.OleDbRowUpdatedEventArgs) _  $
Handles OleDbDataAdapter1.RowUpdated  $
   If e.Status = UpdateStatus.ErrorsOccurred Then  $
      e.Row.RowError = e.Errors.Message  $
     
   End If  $
End Sub  $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (48, N'Updating a Data Source with a Dataset', N'Updating a Data Source with a Dataset $
Try $
   oleDbDataadapter1.Update(myDataset)$
Catch x As Exception $
   Error during Update, add code to locate error, reconcile and try to update again. $
End Try $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (49, N'Creating Connections to SQL Server', N'Creating Connections to SQL Server $
Public Sub ConnectToSql()$
    Dim conn As New SqlClient.SqlConnection $
    
    conn.ConnectionString = &amp; _ $
    &quot;integrated security=SSPI;data source=SQL Server Name;&quot; &amp; _ $
    &quot;persist security info=False;initial catalog=northwind&quot; $
    Try $
        conn.Open()$
         
    Catch ex As Exception $
        MessageBox.Show(&quot;Failed to connect to data source&quot;)$
    Finally $
        conn.Close() $
    End Try $
End Sub $')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (50, N'Copying Items on Windows Forms Menus', N'Copying Items on Windows Forms Menus$
Private mmMainMenu As MainMenu$
Private miEditMenu As MenuItem$
Private cmEdit As ContextMenu$

Private Sub CopyMenuItems()$
   //Create instances of global MainMenu and top-level MenuItem objects $
   mmMainMenu = New MainMenu$
   miEditMenu = New MenuItem(&quot;&amp;Edit&quot;)$

   //Create three menu items as part of MainMenu menu structure$
   miEditMenu.MenuItems.Add(&quot;&amp;Cut&quot;)$
   miEditMenu.MenuItems.Add(&quot;&amp;Copy&quot;)$
   miEditMenu.MenuItems.Add(&quot;&amp;Paste&quot;)$

   //Add top-level menu item to MainMenu component and set MainMenu component to be forms menu
   mmMainMenu.MenuItems.Add(miEditMenu)$
   Menu = mmMainMenu$

   //Create instance of global Context Menu object$
   cmEdit = New ContextMenu$
   //Clone top-level MenuItem of MainMenu component and add duplicated    MenuItem to ContextMenu component$
   cmEdit.MenuItems.Add(miEditMenu.CloneMenu())$
   //Set ContextMenu component of form$
   ContextMenu = cmEdit$

End Sub$')
INSERT [dbo].[VB] ([VBId], [Content_vb], [Sourcecode_vb]) VALUES (51, N'Deleting Items on Windows Forms Menus', N'Deleting Items on Windows Forms Menus $
Private mnuCountries As MainMenu $
Private mnuItemEuropeNations As MenuItem $
Private mnuItemItaly As MenuItem $
Private mnuItemGermany As MenuItem $
Private mnuItemFrance As MenuItem $
    
Public Sub CreateNationMenu()$
   
   mnuCountries = New MainMenu()$
   mnuItemEuropeNations = New MenuItem(&quot;Some Nations of E&amp;urope&quot;)$
   mnuItemItaly = New MenuItem(&quot;&amp;Italy&quot;)$
   mnuItemGermany = New MenuItem(&quot;&amp;Germany&quot;)$
   mnuItemFrance = New MenuItem(&quot;&amp;France&quot;)$
        
   mnuCountries.MenuItems.Add(mnuItemEuropeNations)$
        
   mnuItemEuropeNations.MenuItems.Add(mnuItemItaly)$
   mnuItemEuropeNations.MenuItems.Add(mnuItemGermany)$
   mnuItemEuropeNations.MenuItems.Add(mnuItemFrance)$
        
   Me.Menu = mnuCountries $
End Sub $
   
Public Sub RemoveFrance()$
   mnuItemEuropeNations.MenuItems.Remove(mnuItemFrance)$
End Sub $')
SET IDENTITY_INSERT [dbo].[VB] OFF
/****** Object:  Table [dbo].[Python]    Script Date: 03/12/2015 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Python](
	[PythonId] [int] IDENTITY(1,1) NOT NULL,
	[Content_python] [nvarchar](100) NOT NULL,
	[Sourcecode_python] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PythonId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Python] ON
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (1, N'Check your IP Address', N'Check your IP Address$
import urllib$
import re$

print &quot;we will try to open this url, in order to get IP Address&quot;$

url = &quot;http://checkip.dyndns.org&quot;$

print url$

request = urllib.urlopen(url).read()$

theIP = re.findall(r&quot;\d{1,3}\.\d{1,3}\.\d{1,3}.\d{1,3}&quot;, request)$

print &quot;your IP Address is: &quot;,  theIP$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (2, N'Date and Time Script', N'Date and Time Script$
import datetime$
now = datetime.datetime.now()$
print &quot;-&quot; * 25$
print now$
print now.year$
print now.month$
print now.day$
print now.hour$
print now.minute$
print now.second$

print &quot;-&quot; * 25$
print &quot;1 week ago was it: &quot;, now - datetime.timedelta(weeks=1)$
print &quot;100 days ago was: &quot;, now - datetime.timedelta(days=100)$
print &quot;1 week from now is it: &quot;,  now + datetime.timedelta(weeks=1)$
print &quot;In 1000 days from now is it: &quot;, now + datetime.timedelta(days=1000)$

print &quot;-&quot; * 25$
birthday = datetime.datetime(2012,11,04)$

print &quot;Birthday in ... &quot;, birthday - now$
print &quot;-&quot; * 25$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (3, N'Port scanner in Python', N'Port scanner in Python$
--!/usr/bin/env python$
import socket$
import subprocess$
import sys$
from datetime import datetime$

--Clear the screen$
subprocess.call(&39;clear&39;, shell=True)$

--Ask for input$
remoteServer    = raw_input(&quot;Enter a remote host to scan: &quot;)$
remoteServerIP  = socket.gethostbyname(remoteServer)$

--Print a nice banner with information on which host we are about to scan$
print &quot;-&quot; * 60$
print &quot;Please wait, scanning remote host&quot;, remoteServerIP$
print &quot;-&quot; * 60$

--Check what time the scan started$
t1 = datetime.now()$

--Using the range function to specify ports (here it will scans all ports between 1 and 1024)$

--We also put in some error handling for catching errors$

try:$
    for port in range(1,1025):$
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)$
        result = sock.connect_ex((remoteServerIP, port))$
        if result == 0:$
            print &quot;Port {}: \t Open&quot;.format(port)$
        sock.close()$

except KeyboardInterrupt:$
    print &quot;You pressed Ctrl+C&quot;$
    sys.exit()$

except socket.gaierror:$
    print &39;Hostname could not be resolved. Exiting&39;$
    sys.exit()$

except socket.error:$
    print &quot;Couldn&39;t connect to server&quot;$
    sys.exit()$

--Checking the time again$
t2 = datetime.now()$
--Calculates the difference of time, to see how long it took to run the script$
total =  t2 - t1$

--Printing the information to screen$
print &39;Scanning Completed in: &39;, total$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (4, N'Google Command Line Script', N'Google Command Line Script$
import urllib2$
import urllib$
import json$

url = &quot;http://ajax.googleapis.com/ajax/services/search/web?v=1.0&amp;&quot;$

query = raw_input(&quot;What do you want to search for ? &gt;&gt; &quot;)$

query = urllib.urlencode( {&39;q&39; : query } )$

response = urllib2.urlopen (url + query ).read()$

data = json.loads ( response )$

results = data [ &39;responseData&39; ] [ &39;results&39; ]$

for result in results:$
    title = result[&39;title&39;]$
    url = result[&39;url&39;]$
    print ( title + &39;; &39; + url )$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (5, N'Bitly Shortener', N'Bitly Shortener$
--!/usr/bin/env python$

--Import the modules$

import bitlyapi$
import sys$

--Define your API information$

API_USER = &quot;your_api_username&quot;$
API_KEY = &quot;your_api_key&quot;$

b = bitlyapi.BitLy(API_USER, API_KEY)$

--Define how to use the program$

usage = &quot;&quot;&quot;Usage: python shortener.py [url]$
e.g python shortener.py http://www.google.com&quot;&quot;&quot;$

if len(sys.argv) != 2:$
    print usage$
    sys.exit(0)$

longurl = sys.argv[1]$

response = b.shorten(longUrl=longurl)$

print response[&39;url&39;]$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (6, N'Command Line IMDB Scraper', N'Command Line IMDB Scraper$
//!/usr/bin/env python27$

//Importing the modules$

from BeautifulSoup import BeautifulSoup$
import sys$
import urllib2$
import re$
import json$

//Ask for movie title$
title = raw_input(&quot;Please enter a movie title: &quot;)$

//Ask for which year$
year = raw_input(&quot;which year? &quot;)$

//Search for spaces in the title string$
raw_string = re.compile(r&39; &39;)$

//Replace spaces with a plus sign$
searchstring = raw_string.sub(&39;+&39;, title)$
//Prints the search string$
print searchstring$

//The actual query$
url = &quot;http://www.imdbapi.com/?t=&quot; + searchstring + &quot;&amp;y=&quot;+year$

request = urllib2.Request(url)$

response = json.load(urllib2.urlopen(request))$

print json.dumps(response,indent=2)')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (7, N'Calculate the average score', N'Calculate the average score$
//Get three test score$
round1 = int(raw_input(&quot;Enter score for round 1: &quot;))$

round2 = int(raw_input(&quot;Enter score for round 2: &quot;))$

round3 = int(raw_input(&quot;Enter score for round 3: &quot;))$
   
//Calculate the average$
average = (round1 + round2 + round3) / 3$

//Print out the test score$
print &quot;the average score is: &quot;, average$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (8, N'Celsius and Fahrenheit Converter', N'Celsius and Fahrenheit Converter$
Fahrenheit to Celsius formula:$
(&176;F - 32) x 5/9 = &176;C or in plain english, First subtract 32, then multiply by 5,
then divide by 9.$
Celsius to Fahrenheit formula:$
(&176;C &215; 9/5) + 32 = &176;F or in plain English, Multiple by 9, then divide by 5, then
add 32.$
Convert Fahrenheit to Celsius$
//!/usr/bin/env python$
Fahrenheit = int(raw_input(&quot;Enter a temperature in Fahrenheit: &quot;))$

Celsius = (Fahrenheit - 32) * 5.0/9.0$

print &quot;Temperature:&quot;, Fahrenheit, &quot;Fahrenheit = &quot;, Celsius, &quot; C&quot;$
Convert Celsius to Fahrenheit$
//!/usr/bin/env python$
Celsius = int(raw_input(&quot;Enter a temperature in Celsius: &quot;))$

Fahrenheit = 9.0/5.0 * Celsius + 32$

print &quot;Temperature:&quot;, Celsius, &quot;Celsius = &quot;, Fahrenheit, &quot; F&quot;$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (9, N'Get all the links from a website', N'Get all the links from a website$
import urllib2$
import re$

//connect to a URL$
website = urllib2.urlopen(url)$

//read html code$
html = website.read()$

//use re.findall to get all the links$
links = re.findall(&39;&quot;((http|ftp)s?://.*?)&quot;&39;, html)$

print links$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (10, N'Convert KM/H to MPH', N'Convert KM/H to MPH$
//!/usr/bin/env python$
kmh = int(raw_input(&quot;Enter km/h: &quot;))$
mph =  0.6214 * kmh$
print &quot;Speed:&quot;, kmh, &quot;KM/H = &quot;, mph, &quot;MPH&quot;$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (11, N'Using the YouTube API to get data', N'Using the YouTube API to get data$
//Import the modules$
import requests$
import json$

//Make it a bit prettier..$
print &quot;-&quot; * 30$
print &quot;This will show the Most Popular Videos on YouTube&quot;$
print &quot;-&quot; * 30$

//Get the feed$
r = requests.get(&quot;http://gdata.youtube.com/feeds/api/standardfeeds/top_rated?v=2&amp;alt=jsonc&quot;)$
r.text$

//Convert it to a Python dictionary$
data = json.loads(r.text)$

//Loop through the result. $
for item in data[&39;data&39;][&39;items&39;]:$

    print &quot;Video Title: %s&quot; % (item[&39;title&39;])$

    print &quot;Video Category: %s&quot; % (item[&39;category&39;])$

    print &quot;Video ID: %s&quot; % (item[&39;id&39;])$

    print &quot;Video Rating: %f&quot; % (item[&39;rating&39;])$

    print &quot;Embed URL: %s&quot; % (item[&39;player&39;][&39;default&39;])$

    print$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (12, N'Backup all MySQL databases, one in each file with a timestamp', N'Backup all MySQL databases, one in each file with a timestamp$
//Importing the modules$
import os$
import ConfigParser$
import time$

//On Debian, /etc/mysql/debian.cnf contains &amp;39;root&amp;39; a like login and password.$
config = ConfigParser.ConfigParser()$
config.read(&amp;quot;/etc/mysql/debian.cnf&amp;quot;)$
username = config.get(&amp;39;client&amp;39;, &amp;39;user&amp;39;)$
password = config.get(&amp;39;client&amp;39;, &amp;39;password&amp;39;)$
hostname = config.get(&amp;39;client&amp;39;, &amp;39;host&amp;39;)$
filestamp = time.strftime(&amp;39;%Y-%m-%d&amp;39;)$

//Get a list of databases with :$
database_list_command=&amp;quot;mysql -u %s -p%s -h %s --silent -N -e &amp;39;show $databases&amp;39;&amp;quot; % (username, password, hostname)$
for database in os.popen(database_list_command).readlines():$
    database = database.strip()$
    if database == &amp;39;information_schema&amp;39;:$
        continue$
    if database == &amp;39;performance_schema&amp;39;:$
        continue$
    filename = &amp;quot;/backups/mysql/%s-%s.sql&amp;quot; % (database, filestamp)$
    os.popen(&amp;quot;mysqldump --single-transaction -u %s -p%s -h %s -d %s | gzip -c &amp;gt; %s.gz&amp;quot; % (username, password, hostname, database, filename))$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (13, N'Get the Geo Location of an IP Address', N'Get the Geo Location of an IP Address$
import re$
import sys$
import urllib2$
import BeautifulSoup$

usage = &quot;Run the script: ./geolocate.py IPAddress&quot;$

if len(sys.argv)!=2:$
    print(usage)$
    sys.exit(0)$

if len(sys.argv) &gt; 1:$
    ipaddr = sys.argv[1]$

geody = &quot;http://www.geody.com/geoip.php?ip=&quot; + ipaddr$
html_page = urllib2.urlopen(geody).read()$
soup = BeautifulSoup.BeautifulSoup(html_page)$

//Filter paragraph containing geolocation info.$
paragraph = soup(&39;p&39;)[3]$

//Remove html tags using regex.$
geo_txt = re.sub(r&39;&lt;.*?&gt;&39;, &39;&39;, str(paragraph))$
print geo_txt[32:].strip()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (14, N'Get the username from a prompt', N'Get the username from a prompt$
//!/usr/bin/env python$

//get the username from a prompt$
username = raw_input(&quot;Login: &gt;&gt; &quot;)$

//list of allowed users$
user1 = &quot;Jack&quot;$
user2 = &quot;Jill&quot;$

//control that the user belongs to the list of allowed users$
if username == user1:$
    print &quot;Access granted&quot;$
elif username == user2:$
    print &quot;Welcome to the system&quot;$
else:$
    print &quot;Access denied&quot;$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (15, N'Guess The Number', N'Guess The Number$
//This is a guess the number game.$
import random$
guessesTaken = 0$
print(&39;Hello! What is your name?&39;)$
myName = input()$
number = random.randint(1, 20)$
print(&39;Well, &39; + myName + &39;, I am thinking of a number between 1 and 20.&39;)$
while guessesTaken &lt; 6:$
    print(&39;Take a guess.&39;) # There are four spaces in front of print.$
    guess = input()$
    guess = int(guess)$
    guessesTaken = guessesTaken + 1$
    if guess &lt; number:$
        print(&39;Your guess is too low.&39;) # There are eight spaces in front of print.$
    if guess &gt; number:$
        print(&39;Your guess is too high.&39;)$
    if guess == number:$
        break$
if guess == number:$
    guessesTaken = str(guessesTaken)$
    print(&39;Good job, &39; + myName + &39;! You guessed my number in &39; + guessesTaken + &39; guesses!&39;)$
if guess != number:$
    number = str(number)$
    print(&39;Nope. The number I was thinking of was &39; + number)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (16, N'Log Checker', N'Log Checker$
//!/usr/bin/env python$
logfile = open(&quot;/var/log/syslog&quot;, &quot;r&quot;)$
for line in logfile:$
    line_split = line.split()$
    print line_split$
    list = line_split[0], line_split[1], line_split[2], line_split[4]$
    print list$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (17, N'Apache logfile', N'Apache logfile$
import collections$

logfile = open(&quot;yourlogfile.log&quot;, &quot;r&quot;)$

clean_log=[]$

for line in logfile:$
    try:$
        //copy the URLS to an empty list.$
        //We get the part between GET and HTTP$
        clean_log.append(line[line.index(&quot;GET&quot;)+4:line.index(&quot;HTTP&quot;)])$
    except:$
        pass$

counter = collections.Counter(clean_log)$

//get the Top 50 most popular URLs$
for count in counter.most_common(50):$
    print(str(count[1]) + &quot;\t&quot; + str(count[0]))$

logfile.close()')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (18, N'Password Generator', N'Password Generator$
import string$
from random import *$
characters = string.ascii_letters + string.punctuation  + string.digits$
password =  &quot;&quot;.join(choice(characters) for x in range(randint(8, 16)))$
print password$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (19, N'SSH Connection with Python', N'SSH Connection with Python$
Module documentation$
import pxssh$
help(pxssh)$

Help on module pxssh:$

NAME$
   pxssh$

FILE$
   /usr/lib/python2.7/dist-packages/pxssh.py$

DESCRIPTION$
   This class extends pexpect.spawn to specialize setting up SSH connections.$
   This adds methods for login, logout, and expecting the shell prompt.$
    
   $Id: pxssh.py 513 2008-02-09 18:26:13Z noah $$

CLASSES$
   pexpect.ExceptionPexpect(exceptions.Exception)$
       ExceptionPxssh$
   pexpect.spawn(__builtin__.object)$
       pxssh$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (20, N'Monitor Apache / Nginx Log File', N'Monitor Apache / Nginx Log File$
ips = {}$

fh = open(&quot;/var/log/nginx/access.log&quot;, &quot;r&quot;).readlines()$
for line in fh:$
    ip = line.split(&quot; &quot;)[0]$
    if 6 &lt; len(ip) &lt;=15:$
        ips[ip] = ips.get(ip, 0) + 1$
print ips$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (21, N'Using Telnet in Python', N'Using Telnet in Python$
import getpass$
import sys$
import telnetlib$

HOST = &quot;hostname&quot;$

user = raw_input(&quot;Enter your remote account: &quot;)$

password = getpass.getpass()$

tn = telnetlib.Telnet(HOST)$

tn.read_until(&quot;login: &quot;)$

tn.write(user + &quot;\n&quot;)$

if password:$
    tn.read_until(&quot;Password: &quot;)$
    tn.write(password + &quot;\n&quot;)$

tn.write(&quot;ls\n&quot;)$

tn.write(&quot;exit\n&quot;)$

print tn.read_all()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (22, N'Split a domain with urlparse', N'Split a domain with urlparse$
import urlparse$
url = &quot;http://python.org&quot;$
domain = urlparse.urlsplit(url)[1].split(&39;:&39;)[0]$
print &quot;The domain name of the url is: &quot;, domain$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (23, N'Convert Excel to PDF with xlwings and xtopdf', N'Convert Excel to PDF with xlwings and xtopdf$
import sys$
from xlwings import Workbook, Sheet, Range, Chart$
from PDFWriter import PDFWriter$

//Create a connection with a new workbook.$
wb = Workbook()$

//Create the Excel data.$
//Column 1.$
Range(&39;A1&39;).value = &39;Foo 1&39;$
Range(&39;A2&39;).value = &39;Foo 2&39;$
Range(&39;A3&39;).value = &39;Foo 3&39;$
//Column 2.$
Range(&39;B1&39;).value = &39;Bar 1&39;$
Range(&39;B2&39;).value = &39;Bar 2&39;$
Range(&39;B3&39;).value = &39;Bar 3&39;$

pw = PDFWriter(&quot;xlwingsTo.pdf&quot;)$
pw.setFont(&quot;Courier&quot;, 10)$
pw.setHeader(&quot;Testing Excel conversion to PDF with xlwings and xtopdf&quot;)$
pw.setFooter(&quot;xlwings: http://xlwings.org --- xtopdf: http://slid.es/vasudevram/xtopdf&quot;)$

for row in Range(&39;A1..B3&39;).value:$
    s = &39;&39;$
    for col in row:$
        s += col + &39; | &39;$
    pw.writeLine(s)$

pw.close()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (24, N'Convert HTML to PDF with the PDFcrowd API', N'Convert HTML to PDF with the PDFcrowd API$
import pdfcrowd$

try:$
    //create an API client instance$
    //Dummy credentials used; to actually run the program, enter your own.$
    client = pdfcrowd.Client(&quot;user_name&quot;, &quot;api_key&quot;)$
    client.setAuthor(&39;author_name&39;)$
   //Dummy credentials used; to actually run the program, enter your own.$
    client.setUserPassword(&39;user_password&39;)$

    //Convert a web page and store the generated PDF in a file.$
    pdf = client.convertURI(&39;http://www.dancingbison.com&39;)$
    with open(&39;dancingbison.pdf&39;, &39;wb&39;) as output_file:
        output_file.write(pdf)$
    
    //Convert a web page and store the generated PDF in a file.$
    pdf = client.convertURI(&39;http://jugad2.blogspot.in/p/about-vasudev-ram.html&39;)$
    with open(&39;jugad2-about-vasudevram.pdf&39;, &39;wb&39;) as output_file:$
        output_file.write(pdf)$

    //convert an HTML string and save the result to a file$
    output_file = open(&39;html.pdf&39;, &39;wb&39;)$
    html = &quot;My Small HTML File&quot;$
    client.convertHtml(html, output_file)$
    output_file.close()$

except pdfcrowd.Error, why:
    print &39;Failed:&39;, why')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (25, N'Draw Text To Image', N'Draw Text To Image$
//Draw (Bitmap Font) Text to Image$
from PIL import Image, ImageDraw, ImageFont$

def reverseColor(r, g, b):$
    return (255 - r, 255 - g, 255 - b)$
def grayscaleColor(r, g, b):$
    a = (r + g + b) / 3$
    return (a, a, a)$

text = &quot;Hello World!&quot;$
//textColor = (255, 255, 0) # RGB Yellow$
//textBackgroundColor = (255, 0, 0) # RGB Red$
textX = 400 # text width in pixels$
textY = 100 # text height in pixels$
textTopLeftX = 0$
textTopLeftY = 0$

//create new image$
//imgx = 800 # image width in pixels$
//imgy = 600 # image height in pixels$
//image = Image.new(&quot;RGB&quot;, (imgx, imgy))$

//load image$
image = Image.open(&quot;input.png&quot;)$
(imgx, imgy) = image.size$
//image = image.resize((imgx, imgy), Image.BICUBIC)$

font = ImageFont.load_default() # load default bitmapfont$
(width, height) = font.getsize(text)$
textImage = font.getmask(text)$
pixels = image.load()$
for y in range(imgy):$
    by = int(height * (y - textTopLeftY) / textY + 0.5)$
    if by &gt;= 0 and by &lt; height:$
        for x in range(imgx):$
            bx = int(width * (x - textTopLeftX) / textX + 0.5)$
            if bx &gt;= 0 and bx &lt; width:$
                if textImage.getpixel((bx, by)) == 0: //text background$
                    //pass //transparent background$
                    //pixels[x, y] = textBackgroundColor$
                    (r, g, b, a) = pixels[x, y]$
                    pixels[x, y] = grayscaleColor(r, g, b)$
                else: //text foreground$
                    //pixels[x, y] = textColor$                
                    (r, g, b, a) = pixels[x, y]$
                    pixels[x, y] = reverseColor(r, g, b)$

image.save(&quot;output.png&quot;, &quot;PNG&quot;)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (26, N'Convert a Python AST into an XML file', N'Convert a Python AST into an XML file$
import ast, re, sys$
from xml.dom import minidom$

try:$
    from xml.etree import cElementTree as etree$
except:$
    try:$
        from lxml import etree$
    except:$
        from xml.etree import ElementTree as etree$

def prettify(xml_string):$
    reparsed = minidom.parseString(xml_string)$
    return reparsed.toprettyxml(indent=&quot;  &quot;) $

class ast2xml(ast.NodeVisitor):$
    def __init__(self):$
        super(ast.NodeVisitor, self).__init__()$
        self.path = []$
        self.root = etree.Element(&39;ast&39;)$
        self.celement = self.root$
    def convert(self, tree):$
        self.visit(tree)$
        return etree.tostring(self.root)$
    def generic_visit(self, node):$
        node_name = type(node).__name__$
        self.path.append(node_name)$
        ocelement = self.celement$
        self.celement = etree.SubElement(self.celement, node_name)$
        for item in node.__dict__:$
            if isinstance(getattr(node, item), ast.AST):$
                self.generic_visit(getattr(node, item))$
            elif isinstance(getattr(node, item), list):$
                ocel2 = self.celement$
                self.celement = etree.SubElement(self.celement, item)$
                [self.generic_visit(childnode) for childnode in getattr(node, item) if isinstance(childnode, (ast.AST, list))]$
                self.celement = ocel2$
            else:$
                self.celement.attrib.update({item: str(getattr(node, item))})$
        self.path.pop()$
        self.celement = ocelement$

def main(fpath):$
    with open(fpath, &39;r&39;) as f:$
        tree = ast.parse(f.read())$
        res = ast2xml().convert(tree)$
        print prettify(res)

if __name__ == &39;__main__&39;:$
    main(sys.argv[1])$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (27, N'Image Converter', N'Image Converter$
//Image Converter$
//Supported Formats:$
//http://effbot.org/imagingbook/formats.htm$
from PIL import Image$
import sys, os$
if len(sys.argv) != 3:$
    print &quot;USAGE:&quot;$
    print &quot;[python] ImageConverter.py InputImageFilePath OutputImageFilePath&quot;$
    print &quot;Use quotes if file paths/names contain spaces!&quot;$
    os._exit(1) //sys.exit()$
InputImageFilePath = sys.argv[1]$
OutputImageFilePath = sys.argv[2]$
imageFormat = ((os.path.splitext(OutputImageFilePath)[1])[1 : ]).upper()$
if imageFormat == &quot;JPG&quot;: imageFormat = &quot;JPEG&quot;$
if imageFormat == &quot;TIF&quot;: imageFormat = &quot;TIFF&quot;$
image = Image.open(InputImageFilePath)$
image.save(OutputImageFilePath, imageFormat)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (28, N'Convert JSON to PDF with Python and xtopdf', N'Convert JSON to PDF with Python and xtopdf$
import sys$
import json
from PDFWriter import PDFWriter$

def error_exit(message):$
    sys.stderr.write(message)$
    sys.exit(1)$

def JSONtoPDF(json_data):$
   //Get the data values from the JSON string json_data.$
    try:$
        data = json.loads(json_data)$
        pdf_filename = data[&39;pdf_filename&39;]$
        font_name = data[&39;font_name&39;]$
        font_size = data[&39;font_size&39;]$
        header = data[&39;header&39;]$
        footer = data[&39;footer&39;]$
        lines = data[&39;lines&39;]$
    except Exception as e:$
        error_exit(&quot;Invalid JSON data: {}&quot;.format(e.message))$
    //Generate the PDF using the data values.$
    try:$
        with PDFWriter(pdf_filename) as pw:$
            pw.setFont(font_name, font_size)$
            pw.setHeader(header)$
            pw.setFooter(footer)$
            for line in lines:$
                pw.writeLine(line)$
    except IOError as ioe:$
        error_exit(&quot;IOError while generating PDF file: {}&quot;.format(ioe.message))$
    except Exception as e:$
        error_exit(&quot;Error while generating PDF file: {}&quot;.format(e.message))$

def testJSONtoPDF():$
    fil = open(&39;the-man-in-the-arena.txt&39;)$
    lis = fil.readlines()$
    data = { \$
        &39;pdf_filename&39;: &39;the-man-in-the-arena.pdf&39;, \$
        &39;font_name&39;: &39;Courier&39;, \$
        &39;font_size&39;: 12, \$
        &39;header&39;: &39;The Man in the Arena&39;, \$
        &39;footer&39;: &39;Generated by xtopdf - http://google.com/search?q=xtopdf&39;, \$
        &39;lines&39;: lis \$
        }$
    json_data = json.dumps(data)$
    JSONtoPDF(json_data)$
    
def main():$
    testJSONtoPDF() $

if __name__ == &39;__main__&39;:$
    main()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (29, N'Find Duplicate Files', N'Find Duplicate Files$
import sys$
import os$
import glob$
import hashlib$

numArgs = len(sys.argv) //of command-line arguments$
if numArgs &lt; 2 or numArgs &gt; 3:$
    print &quot;USAGE:&quot;$
    print &quot;[python] FindDuplicateFiles.py FilePath [FilePath2]&quot;$
    print &quot;FilePath2 is optional.&quot;$
    print &quot;If file path(s) have spaces then add quotes around.&quot;$
    print &quot;File path(s) must include wildcards in the end&quot;$
    print &quot;like ...\*.*&quot;$
    os._exit(1)$
if numArgs &gt; 1:$
    filePath1 = sys.argv[1]$
    filePath2 = filePath1$
if numArgs &gt; 2:$
    filePath2 = sys.argv[2]$

fileList1 = glob.glob(filePath1)$
fileList2 = glob.glob(filePath2)$

fileSizeList1 = []$
for fn1 in fileList1:$
    fileSizeList1.append(os.path.getsize(fn1))$

fileSizeList2 = []$
for fn2 in fileList2:$
    fileSizeList2.append(os.path.getsize(fn2))$

//Find groups of files which have same size$
fileSizeGroups = dict()$
for i in range(len(fileList1)):$
    if fileSizeList1[i] not in fileSizeGroups:$
        fileSizeGroups[fileSizeList1[i]] = [fileList1[i]]$
    elif fileList1[i] not in fileSizeGroups[fileSizeList1[i]]:$
        fileSizeGroups[fileSizeList1[i]].append(fileList1[i])$

for i in range(len(fileList2)):$
    if fileSizeList2[i] not in fileSizeGroups:$
        fileSizeGroups[fileSizeList2[i]] = [fileList2[i]]$
    elif fileList2[i] not in fileSizeGroups[fileSizeList2[i]]:$
        fileSizeGroups[fileSizeList2[i]].append(fileList2[i])$
    
//Find groups of files which have same size and same hash$
fileHashGroups = dict()$
for fileSize in fileSizeGroups.keys():$
    if len(fileSizeGroups[fileSize]) &gt; 1:$
        for fn in fileSizeGroups[fileSize]:$
            fileHash = hashlib.sha256(open(fn, &39;rb&39;).read()).hexdigest()$
            if fileHash not in fileHashGroups:$
                fileHashGroups[fileHash] = [fn]$
            elif fn not in fileHashGroups[fileHash]:$
                fileHashGroups[fileHash].append(fn)$

Output groups of files which have same size and same hash$
for fileHash in fileHashGroups.keys():$
    if len(fileHashGroups[fileHash]) &gt; 1:$
        for fn in fileHashGroups[fileHash]:$
            print fn$
        print$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (30, N'Validate product', N'Validate product$
import re$
print &quot; Write  product  name  : &quot;$
nume_produs = raw_input()$
print &quot; Write product  price : &quot;$
cost_produs = input()$
if (nume_produs == re.sub(&39;[^a-z]&39;,&quot;&quot;,nume_produs)):$
    print (&39;%s %d&39;%(nume_produs,cost_produs))$
else:$
    print &quot;Error ! You  must tape letters&quot;$
input()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (31, N'create a unique session key', N'create a unique session key$
def generate_key(self, uid):$
    import md5, os, base64, random$
    m = md5.new()$
    m.update(os.urandom(random.randint(15,25)))$
    m.update(uid)$
    return base64.standard_b64encode(m.digest())$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (32, N'Convert doc and docx files to pdf', N'Convert doc and docx files to pdf$
from os import chdir, getcwd, listdir, path$
from time import strftime$
from win32com import client$

def count_files(filetype):$
    &39;&39;&39; (str) -&gt; int$
    Returns the number of files given a specified file type.$
    &gt;&gt;&gt; count_files(&quot;.docx&quot;)$
11
    &39;&39;&39;
    count_files = 0$
    for files in listdir(folder):$
        if files.endswith(filetype):$
            count_files += 1$
    return count_files$

//Function &quot;check_path&quot; is used to check whether the path the user provided does$
//actually exist. The user is prompted for a path until the existence of the$
//provided path has been verified.$

def check_path(prompt):$
    &39;&39;&39; (str) -&gt; str$
    Verifies if the provided absolute path does exist.$
    &39;&39;&39;$
    abs_path = raw_input(prompt)$
    while path.exists(abs_path) != True:$
        print &quot;\nThe specified path does not exist.\n&quot;$
        abs_path = raw_input(prompt)$
    return abs_path$
    
print &quot;\n&quot;$

folder = check_path(&quot;Provide absolute path for the folder: &quot;)$

//Change the directory.$

chdir(folder)$

//Count the number of docx and doc files in the specified folder.$

num_docx = count_files(&quot;.docx&quot;)$
num_doc = count_files(&quot;.doc&quot;)$

//Check if the number of docx or doc files is equal to 0 (= there are no files
//to convert) and if so stop executing the script.$ 

if num_docx + num_doc == 0:$
    print &quot;\nThe specified folder does not contain docx or docs files.\n&quot;$
    print strftime(&quot;%H:%M:%S&quot;), &quot;There are no files to convert. BYE, BYE!.&quot;$
    exit()$
else:$
    print &quot;\nNumber of doc and docx files: &quot;, num_docx + num_doc, &quot;\n&quot;$
    print strftime(&quot;%H:%M:%S&quot;), &quot;Starting to convert files ...\n&quot;$

//Try to open win32com instance. If unsuccessful return an error message.$

try:$
    word = client.DispatchEx(&quot;Word.Application&quot;)$
    for files in listdir(getcwd()):$
        if files.endswith(&quot;.docx&quot;):$
            new_name = files.replace(&quot;.docx&quot;, r&quot;.pdf&quot;)$
            in_file = path.abspath(folder + &quot;\\&quot; + files)$
            new_file = path.abspath(folder + &quot;\\&quot; + new_name)$
            doc = word.Documents.Open(in_file)$
            print strftime(&quot;%H:%M:%S&quot;), &quot; docx -&gt; pdf &quot;, path.relpath(new_file)$
            doc.SaveAs(new_file, FileFormat = 17)$
            doc.Close()$
        if files.endswith(&quot;.doc&quot;):$
            new_name = files.replace(&quot;.doc&quot;, r&quot;.pdf&quot;)$
            in_file = path.abspath(folder + &quot;\\&quot; + files)$
            new_file = path.abspath(folder + &quot;\\&quot; + new_name)$
            doc = word.Documents.Open(in_file)$
            print strftime(&quot;%H:%M:%S&quot;), &quot; doc  -&gt; pdf &quot;, path.relpath(new_file)$
            doc.SaveAs(new_file, FileFormat = 17)$
            doc.Close()$
except Exception, e:$
    print e$
finally:$
    word.Quit()$

print &quot;\n&quot;, strftime(&quot;%H:%M:%S&quot;), &quot;Finished converting files.&quot;$   

//Count the number of pdf files.$

num_pdf = count_files(&quot;.pdf&quot;)$   

print &quot;\nNumber of pdf files: &quot;, num_pdf$

//Check if the number of docx and doc file is equal to the number of files.$

if num_docx + num_doc == num_pdf:$
    print &quot;\nNumber of doc and docx files is equal to number of pdf files.&quot;$
else:$
    print &quot;\nNumber of doc and docx files is not equal to number of pdf files.&quot;$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (33, N'Search file extensions in directory', N'Search file extensions in directory$
import sys$
import os$

path = os.path.abspath(&39;.&39;) # default is current dir$
if len(sys.argv) == 2:$
    path = sys.argv[1]$
exts = []$
for root, dirs, files in os.walk(os.path.expanduser(path)):$
    for fn in files:$
        bn, ext = os.path.splitext(fn)$
        if not ext in exts:$
            exts.append(ext)$
            if ext:$
                print ext$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (34, N'Search file extensions in directory2', N'Search file extensions in directory2$
import sys$
import os$

path = os.path.abspath(&39;.&39;) # default is current dir$
if len(sys.argv) == 2:$
    path = sys.argv[1]$
exts = []$
for root, dirs, files in os.walk(os.path.expanduser(path)):$
    for fn in files:$
        bn, ext = os.path.splitext(fn)$
        if not ext in exts:$
            exts.append(ext)$
            if ext:$
                print ext$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (35, N'Search file extensions in directory3', N'Search file extensions in directory3$
import sys$
import os$

path = os.path.abspath(&amp;39;.&amp;39;) # default is current dir$
if len(sys.argv) == 2:$
    path = sys.argv[1]$
exts = []$
for root, dirs, files in os.walk(os.path.expanduser(path)):$
    for fn in files:$
        bn, ext = os.path.splitext(fn)$
        if not ext in exts:$
            exts.append(ext)$
            if ext:$
                print ext$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (36, N'Check svn number for all modules', N'Check svn number for all modules$
import os$
import re$
from urllib2 import urlopen$

base_url_qacandrot = &quot;https://qacand.sflab.ondemand.com/sf-version.properties&quot;$
base_url_qapatch = &quot;http://qapatch.successfactors.com/sf-version.properties&quot;$
base_url_qacand = &quot;http://qacand.successfactors.com/sf-version.properties&quot;$

//get test environment$
print &quot;Before use this tool, please make sure you connect to VPN!&quot;$
env = raw_input(&quot;Please enter your test env: qacand, qacandrot or qapatch (Non case sensitive): &quot;)$

if env.strip().lower() == &quot;qacand&quot;:$
    html_resource = urlopen(base_url_qacand).read()$
elif env.strip().lower() == &quot;qapatch&quot;:$
    html_resource = urlopen(base_url_qapatch).read()$
elif html_resource == &quot;qacandrot&quot;:$
    html_resource = urlopen(base_url_qacandrot).read()$

module_svn_map = {}$

pattern = &quot;(.*?)-(.*?)-(.*?)sion=(\d+$)&quot;$
p = re.compile(pattern)$

for strofmodule in html_resource.split():$
    if re.match(pattern, strofmodule):$
        results = re.findall(pattern, strofmodule)$
        module = results[0][1]$
        svn_number = results[0][3]$
        module_svn_map[module] = svn_number$
        
build_num_pattern = &quot;com.successfactors.sf-packages.version=&quot;$
build_num_len = html_resource.index(build_num_pattern) + len(build_num_pattern)$
build_version = html_resource[build_num_len:]$

print &quot;build version is &quot; + build_version, &quot;please make sure it is same as that on &quot; + env.strip().lower() + &quot;.&quot;$


while 1:$
    build_by_module = raw_input(&quot;Is your module build by module: (y or n, Non case sensitive) &quot;)$

    if build_by_module.strip().lower() == &quot;n&quot;:$
        your_module = &quot;V4&quot;$
        your_svn_number = raw_input(&quot;Please enter your svn number (6 digit): &quot;)$
        if int(your_svn_number) &lt;= int(module_svn_map[your_module]):$
            print &quot;Your svn number is included in current build on &quot; + env.strip().lower() + &quot;.&quot;$
        else:$
            print &quot;Your svn number is NOT included on &quot; +env.strip().lower() + &quot;.&quot;
        os.system(&quot;pause&quot;)$   
    elif build_by_module.strip().lower() == &quot;y&quot;:$
        print &quot;Please make sure your input is exactly same as one of module above!&quot;$
        your_module = raw_input(&quot;Please enter your module name: &quot;)$
        your_svn_number = raw_input(&quot;Please enter your svn number (6 digit): &quot;)$
        if your_module.strip().lower() in module_svn_map.keys():$
            if int(your_svn_number) &lt;= int(module_svn_map[your_module]):$
                print &quot;Your svn number is included in current build on &quot; + env.strip().lower() + &quot;.&quot;$
            else:$
                print &quot;Your svn number is NOT included on &quot; + env.strip().lower() + &quot;.&quot;
        os.system(&quot;pause&quot;)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (37, N'Send messages between computers', N'Send messages between computers$
//Save as server.py$
//Message Sender$
import os$
from socket import *$
host = &quot;&quot;$
port = 13000$
buf = 1024$
addr = (host, port)$
UDPSock = socket(AF_INET, SOCK_DGRAM)$
UDPSock.bind(addr)$
print &quot;Waiting to receive messages...&quot;$
while True:$
    (data, addr) = UDPSock.recvfrom(buf)$
    print &quot;Received message: &quot; + data$
    if data == &quot;exit&quot;:$
        break$
UDPSock.close()$
os._exit(0)$

//Save as client.py$
//Message Sender$
import os$
from socket import *$
host = &quot;127.0.0.1&quot; # set to IP address of target computer$
port = 13000$
addr = (host, port)$
UDPSock = socket(AF_INET, SOCK_DGRAM)$
while True:$
    data = raw_input(&quot;Enter message to send or type &39;exit&39;: &quot;)$
    UDPSock.sendto(data, addr)$
    if data == &quot;exit&quot;:$
        break$
UDPSock.close()$
os._exit(0)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (38, N'Use PDFWriter with context manager support', N'Use PDFWriter with context manager support$
//test_pdfwriter.py$

from PDFWriter import PDFWriter$

with PDFWriter(&quot;test_pdfwriter.pdf&quot;) as pw:$

    pw.setFont(&quot;Courier&quot;, 12)$
    pw.setHeader(&quot;Input: test_pdfwriter.py Output: test_pdfwriter.pdf&quot;)$
    pw.setFooter(&quot;Generated by xtopdf: http://bit.ly/xtopdf&quot;)$

    with open(&quot;test_pdfwriter.py&quot;) as in_fil:$
        for lin in in_fil:$
            pw.writeLine(lin)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (39, N'List MySql databases in a Gtk', N'List MySql databases in a Gtk$
from gi.repository import Gtk$
import MySQLdb$
import os$

class MyWindow(Gtk.Window):$
    
    def __init__(self):$

        Gtk.Window.__init__(self, title=&39;My Window Title&39;)$
        self.connect(&39;delete-event&39;, Gtk.main_quit)$
        
        store = Gtk.ListStore(str, str, str, str)$
        self.populate_store(store)$
        
        self.treeview = Gtk.TreeView(model=store)$

        renderer = Gtk.CellRendererText()$
        
        column_catalog = Gtk.TreeViewColumn(&39;Catalog Name&39;, renderer, text=0)$
        column_catalog.set_sort_column_id(0)$
        self.treeview.append_column(column_catalog)$
        
        column_dbname = Gtk.TreeViewColumn(&39;Database Name&39;, renderer, text=1)$
        column_dbname.set_sort_column_id(1)$
        self.treeview.append_column(column_dbname)$
        
        column_charset = Gtk.TreeViewColumn(&39;Character Set&39;, renderer, text=2)$
        column_charset.set_sort_column_id(2)$
        self.treeview.append_column(column_charset)$
        
        column_collation = Gtk.TreeViewColumn(&39;Collation&39;, renderer, text=3)$
        column_collation.set_sort_column_id(3)$
        self.treeview.append_column(column_collation)$
        
        scrolled_window = Gtk.ScrolledWindow()$
        scrolled_window.set_policy(
            Gtk.PolicyType.NEVER, Gtk.PolicyType.AUTOMATIC)$
        scrolled_window.add(self.treeview)$
        scrolled_window.set_min_content_height(200)$

        self.add(scrolled_window)$
        self.show_all()$

    //Add data to ListStore$
    def populate_store(self, store):$
        
        try:$
            connection = None$
            connection = MySQLdb.connect(&39;localhost&39;, &39;annon&39;, &39;pass&39;)$
            cursor = connection.cursor()$
            cursor.execute(&quot;Select * From `INFORMATION_SCHEMA`.`SCHEMATA`&quot;)$
            rows = cursor.fetchall()$
        
            for row in rows:$
                store.append([row[0], row[1], row[2], row[3]])$
                
        except MySQLdb.Error, e:$
            store.append([str(e.args[0]), e.args[1], &39;&39;, &39;&39;])$
            
        finally:$
            if connection != None:$
                connection.close()$
        
            
win = MyWindow()$
Gtk.main()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (40, N'Circle Inversion Fractals', N'Circle Inversion Fractals$
import math$
import random$
from PIL import Image$
imgx = 512; imgy = 512$
image = Image.new(&quot;RGB&quot;, (imgx, imgy))$
pixels = image.load()$
n = random.randint(3, 6) //of main circles$
a = math.pi * 2.0 / n$
r = math.sin(a) / math.sin((math.pi - a) / 2.0) / 2.0 //r of main circles$
h = math.sqrt(1.0 - r * r)$
xa = -h; xb = h; ya = -h; yb = h //viewing area$
cx = [0.0]; cy = [0.0]; cr = [1.0 - r] //center circle$
for i in range(n): //add main circles$
    cx.append(math.cos(a * i))$
    cy.append(math.sin(a * i))$
    cr.append(r)$
maxIt = 100000 //of iterations$
x = -2.0; y = -2.0 //initial point (outside of the circles)$
for i in range(maxIt):$
    k = random.randint(0, n) //selected circle for inversion$
    dx = x - cx[k]; dy = y - cy[k]$
    d = math.hypot(dx, dy)$
    dx = dx / d; dy = dy / d$
    dnew = cr[k] ** 2.0 / d$
    x = dnew * dx + cx[k]$
    y = dnew * dy + cy[k]$
    kx = int((imgx - 1) * (x - xa) / (xb - xa))$
    ky = int((imgy - 1) * (y - ya) / (yb - ya))$
    try: pixels[kx, ky] = (255, 255, 255)$
    except: pass$
image.save(&quot;CircleInversionFractal_&quot; + str(n) + &quot;.png&quot;, &quot;PNG&quot;)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (41, N'Calculating e using Continued Fraction', N'Calculating e using Continued Fraction$
//Calculating e using Continued Fraction$
//http://en.wikipedia.org/wiki/Continued_fraction$
import math$
n = 18 //number of iterations$
x = 0.0$
for i in range(n, 0, -1):$

    if i % 3 == 1:$
        j = int(i / 3) * 2$
    else:$
        j = 1$

    x = 1.0 / (x + j)$

print x + 1, math.e$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (42, N'Calculating PI using trigonometric iterations', N'Calculating PI using trigonometric iterations$
import math$

x = 1.0$
y = 1.0$
z = 1.0$
w = 1.0$
v = 1.0$
u = 1.0$

for i in range(30):$

    x = math.sin(x) + x$
    y = math.cos(y) + y$
    z = math.cos(z) + math.sin(z) + z$
    w = math.cos(w) - math.sin(w) + w$
    v =  math.cos(v) * math.sin(v) + v$
    u =  math.cos(u) / math.sin(u) + u$
    
    print i$
    print x, y * 2.0, z * 4.0 / 3.0, w * 4.0, v * 2.0, u * 2.0$
    print$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (43, N'Simple but Complex Calculator', N'Simple but Complex Calculator$
done = False$
while not done:$

    import cmath$
    import time$
    import math$
    import Audio_mac$
    print &quot;+--------------------------+&quot;$
    print &quot;|RAW_CALCULATOR 0.6 (BASIC)|&quot;$
    print &quot;|A)Addition                |&quot;$
    print &quot;|B)Subtraction             |&quot;$
    print &quot;|C)Multiplication          |&quot;$
    print &quot;|D)Division                |&quot;$
    print &quot;|E)Exponents               |&quot;$
    print &quot;|F)Square Root             |&quot;$
    print &quot;+--------------------------+&quot;$
    usr_choice = raw_input (&quot;&gt;&gt;&quot;)$
    if usr_choice == &quot;A&quot; or usr_choice == &quot;a&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;What is B?&quot;$
        b = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA&quot;$
        time.sleep(0.8)$
        c = a + b$
        print c$
    if usr_choice == &quot;B&quot; or usr_choice == &quot;b&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;What is B?&quot;$
        b = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA...&quot;$
        time.sleep(0.8)$
        c = a - b$
        print c$
    if usr_choice == &quot;C&quot; or usr_choice == &quot;c&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;What is B?&quot;$
        b = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA...&quot;$
        time.sleep(1.8)$
        c = a * b$
        print c$
    if usr_choice == &quot;D&quot; or usr_choice == &quot;d&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;What is B?&quot;$
        b = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA...&quot;$
        time.sleep(1.8)$
        c = a/b$
        print c$
    if usr_choice == &quot;E&quot; or usr_choice == &quot;e&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;What is B?&quot;$
        b = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA...&quot;$
        time.sleep(1.8)$
        c = a**b$
        print c$
    if usr_choice == &quot;F&quot; or usr_choice == &quot;f&quot;:$
        print &quot;What is A?&quot;$
        a = input (&quot;&gt;&gt;&quot;)$
        print &quot;PROCESSING DATA...&quot;$
        time.sleep(1.8)$
        c = math.sqrt(a)$
        print c$
    if usr_choice == &quot;42&quot;:$
        print &quot;The answer to the universe life and everything!&quot;$
        time.sleep(1.8)$
        print &quot;BLOODY FORTY TWO!&quot;$
    print (&quot;Try Again? Y/N&quot;)$
input = raw_input(&quot;&gt;&gt;&quot;)$
if input == &quot;N&quot; or input == &quot;n&quot;:$
    done = True$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (44, N'Publish SQLite data to PDF using named tuples', N'Publish SQLite data to PDF using named tuples$
//SQLiteToPDFWithNamedTuples.py$
//Author: Vasudev Ram - http://www.dancingbison.com$
//SQLiteToPDFWithNamedTuples.py is a program to demonstrate how to read$
//SQLite database data and convert it to PDF. It uses the Python$
//data structure called namedtuple from the collections module of$ 
//the Python standard library.$

from __future__ import print_function$
import sys$
from collections import namedtuple$
import sqlite3$
from PDFWriter import PDFWriter$

//Helper function to output a string to both screen and PDF.$
def print_and_write(pw, strng):$
    print(strng)$
    pw.writeLine(strng)$

try:$

    //Create the stocks database.$
    conn = sqlite3.connect(&39;stocks.db&39;)$
    //Get a cursor to it.$
    curs = conn.cursor()$

    //Create the stocks table.$
    curs.execute(&39;&39;&39;DROP TABLE IF EXISTS stocks&39;&39;&39;)$
    curs.execute(&39;&39;&39;CREATE TABLE stocks$
                 (date text, trans text, symbol text, qty real, price real)&39;&39;&39;)$

    //Insert a few rows of data into the stocks table.$
    curs.execute(&quot;INSERT INTO stocks VALUES (&39;2006-01-05&39;, &39;BUY&39;, &39;RHAT&39;, 100, 25.1)&quot;)$
    curs.execute(&quot;INSERT INTO stocks VALUES (&39;2007-02-06&39;, &39;SELL&39;, &39;ORCL&39;, 200, 35.2)&quot;)$
    curs.execute(&quot;INSERT INTO stocks VALUES (&39;2008-03-07&39;, &39;HOLD&39;, &39;IBM&39;, 300, 45.3)&quot;)$
    conn.commit()$

    //Create a namedtuple to represent stock rows.$
    StockRecord = namedtuple(&39;StockRecord&39;, &39;date, trans, symbol, qty, price&39;)$

   //Run the query to get the stocks data.$
    curs.execute(&quot;SELECT date, trans, symbol, qty, price FROM stocks&quot;)$

    //Create a PDFWriter and set some of its fields.$
    pw = PDFWriter(&quot;stocks.pdf&quot;)$
    pw.setFont(&quot;Courier&quot;, 12)$
    pw.setHeader(&quot;SQLite data to PDF with named tuples&quot;)$
    pw.setFooter(&quot;Generated by xtopdf - https://bitbucket.org/vasudevram/xtopdf&quot;)$

    //Write header info.$
    hdr_flds = [ str(hdr_fld).rjust(10) + &quot; &quot; for hdr_fld in StockRecord._fields ]$
    hdr_fld_str = &39;&39;.join(hdr_flds)$
    print_and_write(pw, &39;=&39; * len(hdr_fld_str))$
    print_and_write(pw, hdr_fld_str)$
    print_and_write(pw, &39;-&39; * len(hdr_fld_str))$

    //Now loop over the fetched data and write it to PDF.$
    //Map the StockRecord namedtuple&39;s _make class method$
    //(that creates a new instance) to all the rows fetched.$
    for stock in map(StockRecord._make, curs.fetchall()):$
        row = [ str(col).rjust(10) + &quot; &quot; for col in (stock.date, \
        stock.trans, stock.symbol, stock.qty, stock.price) ]$
        //Above line can instead be written more simply as:$
        //row = [ str(col).rjust(10) + &quot; &quot; for col in stock ]$
        row_str = &39;&39;.join(row)$
        print_and_write(pw, row_str)$

    print_and_write(pw, &39;=&39; * len(hdr_fld_str))$

except Exception as e:$
    print(&quot;ERROR: Caught exception: &quot; + e.message)$
    sys.exit(1)$

finally:$
    pw.close()$
    conn.close()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (45, N'Check for package updates on PyPI', N'Check for package updates on PyPI$
//!/usr/bin/env python3$

import xmlrpc.client$
import pip$

pypi = xmlrpc.client.ServerProxy(&39;http://pypi.python.org/pypi&39;)$
for dist in pip.get_installed_distributions():$
    available = pypi.package_releases(dist.project_name)$
    if not available:$
        # Try to capitalize pkg name$
        available = pypi.package_releases(dist.project_name.capitalize())$
        
    if not available:$
        msg = &39;no releases at pypi&39;$
    elif available[0] != dist.version:$
        msg = &39;{} available&39;.format(available[0])$
    else:$
        msg = &39;up to date&39;$
    pkg_info = &39;{dist.project_name} {dist.version}&39;.format(dist=dist)$
    print(&39;{pkg_info:40} {msg}&39;.format(pkg_info=pkg_info, msg=msg))$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (46, N'Opening files', N'Opening files$
//indent your Python code to put into an email$
import glob$
//glob supports Unix style pathname extensions$
python_files = glob.glob(&39;*.py&39;)$
for file_name in sorted(python_files):$
    print &39;    ------&39; + file_name$

    with open(file_name) as f:$
        for line in f:$
            print &39;    &39; + line.rstrip()$

    print$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (47, N'Cycling a sequence', N'Cycling a sequence$
def cycle(seq):$
    &quot;&quot;&quot;Return a generator producing items from seq. When seq is
    exhausted, the generator will cycle over from item 0 again.$

    Beware that a break statement is necessary in a for loop. Also, seq
    is a sequence supporting the len function and enumerated 0-based.$

    Examples:$

    &gt;&gt;&gt; seq = [&39;one&39;, &39;two&39;, &39;three&39;]$
    &gt;&gt;&gt; cyc = cycle(seq)$
    &gt;&gt;&gt; next(cyc)$
    &39;one&39;$
    &gt;&gt;&gt; next(cyc)$
    &39;two&39;$
    &gt;&gt;&gt; next(cyc)$
    &39;three&39;$
    &gt;&gt;&gt; next(cyc)$
    &39;one&39;$
    &gt;&gt;&gt; next(cyc)$
    &39;two&39;$

    To reset, call for a new cycle:$

    &gt;&gt;&gt; cyc = cycle(seq)$
    &gt;&gt;&gt; next(cyc)$
    &39;one&39;$
    &gt;&gt;&gt; for i, item in enumerate(cyc):$
    ...     print i, item$
    ...     if i &gt; 3:$
    ...         break # Must break out manually$
    ... 
    0 two$
    1 three$
    2 one$
    3 two$
    4 three$

    &quot;&quot;&quot;$
    i = 0$
    while True:     //Cycle forever$
        yield seq[i]$
        i = (i + 1) % len(seq)$

if __name__ == &39;__main__&39;:$
    import doctest$
    doctest.testmod()$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (48, N'Prime Factorization', N'Prime Factorization$
def primo(n):$
    def z(x):$
        if x % i : return True$
        if x == i: return True$
        return False$
    nump =[2]+ range(3, n+1, 2)$
    for i in range(3, int((n**0.5)+1),2): $
        nump = filter(z, nump)$
    return nump$

def mcm(n):$
    p=primo(n); mm=[]$
    while(n &gt; 1):$
        for i in p:$
            if (n%i == 0): mm.append(i); n=n/i$
    mm.sort()$
    return mm$


for k in range(100,121):$
    print k,&quot; &quot;,mcm(k)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (49, N'Greatest common divisor', N'Greatest common divisor$
def mcd(a,b):$
    r=a$
    while (r):$
        r=a%b; a=b; b=r $
    return a$

print mcd(120,95)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (50, N'Perfect Square Checker', N'Perfect Square Checker$
import math$

print(&quot;Is your number a perfect square?! Find out now!&quot;)$
print(&quot;Or you can square a number!&quot;)$

//Setting up while loop with loop-controlled variable$
x = 1$
while x &gt; 0:$

//Get input from user$
        op = input(&quot;q -&gt; quit program \n&quot; \$
                   &quot;c -&gt; checks a number \n&quot; \$
                   &quot;s -&gt; squares a number \n&quot;)$
//Check if input is c, s, or q$
        if op[0] is &quot;c&quot;:$
//If c, take the square root of the number and round it to the largest integer value less than or equal to x: math.floor(x)$
                num = input(&quot;Enter a whole number (q -&gt; quit): &quot;)$
                sNum = math.floor(math.sqrt(int(num)))$
                numSquared = sNum * sNum$
                
//If, else statement to determine if numSquared is equal to the input.$ 
                if numSquared == int(num):$
                    print(num, &quot;IS a perfect square! \n&quot;\$
                            &quot;√(&quot;+ num + &quot;) =&quot;, math.sqrt(int(num)))$
                else:$
                    print(num, &quot;is NOT a perfect square! \n&quot; \$
                            &quot;√(&quot;+ num + &quot;) =&quot;, math.sqrt(int(num)))$
//If s, simply square user&39;s input$
        if op[0] is &quot;s&quot;:$
                num = int(input(&quot;Enter a number to square (q -&gt; quit): &quot;))$
                numSquared = num ** 2$
                print(num, &quot;squared is&quot;, numSquared)$

//If q, quit program with goodbye message$
        else:$
                if op[0] is &39;q&39;:$
                        x -= 1$
                        print(&quot;Goodbye!&quot;)$
                else:$
                        print(&quot;Must enter either c, s, or q&quot;)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (51, N'division digit-by digit calculation', N'division digit-by digit calculation$
def div(a,b,t):$
      
    a1=str(a)$
    if  &quot;.&quot; in  a1:$
        d1, d2 =a1.split(&quot;.&quot;)$
        d2=d2.ljust(t,&quot;0&quot;)$
    else:$
        d1=a1$
        d2=&quot;0&quot;*t$
           
    c=[];r1=0$
    for i in d1:$
            d11=int(str(r1)+i)$
            c1=d11/b$
            r1=d11%b$
            c.append(c1);$
    
    c.append(&quot;.&quot;)$
    for i in d2:$
            d11=int(str(r1)+i)$
            c1=d11/b$
            r1=d11%b$
            c.append(c1);$
    
    
    c = &quot;&quot;.join(map(str, c))$
    while c[0] ==&quot;0&quot;: c =c[1:]$
    if c[0]==&quot;.&quot;: c =&quot;0&quot;+c$
       
    return c$

print div(15,23,150)$')
INSERT [dbo].[Python] ([PythonId], [Content_python], [Sourcecode_python]) VALUES (52, N'First n primes numbers', N'First n primes numbers$
def prime(n): $
    def z(x): $
        if x :return True $
        return False $
    num1=range(0,n+1); num2=int(n**0.5) +1 $
    for k in range(2,num2): $
        num0=range(k,n+1,k);del num0[0]   $   
        for i in num0: $
            num1[i]=0 $
    return filter(z, num1) $

print prime(102) $')
SET IDENTITY_INSERT [dbo].[Python] OFF
/****** Object:  Table [dbo].[JavaCode]    Script Date: 03/12/2015 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JavaCode](
	[JavaId] [int] IDENTITY(1,1) NOT NULL,
	[Content_java] [nvarchar](100) NOT NULL,
	[Sourcecode_java] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_JavaCode] PRIMARY KEY CLUSTERED 
(
	[JavaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[JavaCode] ON
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (1, N'Implement Horner Algorithm', N'Implement Horner Algorithm$
import java.util.Scanner;$
public class Horner$
{$
    private int sum;$
    /** constructor **/$
    public Horner(int[] cof, int x)$
    {$
        sum = 0;$
        calcSum(cof, x, cof.length - 1);$
        display();$
    }$
    /** Calculate sum **/$
    private void calcSum(int[] cof, int x, int N)$
    {$
        sum = cof[N] * x;$
        for (int i = N - 1; i &amp;amp;gt;= 1; i--)$
            sum = (sum + cof[i]) * x;$
        sum += cof[0];$
    }$
    public void display()$
    {$
        System.out.println(&amp;amp;quot;Evaluated sum = &amp;amp;quot;+ sum);$
    }$
    /** main method **/$
    public static void main(String[] args)$
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&amp;quot;;Horner Algorithm Test\n&amp;quot;;);$
        System.out.println(&amp;amp;quot;Enter highest power&amp;amp;quot;);$
        int n = scan.nextInt();$
        int[] arr = new int[n + 1];$
        System.out.println(&amp;amp;quot;\nEnter &amp;amp;quot;+ (n + 1) +&amp;amp;quot;$ coefficients in increasing order&amp;amp;quot;);$
        for (int i = 0; i &amp;amp;lt;= n; i++)$
            arr[i] = scan.nextInt();$
        System.out.println(&amp;amp;quot;\nEnter x&amp;amp;quot;);$
        int x = scan.nextInt();$
        Horner h = new Horner(arr, x);$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (2, N'Implement Nth Root Algorithm', N'Implement Nth Root Algorithm$
import java.util.Scanner;$
/** Class NthRoot **/$
public class NthRoot$
{$
    public double nthroot(int n, double x)$
    {$
        return nthroot(n, x, .0001);$
    }$
    public double nthroot(int n, double x, double p)$ 
    {$
        if(x &lt; 0)$ 
        {$
            System.err.println(&quot;Negative!&quot;);$
            return -1;$
        }$
        if(x == 0)$ 
            return 0;$
        double x1 = x;$
        double x2 = x / n;$  
        while (Math.abs(x1 - x2) &gt; p)$ 
        {$
            x1 = x2;$
            x2 = ((n - 1.0) * x2 + x / Math.pow(x2, n - 1.0)) / n;$
        }$
        return x2;$
    }$
    /** Main **/$
    public static void main(String[] args)$
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Nth Root Algorithm Test\n&quot;);$
        System.out.println(&quot;Enter n and x&quot;);$
        int n = scan.nextInt();$
        double x = scan.nextInt();$
        NthRoot nr = new NthRoot();$
        double root = nr.nthroot(n, x);$
        System.out.println(&quot;\nRoot = &quot;+ root);$
    }$   
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (3, N'AudioClip: play()', N'AudioClip: play() $
import java.applet.Applet;$
import java.applet.AudioClip;$
import java.net.URL;$

public class MainClass {$
 public static void main(String[] args) {$
{$
URL url = new URL(&quot;file:youraudiofile.wav&quot; );$
 AudioClip ac = Applet.newAudioClip(url);$
 ac.play();$
 
 System.out.println(&quot;Press any key to exit.&quot;);$
 System.in.read();$
 ac.stop();$
 } catch (Exception e) {$
 System.out.println(e);$
 }$
 }
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (4, N'AudioClip: stop()', N'AudioClip: stop()$
import java.applet.Applet;$
import java.applet.AudioClip;$
import java.net.URL;$

public class MainClass {$
 public static void main(String[] args) {$
 try {$
 URL url = new URL(&quot;file:youraudiofile.wav&quot; );$
 AudioClip ac = Applet.newAudioClip(url);$
 ac.play();$

 System.out.println(&quot;Press any key to exit.&quot;);$
 System.in.read();$
 ac.stop();$
 } catch (Exception e) {$
 System.out.println(e);$
 }$
 }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (5, N'Implement Borwein Algorithm', N'Implement Borwein Algorithm $ 
import java.util.Scanner; $
/** Class Borwein **/ $
public class Borwein $
{$
    /** compute 1/pi **/ $
    public double getOneByPi(int k)$
    {$
        double ak = 6.0 - 4 * Math.sqrt(2);$
        double yk = Math.sqrt(2) - 1.0;$
 
        double ak1 ;$
        double yk1 ;$
        for (int i = 0; i &lt; k; i++)$
        {$
            yk1 = (1 - Math.pow((1 - yk * yk * yk * yk),(0.25)))/(1 + Math.pow((1 - yk * yk * yk * yk),(0.25)));$
            ak1 = ak * Math.pow((1 + yk1), 4) - Math.pow(2, 2 * i + 3) * yk1 * (1 + yk1 + yk1 * yk1);$
            yk = yk1;$
            ak = ak1;$
        }$
        return ak;$
    }$
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Borwein 1/Pi Algorithm Test\n&quot;);$
        /** Make an object of Borwein class **/$
        Borwein b = new Borwein();$
 
        System.out.println(&quot;Enter number of iterations &quot;);$
        int k = scan.nextInt();$
 
        System.out.println(&quot;\nValue of 1/pi : &quot;+ b.getOneByPi(k));$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (6, N'Implement Cubic convergence 1/pi Algorithm', N'Implement Cubic convergence 1/pi Algorithm $
import java.util.Scanner;$
/** Class CubicConvergencePi **/$
public class CubicConvergencePi $
{
    /** compute 1/pi **/ $
    public double getOneByPi(int k) $
    {$
        double ak = 1.0/3.0;$
        double sk = (Math.sqrt(3) - 1)/2;$
        double ak1, sk1, rk1;$
        for (int i = 0; i &lt; k; i++)$
        {$
            rk1 = 3.0 / (1 + 2 * Math.pow((1 - sk * sk * sk), (1.0/3.0)));$
            sk1 = (rk1 - 1)/2.0;$
            ak1 = rk1 * rk1 * ak - Math.pow(3, i) * (rk1 * rk1 - 1);$
            ak = ak1;$
            sk = sk1;$
        }$
        return ak;    $    
    }$
    /** Main function **/$
    public static void main (String[] args)$ 
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Cubic Convergence 1/Pi Algorithm Test\n&quot;);$
        /** Make an object of CubicConvergence class **/$
        CubicConvergencePi  cc = new CubicConvergencePi ();$
 
        System.out.println(&quot;Enter number of iterations&quot;);$
        int k = scan.nextInt();$
 
        System.out.println(&quot;\nValue of 1/pi : &quot;+ cc.getOneByPi(k));$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (7, N'Implement Gaussian Elimination Algorithm', N'Implement Gaussian Elimination Algorithm $
import java.util.Scanner;$
/** Class GaussianElimination **/$
public class GaussianElimination $
{$
    public void solve(double[][] A, double[] B)$
    {$
        int N = B.length;$
        for (int k = 0; k &lt; N; k++) $
        {$
            /** find pivot row **/$
            int max = k;$
            for (int i = k + 1; i &lt; N; i++) $
                if (Math.abs(A[i][k]) &gt; Math.abs(A[max][k]))$ 
                    max = i;$
 
            /** swap row in A matrix **/    $
            double[] temp = A[k]; $
            A[k] = A[max]; $
            A[max] = temp;$
 
            /** swap corresponding values in constants matrix **/$
            double t = B[k];$ 
            B[k] = B[max]; $
            B[max] = t;$
 
            /** pivot within A and B **/$
            for (int i = k + 1; i &lt; N; i++) $
            {$
                double factor = A[i][k] / A[k][k];$
                B[i] -= factor * B[k];$
                for (int j = k; j &lt; N; j++) $
                    A[i][j] -= factor * A[k][j];$
            }$
        }$
 
        /** Print row echelon form **/$
        printRowEchelonForm(A, B);$
 
        /** back substitution **/$
        double[] solution = new double[N];$
        for (int i = N - 1; i &gt;= 0; i--) $
        {$
            double sum = 0.0;$
            for (int j = i + 1; j &lt; N; j++) $
                sum += A[i][j] * solution[j];$
            solution[i] = (B[i] - sum) / A[i][i];$
        }        $
        /** Print solution **/$
        printSolution(solution);$
    }$
    /** function to print in row    echleon form **/$
    public void printRowEchelonForm(double[][] A, double[] B)$
    {$
        int N = B.length;$
        System.out.println(&quot;\nRow Echelon form : &quot;);$
        for (int i = 0; i &lt; N; i++)$
           {$
               for (int j = 0; j &lt; N; j++)$
                   System.out.printf(&quot;%.3f &quot;, A[i][j]);$
               System.out.printf(&quot;| %.3f\n&quot;, B[i]);$
           }$
           System.out.println();$
    }$
    /** function to print solution **/$
    public void printSolution(double[] sol)$
    {$
        int N = sol.length;$
        System.out.println(&quot;\nSolution : &quot;);$
        for (int i = 0; i &lt; N; i++) $
            System.out.printf(&quot;%.3f &quot;, sol[i]);   $
        System.out.println();     $
    }    $
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Gaussian Elimination Algorithm Test\n&quot;);$
        /** Make an object of GaussianElimination class **/$
        GaussianElimination ge = new GaussianElimination();$
 
        System.out.println(&quot;\nEnter number of variables&quot;);$
        int N = scan.nextInt();$
 
        double[] B = new double[N];$
        double[][] A = new double[N][N];$
 
        System.out.println(&quot;\nEnter &quot;+ N +&quot; equations coefficients &quot;);$
        for (int i = 0; i &lt; N; i++)$
            for (int j = 0; j &lt; N; j++)$
                A[i][j] = scan.nextDouble();$
 
        System.out.println(&quot;\nEnter &quot;+ N +&quot; solutions&quot;);$
        for (int i = 0; i &lt; N; i++)$
            B[i] = scan.nextDouble();$
 
        ge.solve(A,B);$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (8, N'Implement Repeated Squaring Algorithm', N'Implement Repeated Squaring Algorithm $
import java.util.Scanner;$
 
/** Class RepeatedSquaring **/$
public class RepeatedSquaring $
{$
    /** Function for repeated squaring **/$
    public double expBySquaring(double x, int n)$
    {$
        if (n &lt; 0)$
            return expBySquaring(1 / x, -n);$
        else if (n == 0)$
            return 1;$
        else if (n == 1)$
            return x;$
        else if (n % 2 == 0)$
            return expBySquaring(x * x, n / 2);$
        else $
            return x * expBySquaring(x * x, (n - 1)/2);    $
    }$
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Repeated Squaring Algorithm Test\n&quot;);$
        /** Make an object of RepeatedSquaring class **/$
        RepeatedSquaring rs = new RepeatedSquaring();$
 
        /** Accept n , k **/$
        System.out.println(&quot;\nEnter n and k of (N ^ K)&quot;);$
        double n = scan.nextDouble();$
        int k = scan.nextInt();$
        double result = rs.expBySquaring(n, k);$
 
        System.out.println(&quot;\nResult : &quot;+ result);    $    
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (9, N'2D FFT Inplace Given a Complex 2D Array', N'2D FFT Inplace Given a Complex 2D Array $
import java.util.Scanner;$
public class TwoD_FFT $
{$
    static void twoDfft(double[][] inputData, double[][] realOut,$
            double[][] imagOut, double[][] amplitudeOut) $
    {$
        int height = inputData.length;$
        int width = inputData[0].length;$
 
        // Two outer loops iterate on output data.$
        for (int yWave = 0; yWave &lt; height; yWave++) $
        {$
            for (int xWave = 0; xWave &lt; width; xWave++) $
            {$
                // Two inner loops iterate on input data.$
                for (int ySpace = 0; ySpace &lt; height; ySpace++) $
                {$
                    for (int xSpace = 0; xSpace &lt; width; xSpace++) $
                    {$
                        // Compute real, imag, and ampltude.$
                        realOut[yWave][xWave] += (inputData[ySpace][xSpace] * Math $
                                .cos(2 $
                                        * Math.PI $
                                        * ((1.0 * xWave * xSpace / width) + (1.0 $
                                                * yWave * ySpace / height))))$
                                / Math.sqrt(width * height);$
                        imagOut[yWave][xWave] -= (inputData[ySpace][xSpace] * Math $
                                .sin(2 $
                                        * Math.PI $
                                        * ((1.0 * xWave * xSpace / width) + (1.0$
                                                * yWave * ySpace / height))))$
                                / Math.sqrt(width * height);$
                        amplitudeOut[yWave][xWave] = Math$
                                .sqrt(realOut[yWave][xWave]$
                                        * realOut[yWave][xWave]$
                                        + imagOut[yWave][xWave]$
                                        * imagOut[yWave][xWave]);$
                    }$
                    System.out.println(realOut[yWave][xWave] + &quot; + &quot;$
                            + imagOut[yWave][xWave] + &quot; i&quot;);$
                }$
            }$
        }$
    }$
 
    public static void main(String args[]) $
    {$
        System.out.println(&quot;Enter the size: &quot;);$
        Scanner sc = new Scanner(System.in);$
        int n = sc.nextInt();$
        double[][] input = new double[n][n];$
        double[][] real = new double[n][n];$
        double[][] img = new double[n][n];$
        double[][] amplitutude = new double[n][n];$
        System.out.println(&quot;Enter the 2D elements &quot;);$
        for (int i = 0; i &lt; n; i++)$
            for (int j = 0; j &lt; n; j++)$
                input[i][j] = sc.nextDouble();$
 
        twoDfft(input, real, img, amplitutude);$
 
        sc.close();$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (10, N'Implement Knapsack Algorithm', N'import java.util.Scanner;$
/** Class Knapsack **/$
public class Knapsack$
{$
    public void solve(int[] wt, int[] val, int W, int N)$
    {$
        int NEGATIVE_INFINITY = Integer.MIN_VALUE;$
        int[][] m = new int[N + 1][W + 1];$
        int[][] sol = new int[N + 1][W + 1];$
 
        for (int i = 1; i &lt;= N; i++)$
        {$
            for (int j = 0; j &lt;= W; j++)$
            {$
                int m1 = m[i - 1][j];$
                int m2 = NEGATIVE_INFINITY; $
                if (j &gt;= wt[i])$
                    m2 = m[i - 1][j - wt[i]] + val[i];$
                /** select max of m1, m2 **/$
                m[i][j] = Math.max(m1, m2);$
                sol[i][j] = m2 &gt; m1 ? 1 : 0;$
            }$
        }        $
        /** make list of what all items to finally select **/$
        int[] selected = new int[N + 1];$
        for (int n = N, w = W; n &gt; 0; n--)$
        {$
            if (sol[n][w] != 0)$
            {$
        selected[n] = 1;$
                w = w - wt[n];$
            }$
            else$
                selected[n] = 0;$
        }$
        /** Print finally selected items **/$
        System.out.println(&quot;\nItems selected : &quot;);$
        for (int i = 1; i &lt; N + 1; i++)$
            if (selected[i] == 1)$
                System.out.print(i +&quot; &quot;);$
        System.out.println();$
    }$
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Knapsack Algorithm Test\n&quot;);$
        /** Make an object of Knapsack class **/$
        Knapsack ks = new Knapsack();$

        System.out.println(&quot;Enter number of elements &quot;);$
        int n = scan.nextInt();$
 
        int[] wt = new int[n + 1];$
        int[] val = new int[n + 1];$
 
        System.out.println(&quot;\nEnter weight for &quot;+ n +&quot; elements&quot;);$
        for (int i = 1; i &lt;= n; i++)$
            wt[i] = scan.nextInt();$
        System.out.println(&quot;\nEnter value for &quot;+ n +&quot; elements&quot;);$
        for (int i = 1; i &lt;= n; i++)$
            val[i] = scan.nextInt();$
 
        System.out.println(&quot;\nEnter knapsack weight &quot;);$
        int W = scan.nextInt();$
 
        ks.solve(wt, val, W, n);$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (11, N'NULSolve the 0-1 Knapsack ProblemL', N'NULSolve the 0-1 Knapsack ProblemL $
import java.util.Scanner;$
public class Zero_One_Knapsack $
{$
    public void solve(int[] wt, int[] val, int W, int N)$
    {$
        int NEGATIVE_INFINITY = Integer.MIN_VALUE;$
        int[][] m = new int[N + 1][W + 1];$
        int[][] sol = new int[N + 1][W + 1];$
        for (int i = 1; i &lt;= N; i++)$
        {$
            for (int j = 0; j &lt;= W; j++)$
            {$
                int m1 = m[i - 1][j];$
                int m2 = NEGATIVE_INFINITY; $
                if (j &gt;= wt[i])$
                    m2 = m[i - 1][j - wt[i]] + val[i];$
                m[i][j] = Math.max(m1, m2);$
                sol[i][j] = m2 &gt; m1 ? 1 : 0;$
            }$
        }        $
        int[] selected = new int[N + 1];$
        for (int n = N, w = W; n &gt; 0; n--)$
        {$
            if (sol[n][w] != 0)$
            {$
                selected[n] = 1;$
                w = w - wt[n];$
            }$
            else $
                selected[n] = 0; $
        }$
        System.out.print(&quot;\nItems with weight &quot;);$
        for (int i = 1; i &lt; N + 1; i++)$
            if (selected[i] == 1)$
                System.out.print(val[i] +&quot; &quot;);$
        System.out.println(&quot;are selected by knapsack algorithm.&quot;);$
    }$
    public static void main (String[] args)$ 
    {$
        Scanner scan = new Scanner(System.in);$
        Zero_One_Knapsack ks = new Zero_One_Knapsack();$
 
        System.out.println(&quot;Enter number of elements &quot;);$
        int n = scan.nextInt();$
 
        int[] wt = new int[n + 1];$
        int[] val = new int[n + 1];$
 
        System.out.println(&quot;Enter weight for &quot;+ n +&quot; elements&quot;);$
        for (int i = 1; i &lt;= n; i++)$
            wt[i] = scan.nextInt();$
        System.out.println(&quot;Enter value for &quot;+ n +&quot; elements&quot;);$
        for (int i = 1; i &lt;= n; i++)$
            val[i] = scan.nextInt();$
 
        System.out.println(&quot;Enter knapsack weight &quot;);$
        int W = scan.nextInt();$
 
        ks.solve(wt, val, W, n);$
        scan.close();$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (12, N'Implement Shunting Yard Algorithm', N'Implement Shunting Yard Algorithm $
import java.util.Scanner;$
 
/** Class ShuntingYard **/$
public class ShuntingYard$
{$
    /** enum **/$
    private enum Precedence$
    {$
        lparen(0), rparen(1), plus(2), minus(3), divide(4), times(5), mod(6), eos(7), operand(8);$
 
        private int index;$
        Precedence(int index)$
        {$
            this.index = index;$
        }$
        public int getIndex()$
        {$
            return index;$
        }        $
    } $
    /** in stack precedence **/$
    private static final int[] isp = {0, 19, 12, 12, 13, 13, 13, 0};$
    /** incoming character precedence **/$
    private static final int[] icp = {20, 19, 12, 12, 13, 13, 13, 0};$
    /** operators **/$
    private static final char[] operators = { { ,  } ,  + ,  - ,  / ,  * ,  % ,    };$
    /** precedence stack **/$
    private Precedence[] stack; $
    /** stack top pointer **/$
    private int top;$
 
    /** pop element from stack **/$
    private Precedence pop()$
    {$
        return stack[top--];$
    }$
    /** push element onto stack **/$
    private void push(Precedence ele)$
    {
        stack[++top] = ele;$
    }$
    /** get precedence token for symbol **/$
    public Precedence getToken(char symbol)$
    {$
        switch (symbol)$
        {$
        case  (   : return Precedence.lparen;$
        case  )  : return Precedence.rparen;$
        case  +   : return Precedence.plus;$
        case  -   : return Precedence.minus;$
        case  /   : return Precedence.divide;$
        case  *   : return Precedence.times;$
        case  %  : return Precedence.mod;$
        case     : return Precedence.eos;$
        default   : return Precedence.operand;$
        }$
    }$
 
    /** Function to convert infix to postfix **/$
    public String postfix(String infix)$
    {$
        String postfix = &quot;&quot;;$
        top = 0;$
        stack = new Precedence[infix.length()];$
        stack[0] = Precedence.eos;$
        Precedence token;$
        for (int i = 0; i &lt; infix.length(); i++)$
        {$
            token = getToken(infix.charAt(i));$
            /** if token is operand append to postfix **/$
            if (token == Precedence.operand)$
                postfix = postfix + infix.charAt(i);$
            /** if token is right parenthesis pop till matching left parenthesis **/$
            else if (token == Precedence.rparen)$
            {$
                while (stack[top] != Precedence.lparen)$
                    postfix = postfix + operators[pop().getIndex()];$
                /** discard left parenthesis **/$
                pop();$
            }$
            /** else pop stack elements whose precedence is greater than that of token **/$
            else$
            {$
                while (isp[stack[top].getIndex()] &gt;= icp[token.getIndex()])$
                    postfix = postfix + operators[pop().getIndex()];$
                push(token);$
            }$
        }$
        /** pop any remaining elements in stack **/$
        while ((token = pop()) != Precedence.eos)$
            postfix = postfix + operators[token.getIndex()];$
 
        return postfix;$
    }$
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Shunting Yard Algorithm Test\n&quot;);$
        /** Make an object of ShuntingYard class **/$
        ShuntingYard sy = new ShuntingYard(); $
 
        /** Accept infix expression **/$
        System.out.println(&quot;Enter infix expression&quot;);$
        String infix = scan.next();$
 
        String postfix = sy.postfix(infix);$
        System.out.println(&quot;\nPostfix expression : &quot;+ postfix);$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (13, N'Addition Operation Using Bitwise Operators', N'Addition Operation Using Bitwise Operators $ 
import java.util.Scanner;$
public class Bitwise_Addition $
{$
    static int add(int x, int y)$
    {$
        int carry;$
        while(y!=0)$
        {$
            carry = x &amp; y;$
            x = x ^ y;$
            y = carry &lt;&lt; 1;$
        }$
        return x;$
    }$
    public static void main(String args[])$
    {$
        Scanner input = new Scanner(System.in);$
        System.out.println(&quot;Enter the numbers to be added:&quot;);$
        int x = input.nextInt();$
        int y = input.nextInt();$
        System.out.println(&quot;The Summation is: &quot;+add(x, y));$
        input.close();$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (14, N'Implement Borwein Algorithm', N'Implement Borwein Algorithm $
import java.util.Scanner;$
/** Class Borwein **/$
public class Borwein$
{$
    /** compute 1/pi **/$
    public double getOneByPi(int k)$
    {$
        double ak = 6.0 - 4 * Math.sqrt(2);$
        double yk = Math.sqrt(2) - 1.0;$
 
        double ak1 ;$
        double yk1 ;$
        for (int i = 0; i &lt; k; i++)$
        {$
            yk1 = (1 - Math.pow((1 - yk * yk * yk * yk),(0.25)))/(1 + Math.pow((1 - yk * yk * yk * yk),(0.25)));$
            ak1 = ak * Math.pow((1 + yk1), 4) - Math.pow(2, 2 * i + 3) * yk1 * (1 + yk1 + yk1 * yk1);$
            yk = yk1;$
            ak = ak1;$
        }$
return ak;$
    }$
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Borwein 1/Pi Algorithm Test\n&quot;);$
        /** Make an object of Borwein class **/$
        Borwein b = new Borwein();$
 
        System.out.println(&quot;Enter number of iterations &quot;);$
        int k = scan.nextInt();$
 
        System.out.println(&quot;\nValue of 1/pi : &quot;+ b.getOneByPi(k));$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (15, N'Implement Sieve Of Eratosthenes', N'Implement Sieve Of Eratosthenes $
import java.util.Scanner;$
/** Class SieveOfEratosthenes **/$
public class SieveOfEratosthenes$
{$
    /** Function to calculate all primes less than n **/$
    private int[] calcPrimes(int N)$
    {$
        int[] arr = new int[N + 1];$
        for (int i = 2; i &lt;= Math.sqrt(N); i++)$
        {$
            if (arr[i] == 0)$
            {$
                for (int j = i * i; j &lt;= N; j += i)$
                {$
                    arr[j] = 1;$
                }$
            }$
        }$
        return arr;$
    }$
    /** Function to get all primes **/$
    public void getPrimes(int N)$
    {$
        int[] primes = calcPrimes(N);$
        display(primes);$
    }$
    /** Function to display all primes **/$
    public void display(int[] primes)$
    {$
        System.out.print(&quot;\nPrimes = &quot;);$$
        for (int i = 2; i &lt; primes.length; i++)$
            if (primes[i] == 0)$
                System.out.print(i +&quot; &quot;);$
        System.out.println();$
    }$
    /** Main function **/$
    public static void main (String[] args) $$
    {$
        Scanner scan = new Scanner(System.in);
        System.out.println(&quot;Sieve Of Eratosthenes Prime Algorithm Test\n&quot;);$
        /** Make an object of SieveOfEratosthenes class **/$
        SieveOfEratosthenes soe = new SieveOfEratosthenes();$
        /** Accept n **/$
        System.out.println(&quot;Enter number to find all primes less than the number\n&quot;);$
        int n = scan.nextInt();$
        soe.getPrimes(n);        $
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (16, N'Implement Sieve Of Atkin', N'Implement Sieve Of Atkin $
import java.util.Scanner;$
/** Class SieveOfAtkin **/$
public class  SieveOfAtkin$
{$
    /** Function to calculate all primes less than n **/$
    private boolean[] calcPrimes(int limit)$
    {$
        /** initialize the sieve **/$
        boolean[] prime = new boolean[limit + 1];$
        prime[2] = true;$
        prime[3] = true;$
        int root = (int) Math.ceil(Math.sqrt(limit));$
 
        /** put in candidate primes: $
           integers which have an odd number of$
           representations by certain quadratic forms **/$
        for (int x = 1; x &lt; root; x++)$
        {$
            for (int y = 1; y &lt; root; y++)$
            {$
                int n = 4 * x * x + y * y;$
                if (n &lt;= limit &amp;&amp; (n % 12 == 1 || n % 12 == 5))$
                    prime[n] = !prime[n];$
                n = 3 * x * x + y * y;$
                if (n &lt;= limit &amp;&amp; n % 12 == 7)$
                    prime[n] = !prime[n];$
                n = 3 * x * x - y * y;$
                if ((x &gt; y) &amp;&amp; (n &lt;= limit) &amp;&amp; (n % 12 == 11))$
                    prime[n] = !prime[n];$
            }$
        }$
        /** eliminate composites by sieving, omit multiples of its square **/$
        for (int i = 5; i &lt;= root; i++)$
            if (prime[i])$
                for (int j = i * i; j &lt; limit; j += i * i)$
                    prime[j] = false;$
 
        return prime;$
    }$
    /** Function to get all primes **/$
    public void getPrimes(int N)$
    {$
        boolean[] primes = calcPrimes(N);$
        display(primes);$
    }$
    /** Function to display all primes **/$
    public void display(boolean[] primes)$
    {$
        System.out.print(&quot;\nPrimes = &quot;);$
        for (int i = 2; i &lt; primes.length; i++)$
            if (primes[i])$
                System.out.print(i +&quot; &quot;);$
        System.out.println();$
    }$
    /** Main function **/$
    public static void main (String[] args) $$
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Sieve Of Atkin Prime Algorithm Test\n&quot;);$
        /** Make an object of SieveOfAtkin class **/$
         SieveOfAtkin soa = new  SieveOfAtkin();$
        /** Accept n **/$
        System.out.println(&quot;Enter number to find all primes less than the number\n&quot;);$
        int n = scan.nextInt();$
        soa.getPrimes(n);        $
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (17, N'Calculate the GCD and LCM of two given numbers', N'Calculate the GCD and LCM of two given numbers $
import java.util.Scanner;$
public class GCD_LCM $
{$
    static int gcd(int x, int y)$
    {$
        int r=0, a, b;$
        a = (x &gt; y) ? x : y; // a is greater number$
        b = (x &lt; y) ? x : y; // b is smaller number$
 
        r = b;$
        while(a % b != 0)$
        {$
            r = a % b;$
            a = b;$
            b = r;$
        }$
        return r;$
    }$
 
    static int lcm(int x, int y)$
    {$
        int a;$
        a = (x &gt; y) ? x : y; // a is greater number$
        while(true)$
        {$
            if(a % x == 0 &amp;&amp; a % y == 0)$
                return a;$
            ++a;$
        }$
    }$
 
    public static void main(String args[])$
    {$
        Scanner input = new Scanner(System.in);$
        System.out.println(&quot;Enter the two numbers: &quot;);$
        int x = input.nextInt();$
        int y = input.nextInt();$
 
        System.out.println(&quot;The GCD of two numbers is: &quot; + gcd(x, y));$
        System.out.println(&quot;The LCM of two numbers is: &quot; + lcm(x, y));$
        input.close();$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (18, N'Find the Unique Factorization of a Given Number', N'Find the Unique Factorization of a Given Number $
import java.util.HashSet;$
import java.util.Scanner;$
import java.util.Set;$

 public class Unique_Prime_Factors $
{$
    static Set primeFactors(long number) $
    {$
        long copy = number, i;$
   Set primeFactor = new HashSet&lt;&gt;();$
       for (i = 2; i &lt;= copy; i++) $
       {$
            if (copy % i == 0) $
           {$
               primeFactor.add(i);$
                 copy /= i;$
               i--;$
            }$
        }$
        return primeFactor;$
    }$

    public static void main(String args[]) $
     {$
         Scanner input = new Scanner(System.in);$
         long n;$
        System.out.println(&quot;Enter the number: &quot;);$
         n = input.nextLong();$
         System.out.println(&quot;The Prime Factors of &quot; + n + &quot; is: &quot;$
                             + primeFactors(n));$
     }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (19, N'Implement Euclid GCD Algorithm', N'Implement Euclid GCD Algorithm $
import java.util.Scanner; $

function gcd(a, b) $
    if b = 0 $
       return a $
    else $
       return gcd(b, a mod b) $

 
/** Class EuclidGcd **/ $
public class EuclidGcd     $
{ $
    /** Function to calculate gcd **/ $
    public long gcd(long p, long q) $
    { $
        if (p % q == 0) $
            return q; $
        return gcd(q, p % q); $
    } $
    /** Main function **/ $
    public static void main (String[] args) $ 
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;Euclid GCD Algorithm Test\n&quot;);$
        /** Make an object of EuclidGcd class **/$$
        EuclidGcd eg = new EuclidGcd();$
 
        /** Accept two integers **/$
        System.out.println(&quot;Enter two integer numbers\n&quot;);$
        long n1 = scan.nextLong();$
        long n2 = scan.nextLong();$
        /** Call function gcd of class EuclidGcd **/$
        long gcd = eg.gcd(n1, n2);$
        System.out.println(&quot;\nGCD of &quot;+ n1 +&quot; and &quot;+ n2 +&quot; = &quot;+ gcd);$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (20, N'Implement Fermat Factorization Algorithm', N'Implement Fermat Factorization Algorithm $
import java.util.Scanner;$
public class FermatFactorization$
{$
    /** Fermat factor **/$
    public void FermatFactor(long N) $
    { $
        long a = (long) Math.ceil(Math.sqrt(N)); $
        long b2 = a * a - N; $
        while (!isSquare(b2)) $
        { $
            a++; $
            b2 = a * a - N; $
        } $
        long r1 = a - (long)Math.sqrt(b2); $
        long r2 = N / r1; $
        display(r1, r2); $
    } $
    /** function to display roots **/ $
    public void display(long r1, long r2) $
    { $
        System.out.println(&quot;\nRoots = &quot;+ r1 +&quot; , &quot;+ r2);    $ 
    } $
    /** function to check if N is a perfect square or not **/ $
    public boolean isSquare(long N) $
    { $
        long sqr = (long) Math.sqrt( N); $
        if (sqr * sqr == N || (sqr + 1) * (sqr + 1) == N) $
            return true; $
        return false; $
    } $
    /** main method **/ $
    public static void main(String[] args)  $
    { $
        Scanner scan = new Scanner(System.in); $
        System.out.println(&quot;Fermat Factorization Test\n&quot;); $
        System.out.println(&quot;Enter odd number&quot;); $
        long N = scan.nextLong(); $
        FermatFactorization ff = new FermatFactorization(); $
        ff.FermatFactor(N); $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (21, N'Implement Naor-Reingold Pseudo Random Function', N'Implement Naor-Reingold Pseudo Random Function $
import java.util.Random; $
public class Naor_Reingold  $
{ $
    public static void main(String args[]) $
    { $
        int p=7, l=3, g=2, n=4, x; $
        int []a = {1,2,2,1}; $
        int []bin = new int[4]; $
        Random random = new Random(); $
        System.out.println(&quot;The Random numbers are: &quot;); $
        for(int i=0; i&lt;10; i++) $
        { $
            x = random.nextInt(17); $
            for(int j=3; j&gt;=0; j--) $
            { $
                bin[j] = x%2; $
                x/=2; $
            } $
            int mul = 1; $
            for(int k=0; k&lt;4; k++) $
                mul *= Math.pow(a[k], bin[k]); $
            System.out.println(Math.pow(g, mul)); $
        } $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (22, N'Implement Horner Algorithm', N'Implement Horner Algorithm $
import java.util.Scanner; $
 
public class Horner $
{ $
    private int sum; $
    /** constructor **/ $
    public Horner(int[] cof, int x) $
    { $
        sum = 0; $
        calcSum(cof, x, cof.length - 1); $
        display(); $
    } $
    /** Calculate sum **/ $
    private void calcSum(int[] cof, int x, int N) $
    { $
        sum = cof[N] * x; $
        for (int i = N - 1; i &gt;= 1; i--) $
            sum = (sum + cof[i]) * x; $
        sum += cof[0]; $
    } $
    public void display() $
    { $
        System.out.println(&quot;Evaluated sum = &quot;+ sum); $
    } $
    /** main method **/ $
    public static void main(String[] args)  $
    { $
        Scanner scan = new Scanner(System.in); $
        System.out.println(&quot;Horner Algorithm Test\n&quot;); $
        System.out.println(&quot;Enter highest power&quot;); $
        int n = scan.nextInt(); $
        int[] arr = new int[n + 1]; $ 
        System.out.println(&quot;\nEnter &quot;+ (n + 1) +&quot; coefficients in increasing order&quot;); $
        for (int i = 0; i &lt;= n; i++) $
            arr[i] = scan.nextInt(); $
        System.out.println(&quot;\nEnter x&quot;); $
        int x = scan.nextInt(); $
        Horner h = new Horner(arr, x); $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (23, N'Implement Fermat Primality Test Algorithm', N'Implement Fermat Primality Test Algorithm $
import java.util.Scanner; $
import java.util.Random; $
 
/** Class SolovayStrassen **/ $
public class SolovayStrassen $
{ $
    /** Function to calculate jacobi (a/b) **/ $
    public long Jacobi(long a, long b) $
    { $
        if (b &lt;= 0 || b % 2 == 0) $
            return 0; $
        long j = 1L; $
        if (a &lt; 0) $
        { $
            a = -a; $
            if (b % 4 == 3) $
                j = -j; $
        } $
        while (a != 0) $
        { $
            while (a % 2 == 0) $
            { $
                a /= 2; $
                if (b % 8 == 3 || b % 8 == 5) $
                    j = -j; $
            } $
 
            long temp = a; $
            a = b; $
            b = temp; $
 
            if (a % 4 == 3 &amp;&amp; b % 4 == 3) $
                j = -j; $
            a %= b; $
        } $
        if (b == 1) $
            return j; $
        return 0; $
    } $
    /** Function to check if prime or not **/ $
    public boolean isPrime(long n, int iteration) $ 
    { $
        /** base case **/ $
        if (n == 0 || n == 1) $
            return false; $
        /** base case - 2 is prime **/ $
        if (n == 2) $
            return true; $
        /** an even number other than2 is composite **/ $
        if (n % 2 == 0) $
            return false; $ 
 
        Random rand = new Random(); $
        for (int i = 0; i &lt; iteration; i++) $
        { $
            long r = Math.abs(rand.nextLong());   $          
            long a = r % (n - 1) + 1; $
            long jacobian = (n + Jacobi(a, n)) % n; $
            long mod = modPow(a, (n - 1)/2, n); $
            if(jacobian == 0 || mod != jacobian)  $
                return false; $
        } $
        return true;         $
    } $
    /** Function to calculate (a ^ b) % c **/ $
    public long modPow(long a, long b, long c) $
    { $
        long res = 1; $
        for (int i = 0; i &lt; b; i++) $
        { $
            res *= a; $
            res %= c;  $
        } $
        return res % c; $
    }     $
    /** Main function **/ $
    public static void main (String[] args)  $
    { $
        Scanner scan = new Scanner(System.in); $
        System.out.println(&quot;SolovayStrassen Primality Algorithm Test\n&quot;); $
        /** Make an object of SolovayStrassen class **/ $
        SolovayStrassen ss = new SolovayStrassen(); $
        /** Accept number **/ $
        System.out.println(&quot;Enter number\n&quot;); $
        long num = scan.nextLong(); $
        /** Accept number of iterations **/ $
        System.out.println(&quot;\nEnter number of iterations&quot;); $
        int k = scan.nextInt(); $
        /** check if prime **/ $
        boolean prime = ss.isPrime(num, k); $
        if (prime) $
            System.out.println(&quot;\n&quot;+ num +&quot; is prime&quot;); $
        else $
            System.out.println(&quot;\n&quot;+ num +&quot; is composite&quot;);     $    
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (24, N'Implement Regular Falsi Algorithm', N'public class RegularFalsi $
{ $
    /** function to find root for * */ $
    public double f(double x) $
    { $
        /** make your own function here but accordingly change (s, t) **/ $
 
         return Math.cos(x) - x * x * x; $
 
        // return x * x * x - 3 * x + 4; $
        // return Math.cos(x) - 3 * x + 1; $
        // return 2 * x - Math.log(x)/Math.log(10) - 7; $
        // return x * x - Math.log(x) - 12; $
    } $
    /** function to find root **/ $
    public double findRoot(double s, double t, double e, int m) $
    { $
        double r = 0.0,fr; $
        int n, side = 0; $
 
        /** starting values at endpoints of interval **/ $
        double fs = f(s); $
        double ft = f(t); $
 
        for (n = 0; n &lt; m; n++) $
        { $
 
            r = (fs * t - ft * s) / (fs - ft); $
            if (Math.abs(t - s) &lt; e * Math.abs(t + s))  $
                break; $
            fr = f(r); $
 
            if (fr * ft &gt; 0) $
            { $
                /** fr and ft have same sign, copy r to t **/ $
                t = r;  $
                ft = fr; $
                if (side == -1)  $
                    fs /= 2; $
                side = -1; $
            } $
            else if (fs * fr &gt; 0) $
            { $
                /** fr and fs have same sign, copy r to s **/ $
                s = r;   $
                fs = fr; $
                if (side == +1)  $
                    ft /= 2; $
                side = +1; $
            } $
            else $
            { $ 
                /** fr * f_ very small (looks like zero) **/ $
                break; $
            }  $
        } $
        return r; $
    } $ 
    /** Main function **/ $
    public static void main(String[] args) $
    { $
        System.out.println(&quot;Regular Falsi Test &quot;); $
 
        RegularFalsi rf = new RegularFalsi(); $
        /** lower limit **/ $
        double s = 0; $
        /** upper limit **/ $
        double t = 1; $
        /** half of upper bound for relative error **/ $
        double e = 5E-15; $
        /** number of iterations **/ $
        int iterations = 100; $
 
        System.out.println(&quot;\nRoot : &quot;+ rf.findRoot(s, t, e, iterations)); $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (25, N'Use rand and srand Functions', N'Use rand and srand Functions $ 
import java.util.Random; $
import java.util.UUID; $
public class Rand_and_Srand  $
{ $
    public static void main(String args[]) $
    { $
        System.out.println(&quot;The numbers using rand&quot;); $
        for(int i=0; i&lt;5; i++) $
        { $
            Random rand = new Random(); $
            System.out.println(Math.abs(rand.nextInt())); $
        } $
 
        System.out.println(&quot;The numbers using srand&quot;); $
        for(int i=0; i&lt;5; i++) $
        { $
            System.out.println(Math.abs(UUID.randomUUID().getMostSignificantBits())); $
        } $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (26, N'Implement Solovay Strassen Primality Test Algorithm', N'Implement Solovay Strassen Primality Test Algorithm $
import java.util.Scanner;$
import java.util.Random;$
 
/** Class SolovayStrassen **/$
public class SolovayStrassen$
{$
    /** Function to calculate jacobi (a/b) **/$
    public long Jacobi(long a, long b)$
    {$
        if (b &lt;= 0 || b % 2 == 0)$
            return 0;$
        long j = 1L;$
        if (a &lt; 0)$
        {$
            a = -a;$
            if (b % 4 == 3)$
                j = -j;$
        }$
        while (a != 0)$
        {$
            while (a % 2 == 0)$
            {$
                a /= 2;$
                if (b % 8 == 3 || b % 8 == 5)$
                    j = -j;$
            }$
 
            long temp = a;$
            a = b;$
            b = temp;$
 
            if (a % 4 == 3 &amp;&amp; b % 4 == 3)$
                j = -j;$
            a %= b;$
        }$
        if (b == 1)$
            return j;$
        return 0;$
    }$
    /** Function to check if prime or not **/$
    public boolean isPrime(long n, int iteration)$
    {$
        /** base case **/$
        if (n == 0 || n == 1)$
            return false;$
        /** base case - 2 is prime **/$
        if (n == 2)$
            return true;$
        /** an even number other than 2 is composite **/$
        if (n % 2 == 0)$
            return false;$
 
        Random rand = new Random();$
        for (int i = 0; i &lt; iteration; i++)$
        {$
            long r = Math.abs(rand.nextLong());         $   
            long a = r % (n - 1) + 1;$
            long jacobian = (n + Jacobi(a, n)) % n;$
            long mod = modPow(a, (n - 1)/2, n);$
            if(jacobian == 0 || mod != jacobian) $
                return false;$
        }$
        return true;        $
    }$
    /** Function to calculate (a ^ b) % c **/$
    public long modPow(long a, long b, long c)$
    {$
        long res = 1;$
        for (int i = 0; i &lt; b; i++)$
        {$
            res *= a;$
            res %= c; $
        }$
        return res % c;$
    }    $
    /** Main function **/$
    public static void main (String[] args) $
    {$
        Scanner scan = new Scanner(System.in);$
        System.out.println(&quot;SolovayStrassen Primality Algorithm Test\n&quot;);$
        /** Make an object of SolovayStrassen class **/$
        SolovayStrassen ss = new SolovayStrassen();$
        /** Accept number **/$
        System.out.println(&quot;Enter number\n&quot;);$
        long num = scan.nextLong();$
        /** Accept number of iterations **/$
        System.out.println(&quot;\nEnter number of iterations&quot;);$
        int k = scan.nextInt();$
        /** check if prime **/$
        boolean prime = ss.isPrime(num, k);$
        if (prime)$
            System.out.println(&quot;\n&quot;+ num +&quot; is prime&quot;);$
        else$
            System.out.println(&quot;\n&quot;+ num +&quot; is composite&quot;);     $   
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (27, N'Check whether Undirected Graph is Connected using DFS', N'Check whether Undirected Graph is Connected using DFS $
import java.util.InputMismatchException;$
import java.util.Scanner;$
import java.util.Stack;$
 
public class UndirectedConnectivityDfs$
{$
    private Stack[Integer] stack;$
 
    public UndirectedConnectivityDfs() $
    {$
        stack = new Stack[Integer]();$
    } $
 
    public void dfs(int adjacency_matrix[][], int source)$
    {$
        int number_of_nodes = adjacency_matrix[source].length - 1;$
        int visited[] = new int[number_of_nodes + 1];$
        int element = source;$
        int i = source;$
        visited[source] = 1;$
        stack.push(source);$
 
        while (!stack.isEmpty())$
        {$
            element = stack.peek();$
            i = element;$

                    stack.push(i);$
                    visited[i] = 1;$
                    element = i;$
                    i = 1;$

                }$
                i++;$

            stack.pop();$
        }$
        boolean connected = false;$
 
        for (int vertex = 1; vertex &lt;= number_of_nodes; vertex++)$
        {$
            if (visited[vertex] == 1) $
            {$
                connected = true;$
            } else$
            {$
                connected = false;$
                break;$
            }$
        }$
 
        if (connected)$
        {$
            System.out.println(&quot;The graph is connected&quot;);$

        {$
            System.out.println(&quot;The graph is disconnected&quot;);$
        }$
    }$
 
    public static void main(String...arg)$
    {$
        int number_of_nodes, source;$
        Scanner scanner = null;$
 
        {$

            scanner = new Scanner(System.in);$
            number_of_nodes = scanner.nextInt();$
 




                   adjacency_matrix[i][j] = scanner.nextInt();$
 
   
            {$
                for (int j = 1; j &lt;= number_of_nodes; j++)$
                {$
                     if (adjacency_matrix[i][j] == 1 &amp;&amp; adjacency_matrix[j][i] == 0)$
                     {$
                         adjacency_matrix[j][i] = 1;$
                     }$
                }$
            }$
 

            source = scanner.nextInt(); $
 
            UndirectedConnectivityDfs undirectedConnectivity= new UndirectedConnectivityDfs();$
            undirectedConnectivity.dfs(adjacency_matrix, source);$
 
        }catch(InputMismatchException inputMismatch)$
        {$
            System.out.println(&quot;Wrong Input format&quot;);$
        }$
        scanner.close();$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (28, N'Gauss Seidel Method', N'Gauss Seidel Method $
import java.io.BufferedReader; $
import java.io.IOException; $
import java.io.InputStreamReader; $
import java.io.PrintWriter; $
import java.util.Arrays; $
import java.util.StringTokenizer; $
 
public class Gauss_Seidel  $
{
    public static final int MAX_ITERATIONS = 100;   $
    private double[][] M; $
    public Gauss_Seidel(double [][] matrix) { M = matrix; } $
 
    public void print() $
    { $
        int n = M.length; $
        for (int i = 0; i &lt; n; i++)  $
        { $
            for (int j = 0; j &lt; n + 1; j++) $
                System.out.print(M[i][j] + &quot; &quot;); $
            System.out.println(); $
        } $
    } $
 
    public boolean transformToDominant(int r, boolean[] V, int[] R) $
    { $
        int n = M.length; $
        if (r == M.length)  $
        { $
            double[][] T = new double[n][n+1]; $
            for (int i = 0; i &lt; R.length; i++)  $
            { $
                for (int j = 0; j &lt; n + 1; j++)
                    T[i][j] = M[R[i]][j];
            } $
 
            M = T; $
 
            return true; $
        } $

        for (int i = 0; i &lt; n; i++) $ 
        { $
            if (V[i]) continue; $
 
            double sum = 0; $
 
            for (int j = 0; j &lt; n; j++) $
                sum += Math.abs(M[i][j]); $
 
            if (2 * Math.abs(M[i][r]) &gt; sum)  $
            { // diagonally dominant? $
                V[i] = true; $
                R[r] = i; $
 
                if (transformToDominant(r + 1, V, R)) $
                    return true; $
 
                V[i] = false; $
            } $
        } $
 
        return false; $
    } $
 
    public boolean makeDominant() $
    {
        boolean[] visited = new boolean[M.length]; $
        int[] rows = new int[M.length]; $
 
        Arrays.fill(visited, false); $
 
        return transformToDominant(0, visited, rows); $
    } $
 
    public void solve() $
    {
        int iterations = 0; $
        int n = M.length; $ 
        double epsilon = 1e-15; $
        double[] X = new double[n]; // Approximations $
        double[] P = new double[n]; // Prev $
        Arrays.fill(X, 0); $
 
        while (true)  $
        { $
            for (int i = 0; i &lt; n; i++)  $
            { $
                double sum = M[i][n]; // b_n $
 
                for (int j = 0; j &lt; n; j++) $
                    if (j != i) $
                        sum -= M[i][j] * X[j]; $
 
        // Update x_i to use in the next row calculation $
                X[i] = 1/M[i][i] * sum; $
            } $
 
            System.out.print(&quot;X_&quot; + iterations + &quot; = {&quot;); $
            for (int i = 0; i &lt; n; i++) $
                System.out.print(X[i] + &quot; &quot;); $
            System.out.println(&quot;}&quot;); $
 
            iterations++; $
            if (iterations == 1)  $
                continue; $
 
            boolean stop = true; $
            for (int i = 0; i &lt; n &amp;&amp; stop; i++) $
                if (Math.abs(X[i] - P[i]) &gt; epsilon) $
                    stop = false; $
 
            if (stop || iterations == MAX_ITERATIONS) break; $
            P = (double[])X.clone(); $
        } $
    } $
 
    public static void main(String[] args) throws IOException $
    { $
        int n; $
        double[][] M; $
 
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in)); $
        PrintWriter writer = new PrintWriter(System.out, true); $
 
        System.out.println(&quot;Enter the number of variables in the equation:&quot;); $
        n = Integer.parseInt(reader.readLine()); $
        M = new double[n][n+1]; $
        System.out.println(&quot;Enter the augmented matrix:&quot;); $
 
        for (int i = 0; i &lt; n; i++)  $
        { $
            StringTokenizer strtk = new StringTokenizer(reader.readLine()); $
 
            while (strtk.hasMoreTokens()) $
                for (int j = 0; j &lt; n + 1 &amp;&amp; strtk.hasMoreTokens(); j++) $
                    M[i][j] = Integer.parseInt(strtk.nextToken()); $
        } $
 
 
        Gauss_Seidel gausSeidel = new Gauss_Seidel(M); $
 
        if (!gausSeidel.makeDominant())  $
        { $
            writer.println(&quot;The system isnt diagonally dominant: &quot; + $
                     &quot;The method cannot guarantee convergence.&quot;); $
        } $
  
        writer.println(); $
        gausSeidel.print(); $
        gausSeidel.solve(); $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (29, N'Matrix Multiplication', N'Matrix Multiplication $
package com.sanfoundry.numerical; $
import java.util.Scanner; $
 
public class MatixMultiplication $
{ $
    public static void main(String args[]) $
    { $
        int n; $
        Scanner input = new Scanner(System.in); $
        System.out.println(&quot;Enter the base of squared matrices&quot;); $
        n = input.nextInt(); $
        int[][] a = new int[n][n]; $
        int[][] b = new int[n][n]; $
        int[][] c = new int[n][n]; $
        System.out.println(&quot;Enter the elements of 1st martix row wise \n&quot;); $
        for (int i = 0; i &lt; n; i++) $
        { $
            for (int j = 0; j &lt; n; j++) $
            { $
                a[i][j] = input.nextInt(); $
            } $
        } $
        System.out.println(&quot;Enter the elements of 2nd martix row wise \n&quot;); $
        for (int i = 0; i &lt; n; i++) $
        { $
            for (int j = 0; j &lt; n; j++) $
            { $
                b[i][j] = input.nextInt(); $
            } $
        } $
        System.out.println(&quot;Multiplying the matrices...&quot;); $
        for (int i = 0; i &lt; n; i++) $
        { $
            for (int j = 0; j &lt; n; j++) $
            { $
                for (int k = 0; k &lt; n; k++) $
                { $
                    c[i][j] = c[i][j] + a[i][k] * b[k][j]; $
                } $
            } $
        } $
        System.out.println(&quot;The product is:&quot;); $
        for (int i = 0; i &lt; n; i++) $
        { $
            for (int j = 0; j &lt; n; j++) $
            { $
                System.out.print(c[i][j] + &quot; &quot;); $
            } $
            System.out.println(); $
        } $
        input.close(); $
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (30, N'Implement Strassen Algorithm', N'Implement Strassen Algorithm $
import java.util.Scanner; $
/** Class Strassen **/ $
public class Strassen $
{ $
    /** Function to multiply matrices **/ $
    public int[][] multiply(int[][] A, int[][] B) $
    {         $
        int n = A.length; $
        int[][] R = new int[n][n]; $
        /** base case **/ $
        if (n == 1) $
            R[0][0] = A[0][0] * B[0][0]; $
        else $
        { $
            int[][] A11 = new int[n/2][n/2]; $
            int[][] A12 = new int[n/2][n/2]; $
            int[][] A21 = new int[n/2][n/2]; $
            int[][] A22 = new int[n/2][n/2]; $
            int[][] B11 = new int[n/2][n/2]; $
            int[][] B12 = new int[n/2][n/2]; $
            int[][] B21 = new int[n/2][n/2]; $
            int[][] B22 = new int[n/2][n/2]; $
 
            /** Dividing matrix A into 4 halves **/ $
            split(A, A11, 0 , 0); $
            split(A, A12, 0 , n/2); $
            split(A, A21, n/2, 0); $
            split(A, A22, n/2, n/2); $
            /** Dividing matrix B into 4 halves **/ $
            split(B, B11, 0 , 0); $
            split(B, B12, 0 , n/2); $
            split(B, B21, n/2, 0); $
            split(B, B22, n/2, n/2); $
 
            /**  $
              M1 = (A11 + A22)(B11 + B22) $
              M2 = (A21 + A22) B11 $
              M3 = A11 (B12 - B22) $
              M4 = A22 (B21 - B11) $
              M5 = (A11 + A12) B22 $
              M6 = (A21 - A11) (B11 + B12) $
              M7 = (A12 - A22) (B21 + B22) $
            **/ $
 
            int [][] M1 = multiply(add(A11, A22), add(B11, B22)); $
            int [][] M2 = multiply(add(A21, A22), B11); $ 
            int [][] M3 = multiply(A11, sub(B12, B22)); $
            int [][] M4 = multiply(A22, sub(B21, B11)); $
            int [][] M5 = multiply(add(A11, A12), B22); $
            int [][] M6 = multiply(sub(A21, A11), add(B11, B12)); $
            int [][] M7 = multiply(sub(A12, A22), add(B21, B22)); $
 
            /** $
              C11 = M1 + M4 - M5 + M7 $
              C12 = M3 + M5 $
              C21 = M2 + M4 $
              C22 = M1 - M2 + M3 + M6 $
            **/ $
            int [][] C11 = add(sub(add(M1, M4), M5), M7); $
            int [][] C12 = add(M3, M5); $
            int [][] C21 = add(M2, M4); $
            int [][] C22 = add(sub(add(M1, M3), M2), M6); $
 
            /** join 4 halves into one result matrix **/ $
            join(C11, R, 0 , 0); $
            join(C12, R, 0 , n/2); $
            join(C21, R, n/2, 0); $
            join(C22, R, n/2, n/2); $
        } $
        /** return result **/     $
        return R; $
    } $
    /** Funtion to sub two matrices **/ $
    public int[][] sub(int[][] A, int[][] B) $
    { $
        int n = A.length; $
        int[][] C = new int[n][n]; $
        for (int i = 0; i &lt; n; i++) $ $
            for (int j = 0; j &lt; n; j++) $
                C[i][j] = A[i][j] - B[i][j]; $
        return C; $
    } $
    /** Funtion to add two matrices **/ $
    public int[][] add(int[][] A, int[][] B) $
    { $
        int n = A.length; $
        int[][] C = new int[n][n]; $
        for (int i = 0; i &lt; n; i++) $
            for (int j = 0; j &lt; n; j++) $
                C[i][j] = A[i][j] + B[i][j]; $
        return C; $
    } $
    /** Funtion to split parent matrix into child matrices **/ $
    public void split(int[][] P, int[][] C, int iB, int jB)  $
    { $
        for(int i1 = 0, i2 = iB; i1 &lt; C.length; i1++, i2++) $
            for(int j1 = 0, j2 = jB; j1 &lt; C.length; j1++, j2++) $
                C[i1][j1] = P[i2][j2]; $
    } $
    /** Funtion to join child matrices intp parent matrix **/ $
    public void join(int[][] C, int[][] P, int iB, int jB)  $
    { $
        for(int i1 = 0, i2 = iB; i1 &lt; C.length; i1++, i2++) $
            for(int j1 = 0, j2 = jB; j1 &lt; C.length; j1++, j2++) $
                P[i2][j2] = C[i1][j1]; $
    }     $
    /** Main function **/ $
    public static void main (String[] args)  $
    { $
        Scanner scan = new Scanner(System.in); $
        System.out.println(&quot;Strassen Multiplication Algorithm Test\n&quot;); $
        /** Make an object of Strassen class **/ $
        Strassen s = new Strassen(); $
 
        System.out.println(&quot;Enter order n :&quot;); $
        int N = scan.nextInt(); $
        /** Accept two 2d matrices **/ $
        System.out.println(&quot;Enter N order matrix 1\n&quot;); $
        int[][] A = new int[N][N]; $
        for (int i = 0; i &lt; N; i++) $
            for (int j = 0; j &lt; N; j++) $
                A[i][j] = scan.nextInt(); $
 
        System.out.println(&quot;Enter N order matrix 2\n&quot;); $
        int[][] B = new int[N][N]; $
        for (int i = 0; i &lt; N; i++) $
            for (int j = 0; j &lt; N; j++) $ 
                B[i][j] = scan.nextInt(); $
 
        int[][] C = s.multiply(A, B); $
 
        System.out.println(&quot;\nProduct of matrices A and  B : &quot;); $
        for (int i = 0; i &lt; N; i++) $
        { $
            for (int j = 0; j &lt; N; j++) $
                System.out.print(C[i][j] +&quot; &quot;); $
            System.out.println(); $
        } $
 
    } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (31, N'Find Path Between Two Nodes in a Graph', N'import java.util.*;
class Node 
{
    public int label; // this node''s label (parent node in path tree)
    public int weight; // weight of edge to this node (distance to start)
 
    public Node(int v, int w) 
    { 
        label = v;
        weight = w;
    }
}
 
public class ShortestPath 
{
    public static Scanner in; // for standard input
    public static int n, m; // n = #vertices, m = #edges
    public static LinkedList[] graph; // adjacency list representation
    public static int start, end; // start and end points for shortest path
 
    public static void main(String[] args) 
    {
        in = new Scanner(System.in);
 
        // Input the graph:
        System.out
                .println("Enter the number of components and wires in a circuit:");
        n = in.nextInt();
        m = in.nextInt();
 
        // Initialize adjacency list structure to empty lists:
        graph = new LinkedList[n];
        for (int i = 0; i < n; i++)
            graph[i] = new LinkedList();
 
        // Add each edge twice, once for each endpoint:
        System.out
                .println("Mention the wire between components and its length:");
        for (int i = 0; i < m; i++) 
        {
            int v1 = in.nextInt();
            int v2 = in.nextInt();
            int w = in.nextInt();
            graph[v1].add(new Node(v2, w));
            graph[v2].add(new Node(v1, w));
        }
 
        // Input starting and ending vertices:
        System.out
                .println("Enter the start and end for which length is to be minimized: ");
        start = in.nextInt();
        end = in.nextInt();
 
        // FOR DEBUGGING ONLY:
        displayGraph();
 
        // Print shortest path from start to end:
        shortest();
    }
 
    public static void shortest() 
    {
        boolean[] done = new boolean[n];
        Node[] table = new Node[n];
        for (int i = 0; i < n; i++)
            table[i] = new Node(-1, Integer.MAX_VALUE); 
 
        table[start].weight = 0; 
 
        for (int count = 0; count < n; count++) 
        {
            int min = Integer.MAX_VALUE;
            int minNode = -1;
            for (int i = 0; i < n; i++)
                if (!done[i] && table[i].weight < min) 
                {
                    min = table[i].weight;
                    minNode = i;
                }
 
            done[minNode] = true;
 
            ListIterator iter = graph[minNode].listIterator();
            while (iter.hasNext()) 
            {
                Node nd = (Node) iter.next();
                int v = nd.label;
                int w = nd.weight;
 
                if (!done[v] && table[minNode].weight + w < table[v].weight) 
                {
                    table[v].weight = table[minNode].weight + w;
                    table[v].label = minNode;
                }
            }
        }
        for (int i = 0; i < n; i++) 
        {
            if (table[i].weight < Integer.MAX_VALUE) 
            {
                System.out.print("Wire from " + i + " to " + start
                        + " with length " + table[i].weight + ": ");
                int next = table[i].label;
                while (next >= 0) 
                {
                    System.out.print(next + " ");
                    next = table[next].label;
                }
                System.out.println();
            } else
                System.out.println("No wire from " + i + " to " + start);
        }
    }
 
    public static void displayGraph() 
    {
        for (int i = 0; i < n; i++) 
        {
            System.out.print(i + ": ");
            ListIterator nbrs = graph[i].listIterator(0);
            while (nbrs.hasNext()) 
            {
                Node nd = (Node) nbrs.next();
                System.out.print(nd.label + "(" + nd.weight + ") ");
            }
            System.out.println();
        }
    }
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (32, N'Generate Date Between Given Range', N'import java.util.Date;
public class Generate_Date 
{
    public static java.util.LinkedList searchBetweenDates(java.util.Date startDate, java.util.Date endDate) 
    {
        java.util.Date begin = new Date(startDate.getTime());
        java.util.LinkedList list = new java.util.LinkedList();
        list.add(new Date(begin.getTime()));
 
        while(begin.compareTo(endDate)&lt;0)
        {
            begin = new Date(begin.getTime() + 86400000);
            list.add(new Date(begin.getTime()));
        }
 
        return list;
    }

    public static void main(String[] args) throws Exception   
    {   
        java.util.Scanner input = new java.util.Scanner(System.in);
        System.out.println("Enter the Start Date: dd/mm/yyyy");
        String begin = new String();
        begin = input.nextLine();
 
        System.out.println("Enter the End Date: dd/mm/yyyy");
        String end = new String();
        end = input.nextLine();
 
        java.util.LinkedList hitList = searchBetweenDates(')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (33, N'Generate Randomized Sequence of Given Range of Numbers', N'import java.util.Random;
import java.util.Scanner;
 
public class Randomized_Sequence_Random_Numbers
{
    public static void main(String args[])
    {
        Random rand = new Random();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the starting and ending of the sequence: ");
        int start = sc.nextInt();
        int end = sc.nextInt();
 
        for(int i=0; i<15; i++)
        {
            System.out.print(rand.nextInt(end-start+1)+start + ", ");
        }
        System.out.print("...");
        sc.close();
    }
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (34, N'Generate Random Hexadecimal Byte', N'import java.util.Random;
public class Generate_Random_Hex_Bytes 
{
    public static void main(String args[])
    {
        Random random = new Random();
        int val = random.nextInt();
        String Hex = new String();
        Hex = Integer.toHexString(val);
        System.out.println("Random Hex Byte: " + Hex);
    }
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (35, N'Use rand and srand Functions', N'import java.util.Random;
import java.util.UUID;
 
public class Rand_and_Srand 
{
    public static void main(String args[])
    {
        System.out.println("The numbers using rand");
        for(int i=0; i<5; i++)
        {
            Random rand = new Random();
            System.out.println(Math.abs(rand.nextInt()));
        }
 
        System.out.println("The numbers using srand");
        for(int i=0; i<5; i++)
        {
            System.out.println(Math.abs(UUID.randomUUID().getMostSignificantBits()));
        }
    }
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (36, N'Implement Nth Root Algorithm', N'import java.util.Scanner;
/** Class NthRoot **/
public class NthRoot
{
    public double nthroot(int n, double x) 
    {
        return nthroot(n, x, .0001);
    }
    public double nthroot(int n, double x, double p) 
    {
        if(x < 0) 
        {
            System.err.println("Negative!");
            return -1;
        }
        if(x == 0) 
            return 0;
        double x1 = x;
        double x2 = x / n;  
        while (Math.abs(x1 - x2) > p) 
        {
            x1 = x2;
            x2 = ((n - 1.0) * x2 + x / Math.pow(x2, n - 1.0)) / n;
        }
        return x2;
    }
    /** Main **/
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        System.out.println("Nth Root Algorithm Test\n");
        System.out.println("Enter n and x");
        int n = scan.nextInt();
        double x = scan.nextInt();
        NthRoot nr = new NthRoot();
        double root = nr.nthroot(n, x);
        System.out.println("\nRoot = "+ root);
    }    
}')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (37, N'Inline Stream Filter', N'Inline Stream Filter $
import java.io.File; $
import java.io.FileInputStream; $

import javax.xml.stream.EventFilter; $
import javax.xml.stream.StreamFilter; $
import javax.xml.stream.XMLInputFactory; $
import javax.xml.stream.XMLStreamConstants; $
import javax.xml.stream.XMLStreamReader; $
import javax.xml.stream.events.XMLEvent; $

public class MainClass { $
  public static void main(String[] args) throws Exception { $
    XMLInputFactory inputFactory = XMLInputFactory.newInstance(); $
    XMLStreamReader reader = inputFactory.createXMLStreamReader(new FileInputStream $
(new  File(&quot;l.xml&quot;))); $
    reader = inputFactory.createFilteredReader(reader, new ElementOnlyFilter()); $
    System.out.println(reader.getEventType()); $
  } $
} $

class ElementOnlyFilter implements EventFilter, StreamFilter { $
  public boolean accept(XMLEvent event) { $
    return accept(event.getEventType()); $
  } $

  public boolean accept(XMLStreamReaderder) { $
    return accept(reader.getEventType()); $
  } $

  private boolean accept(int eventType) { $
    return eventType == XMLStreamConstants.START_ELEMENT $
        || eventType == XMLStreamConstants.END_ELEMENT; $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (38, N'Writing an XML File from a DOM Document', N'Writing an XML File from a DOM Document $
import java.io.File; $

import javax.xml.parsers.DocumentBuilderFactory; $
import javax.xml.transform.OutputKeys; $
import javax.xml.transform.Result; $
import javax.xml.transform.Source; $
import javax.xml.transform.Transformer; $
import javax.xml.transform.TransformerFactory; $
import javax.xml.transform.dom.DOMSource; $
import javax.xml.transform.stream.StreamResult; $

import org.w3c.dom.Document; $

public class Main { $
  public static void main(String[] argv) throws Exception { $
    DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance(); $
    factory.setValidating(true); $ 

    factory.setExpandEntityReferences(false); $

    Document doc = factory.newDocumentBuilder().parse(new File(&quot;filename&quot;)); $

    Transformer xformer = TransformerFactory.newInstance().newTransformer(); $

    xformer.setOutputProperty(OutputKeys.DOCTYPE_PUBLIC, &quot;publicId&quot;); $
    xformer.setOutputProperty(OutputKeys.DOCTYPE_SYSTEM, &quot;systemId&quot;); $

    Source source = new DOMSource(doc); $
    Result result = new StreamResult(new File(&quot;outfilename.xml&quot;)); $
    xformer.transform(source, result); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (39, N'Creating a Shared File Lock on a File', N'Creating a Shared File Lock on a File $
import java.io.File; $
import java.io.RandomAccessFile; $ 
import java.nio.channels.FileChannel; $
import java.nio.channels.FileLock; $

public class Main { $
  public static void main(String[] argv) throws Exception { $
    File file = new File(&quot;filename&quot;); $
    FileChannel channel = new RandomAccessFile(file, &quot;rw&quot;).getChannel(); $

    FileLock lock = channel.lock(0, Long.MAX_VALUE, true); $

    lock = channel.tryLock(0, Long.MAX_VALUE, true); $

    boolean isShared = lock.isShared(); $

    lock.release(); $

    channel.close(); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (40, N'Creating a File Lock on a File', N'Creating a File Lock on a File $
import java.io.File; $
import java.io.RandomAccessFile; $
import java.nio.channels.FileChannel; $
import java.nio.channels.FileLock; $
 
public class Main { $
  public static void main(String[] argv) throws Exception { $
    File file = new File(&quot;filename&quot;); $
    FileChannel channel = new RandomAccessFile(file, &quot;rw&quot;).getChannel(); $

    FileLock lock = channel.lock(); $

    lock = channel.tryLock(); $

    lock.release(); $

    channel.close(); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (41, N'Get File size in bytes', N'Get File size in bytes $
import java.io.File; $

public class Main { $

  public static void main(String[] args) { $
    File file = new File(&quot;C:/demo.txt&quot;); $
    long fileSize = file.length(); $

    System.out.println(fileSize + &quot; bytes&quot;); $
    System.out.println((double) fileSize / 1024 + &quot; KB&quot;); $
    System.out.println((double) fileSize / (1024 * 1024) + &quot;MB&quot;); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (42, N'Get File Size In MB', N'Get File Size In MB $
import java.io.File; $

public class Util{ $
  public static float getFileSizeInMB(String fileName) { $
    float ret = getFileSizeInBytes(fileName); $
    ret = ret / (float) (1024 * 1024); $
    return ret; $
  } $
  public static long getFileSizeInBytes(String fileName) { $
    long ret = 0; $
    File f = new File(fileName); $
    if (f.isFile()) { $
      return f.length(); $
    } else if (f.isDirectory()) { $
      File[] contents = f.listFiles(); $
      for (int i = 0; i &lt; contents.length; i++) { $
        if (contents[i].isFile()) { $
          ret += contents[i].length(); $
        } else if (contents[i].isDirectory()) $
          ret += getFileSizeInBytes(contents[i].getPath()); $
      } $
    } $
    return ret; $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (43, N'Display Bytes Size', N'Display Bytes Size $
public final class StringUtils {$

    private static final float KBYTES = 1024f;$
    private static final float MBYTES = KBYTES * KBYTES;$
    private static final float GBYTES = MBYTES * KBYTES;$

    public static String displayBytesSize(final long n) {$
        final String size;$
        final long abs = Math.abs(n);$
        if(abs &lt; KBYTES) {$
            size = n + &quot; bytes&quot;;$
        } else if(abs &lt; MBYTES) {$
            size = String.format(&quot;%.2f&quot;, n / KBYTES) + &quot; kB&quot;;$
        } else if(abs &lt; GBYTES) {$
            size = String.format(&quot;%.2f&quot;, n / MBYTES) + &quot; MB&quot;;$
        } else {$
            return String.format(&quot;%.2f&quot;, n / GBYTES) + &quot; GB&quot;;$
        }$
        return size;$
    }$
}$')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (44, N'Get file size', N'Get file size $
import java.io.File; $

public class Main { $

  public static long getFileSize(String filename) { $
    File file = new File(filename); $
 
    if (!file.exists() || !file.isFile()) { $
      System.out.println(&quot;File doesn\ t exist&quot;); $
      return -1; $
    } $
    return file.length(); $
  } $

  public static void main(String[] args) { $

    long size = getFileSize(&quot;c:/my.txt&quot;); $
    System.out.println(&quot;Filesize in bytes: &quot; + size); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (45, N'Construct file path', N'Construct file path $
import java.io.File; $

public class Main { $

  public static void main(String[] args) { $
    String filePath = File.separator + &quot;Java&quot; + File.separator + &quot;IO&quot;; $
    File file = new File(filePath); $
    System.out.println(file.getPath()); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (46, N'Create a temporary file', N'Create a temporary file $

import java.io.File;  $

public class Main{ $
  public static void main(String[] args) throws Exception{ $
    File f = File.createTempFile(&quot;temp_&quot;, null); $
     
    System.out.println(f.getAbsolutePath()); $
    
    f.deleteOnExit(); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (47, N'Create a directory', N'Create a directory $
import java.io.File; $

public class Main { $
  public static void main(String[] args) { $

    File directory = new File(&quot;C:/temp/temp1/temp2/temp3&quot;); $
    if (directory.mkdir()) { $
      System.out.println(&quot;Success  mkdir&quot;); $
    } else { $
      if (directory.mkdirs()) { $
        System.out.println(&quot;Success mkdirs&quot;); $
      } else { $
        System.out.println(&quot;Failed&quot;); $
      } $
    } $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (48, N'Create temporary file with specified extension suffix', N'Create temporary file with specified extension suffix $

import java.io.File; $

public class Main { $

  public static void main(String[] args) throws Exception { $
    File file1 = null; $
    File file2 = null; $
    file1 = File.createTempFile(&quot;JavaTemp&quot;, null); $
    file2 = File.createTempFile(&quot;JavaTemp&quot;, &quot;.java&quot;); $

    System.out.println(file1.getPath()); $
    System.out.println(file2.getPath()); $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (49, N'Create temporary file in specified directory', N'Create temporary file in specified directory $
import java.io.File; $

public class Main { $
  public static void main(String[] args) throws Exception { $
    File file = null; $
    File dir = new File(&quot;C:/&quot;); $
    file = File.createTempFile(&quot;JavaTemp&quot;, &quot;.javatemp&quot;, dir); $

    System.out.println(file.getPath()); $

  } $

} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (50, N'Create file', N'Create file $

import java.io.File; $
import java.io.IOException; $

public class Main { $
  public static void main(String[] args) { $
    try { $
      File file = new File(&quot;myfile.txt&quot;); $
      if (file.createNewFile()) $
        System.out.println(&quot;Success!&quot;); $
      else $
        System.out.println(&quot;Error, file already exists.&quot;); $
    } catch (IOException ioe) { $
      ioe.printStackTrace(); $
    } $
  } $
} $')
INSERT [dbo].[JavaCode] ([JavaId], [Content_java], [Sourcecode_java]) VALUES (51, N'Change last modified time of a file or directory', N'Change last modified time of a file or directory $
import java.io.File; $
import java.util.Date; $

public class Main { $

  public static void main(String[] args) throws Exception { $
    File fileToChange = new File(&quot;C:/myfile.txt&quot;); $

    Date filetime = new Date(fileToChange.lastModified()); $
    System.out.println(filetime.toString()); $

    System.out.println(fileToChange.setLastModified(System.currentTimeMillis())); $

    filetime = new Date(fileToChange.lastModified()); $
    System.out.println(filetime.toString()); $
 
  } $
} $')
SET IDENTITY_INSERT [dbo].[JavaCode] OFF
/****** Object:  Table [dbo].[CSharp]    Script Date: 03/12/2015 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSharp](
	[CSharpId] [int] IDENTITY(1,1) NOT NULL,
	[Content_c] [nvarchar](100) NOT NULL,
	[Sourcecode_c] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CSharp] PRIMARY KEY CLUSTERED 
(
	[CSharpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CSharp] ON
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (1, N'Caluculate the power exponent value', N'Caluculate the power exponent value$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
namespace Inheritance$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            Teacher d = new Teacher();$
            d.Teach();$
            Student s = new Student();$
            s.Learn();$
            s.Teach();$
            Console.ReadKey();$
        }$
        class Teacher$
        {$
            public void Teach()$
            {$
                Console.WriteLine(&amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;Teach&amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;);$
            }$
        }$
        class Student : Teacher$
        {$
            public void Learn()$
            {$
                Console.WriteLine(&amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;Learn&amp;amp;amp;amp;amp;amp;amp;amp;amp;quot;);$
            }$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (2, N'Create a file', N'Create a file$
using System;$
using System.IO;$
using System.Text;$
class Test$
{$
public static void Main()$
    {$
        string textpath = @&amp;amp;amp;quot;c:\sri\test.txt&amp;amp;amp;quot;;$
        using (FileStream fs = File.Create(textpath))$
        {$
            Byte[] info = new UTF8Encoding(true).GetBytes(&amp;amp;amp;quot;File is Created&amp;amp;amp;quot;);$
            fs.Write(info, 0, info.Length);$
        }$
        using (StreamReader sr = File.OpenText(textpath))$
        {$
            string s = &amp;amp;amp;quot;&amp;amp;amp;quot;;$
            while ((s = sr.ReadLine()) != null)$
            {$
                Console.WriteLine(s);$
            }$
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (3, N'Read contents of a file', N'Read contents of a file$
using System;$
using System.IO;$
class FileRead$
{$
    public void readdata()$
    {$
        FileStream fs = new FileStream(&amp;amp;amp;amp;quot;Myfile.txt&amp;amp;amp;amp;quot;, FileMode.Open,   FileAccess.Read);$
        StreamReader sr = new StreamReader(fs);//Position the File Pointer at the Beginning of the File
        sr.BaseStream.Seek(0, SeekOrigin.Begin);//Read till the End of the File is Encountered
        string str = sr.ReadLine();$
        while (str != null)$
        {$
            Console.WriteLine(&amp;amp;amp;amp;quot;{0}&amp;amp;amp;amp;quot;, str);
            str = sr.ReadLine();$
        }$
   //Close the Writer and File$
        sr.Close();$
        fs.Close();$
    }$
    public static void Main(String[] args)$
    {$
        FileRead fr = new FileRead();$
        fr.readdata();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (4, N'View the Information of the File', N'View the Information of the File$
using System;$
using System.IO;$
class Program$
{$
    static void Main()$
    {$
        FileInfo info = new FileInfo(&amp;quot;C:\\sri\\srip.txt&amp;quot;);$
        FileAttributes attributes = info.Attributes;$
        Console.WriteLine(&amp;quot;Nature(Attribute) of the File : {0}&amp;quot;,attributes);$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (5, N'Search directories and list files', N'Search directories and list files$
using System;$
using System.IO;$
class Program$
{$
    static void Main()$
    {$
        string[] Dirfile = Directory.GetFiles(&amp;quot;C:\\sri\\&amp;quot;,&amp;quot;*.*&amp;quot;,SearchOption.AllDirectories);$
        foreach (string file in Dirfile)$
        {$
            Console.WriteLine(file);$
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (6, N'Read lines from a file until the end of file is reached', N'Read lines from a file until the end of file is reached$
using System;$
using System.IO;$
class Test$
{$
    public static void Main()$
    {$
        string path = @&amp;amp;amp;quot;c:\sri\srip.txt&amp;amp;amp;quot;;$
        try$
        {$
            if (File.Exists(path))$
            {$
                File.Delete(path);$
            }$
            using (StreamWriter sw = new StreamWriter(path))$
            {$
                sw.WriteLine(&amp;amp;amp;quot;This&amp;amp;amp;quot;);$
                sw.WriteLine(&amp;amp;amp;quot;text is&amp;amp;amp;quot;);$
                sw.WriteLine(&amp;amp;amp;quot;to test&amp;amp;amp;quot;);$
                sw.WriteLine(&amp;amp;amp;quot;Reading&amp;amp;amp;quot;);$
            }$
 
            using (StreamReader sr = new StreamReader(path))$
            {$
                while (sr.Peek() &amp;amp;amp;gt;= 0)$
                {$
                    Console.WriteLine(sr.ReadLine());$
                }$
            }$
        }$
        catch (Exception e)$
        {$
            Console.WriteLine(&amp;amp;amp;quot;The process failed: {0}&amp;amp;amp;quot;, e.ToString());$
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (7, N'Find minimum and maximum of numbers', N'Find minimum and maximum of numbers$
using System;$
using System.Linq;$
class Program$
{$
    static void Main()$
    {$
        int[] array1 = { 10, -10, -20, 0,15,20,30 };$
        Console.WriteLine(&amp;amp;quot;Maximum Element : &amp;amp;quot; +array1.Max());$
        Console.WriteLine(&amp;amp;quot;Minimum Element : &amp;amp;quot; +array1.Min());$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (8, N'Establish client server relationship', N'Establish client server relationship$
//SERVER PROGRAM$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
using System.Net;$
using System.Net.Sockets;$
namespace Server336$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            try$
            {$
                IPAddress ipAd = IPAddress.Parse(&amp;amp;amp;quot;10.18.227.162&amp;amp;amp;quot;);$
                TcpListener myList = new TcpListener(ipAd, 8001);$
                myList.Start();$
                Console.WriteLine(&amp;amp;amp;quot;The server is running at port 8001...&amp;amp;amp;quot;);$
                Console.WriteLine(&amp;amp;amp;quot;The local End point is  :&amp;amp;amp;quot; + myList.LocalEndpoint);$
                Console.WriteLine(&amp;amp;amp;quot;Waiting for a connection.....&amp;amp;amp;quot;);
                Socket s = myList.AcceptSocket();$
                Console.WriteLine(&amp;amp;amp;quot;Connection accepted from &amp;amp;amp;quot; + s.RemoteEndPoint);$
                byte[] b = new byte[100];$
                int k = s.Receive(b);$
                Console.WriteLine(&amp;amp;amp;quot;Recieved...&amp;amp;amp;quot;);$
                for (int i = 0; i &amp;amp;amp;lt; k; i++)$
                {$
                    Console.Write(Convert.ToChar(b[i]));$
                }$
                ASCIIEncoding asen = new ASCIIEncoding();$
                s.Send(asen.GetBytes(&amp;amp;amp;quot;The string was recieved by the server.&amp;amp;amp;quot;));$
                Console.WriteLine(&amp;amp;amp;quot;\nSent Acknowledgement&amp;amp;amp;quot;);
                s.Close();$
                myList.Stop();$
            }$
            catch (Exception e)$
            {
                Console.WriteLine(&amp;amp;amp;quot;Error..... &amp;amp;amp;quot; + e.StackTrace);$
            }$
            Console.ReadLine();$
        }$
    }$
}$
 
//CLIENT PROGRAM$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
using System.IO;$
using System.Net;$
using System.Text;$
using System.Net.Sockets;$
 
namespace Client336$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            try$
            {$
                TcpClient tcpclnt = new TcpClient();$
                Console.WriteLine(&amp;amp;amp;quot;Connecting.....&amp;amp;amp;quot;);$
                tcpclnt.Connect(&amp;amp;amp;quot;10.18.227.162&amp;amp;amp;quot;, 8001);$                
                Console.WriteLine(&amp;amp;amp;quot;Connected&amp;amp;amp;quot;);$
                Console.Write(&amp;amp;amp;quot;Enter the string to be transmitted : &amp;amp;amp;quot;);$
                String str = Console.ReadLine();$
                Stream stm = tcpclnt.GetStream();$
                ASCIIEncoding asen = new ASCIIEncoding();$
                byte[] ba = asen.GetBytes(str);$
                Console.WriteLine(&amp;amp;amp;quot;Transmitting.....&amp;amp;amp;quot;);$
                stm.Write(ba, 0, ba.Length);$
                byte[] bb = new byte[100];$
                int k = stm.Read(bb, 0, 100);$
                for (int i = 0; i &amp;amp;amp;lt; k; i++)$
                    Console.Write(Convert.ToChar(bb[i]));$
                tcpclnt.Close();$
                Console.Read();$
            }$
            catch (Exception e)$
            {$
                Console.WriteLine(&amp;amp;amp;quot;Error..... &amp;amp;amp;quot; + e.StackTrace);$
            }$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (9, N'Display the IP Address of the Machine', N'Display the IP Address of the Machine$
using System;$
using System.Net;$
namespace Program$
{$
    class Program$
    {$
        static void Main()$
        {$
            String strHostName = string.Empty; //getting the Host Name.$
            strHostName = Dns.GetHostName();$
            Console.WriteLine(&amp;quot;Local Machine&amp;39;s Host Name: &amp;quot; + strHostName);$
            IPHostEntry ipEntry = Dns.GetHostEntry(strHostName);// Using Host Name,IP address is obtained.$
            IPAddress[] addr = ipEntry.AddressList;$
 
            for (int i = 0; i &amp;amp;lt; addr.Length; i++)$
            {$
                Console.WriteLine(&amp;amp;quot;IP Address {1} : &amp;amp;quot;,addr[i].ToString());$
            }$
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (10, N'List disk drives', N'List disk drives$
using System;$
using System.IO;$
class Test$
{$
    public static void Main()$
    {$
        DriveInfo[] driverslist = DriveInfo.GetDrives();$
        foreach (DriveInfo d in driverslist)$
        {$
            Console.WriteLine(&amp;amp;amp;quot;Drive {0}&amp;amp;amp;quot;, d.Name);$
            Console.WriteLine(&amp;amp;amp;amp;quot;  File type: {0}&amp;amp;amp;amp;quot;, d.DriveType);$
            if (d.IsReady == true)$
            {$
                Console.WriteLine(&amp;amp;amp;amp;quot; Total size of drive:{0, 15} bytes &amp;amp;amp;amp;quot;,d.TotalSize);$
                Console.Read();$
            }$
        }$
    }$
}')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (11, N'Generate fibonacci series', N'Generate fibonacci series$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace fibonaci$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int i, count, f1 = 0, f2 = 1, f3 = 0;$
            Console.Write(&amp;quot;Enter the Limit : &amp;quot;);$
            count = int.Parse(Console.ReadLine());$
            Console.WriteLine(f1);$
            Console.WriteLine(f2);$
            for (i = 0; i &amp;lt;= count; i++)$
            {$
                f3 = f1 + f2;$
                Console.WriteLine(f3);$
                f1 = f2;$
                f2 = f3;$
            }$
            Console.ReadLine();$
 
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (12, N'Generate the factorial of  given number', N'Generate the factorial of  given number$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace factorial$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int i, number, fact;$
            Console.WriteLine(&amp;quot;Enter the Number&amp;quot;);$
            number = int.Parse(Console.ReadLine());$
            fact = number;$
            for (i = number - 1; i &amp;gt;= 1; i--)$
            {$
                fact = fact * i;$
            }$
            Console.WriteLine(&amp;quot;\nFactorial of Given Number is: &amp;quot;+fact);$
            Console.ReadLine();$
 
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (13, N'Generate the sum of N numbers', N'Generate the sum of N numbers$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace program$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int i, sum = 0,n;$
            Console.Write(&amp;quot;Enter the Nth Number : &amp;quot;);$
            n = int.Parse(Console.ReadLine());$
            for (i = 0; i &amp;lt;= n; i++)$
            {$
                sum = sum + i;$
            }$
            Console.WriteLine(&amp;quot;\nSum of N Numbers : &amp;quot; + sum);$
            Console.ReadLine();$
 
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (14, N'Calculate simple interest', N'Calculate simple interest$
using System;$
namespace Interest$
{$
 class Program$
 {$
 static void Main(string[] args)$
 {$
     int year;$
     double princamt,rate, interest, total_amt;$
     Console.Write(&amp;quot;Enter The Loan Amount : &amp;quot;);$
     princamt = Convert.ToDouble(Console.ReadLine());$
     Console.Write(&amp;quot;Enter The Number of Years : &amp;quot;);$
     year = Convert.ToInt16(Console.ReadLine());$
     Console.Write(&amp;quot;Enter the Rate Of Interest : &amp;quot;);$
     rate = Convert.ToDouble(Console.ReadLine());$
     interest = princamt * year * rate / 100;$
     total_amt = princamt + interest;$
     Console.WriteLine(&amp;quot;Total Amount : {0}&amp;quot;, total_amt);$
     Console.ReadLine();$
    }$
 }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (15, N'Calculate period duration', N'Calculate period duration$
using System;$
class CompareDates$
{$
 
    public static void Main()$
    {$
        DateTime today = DateTime.Now;$
        DateTime yesterday = today - new TimeSpan(1, 0, 0, 0);$
        DateTime tomorrow = today + new TimeSpan(1, 0, 0, 0);$
        Console.WriteLine(&amp;quot;Yesterday was     {0}&amp;quot;, yesterday);$
        Console.WriteLine(&amp;quot;Today     is      {0}&amp;quot;, today);$
        Console.WriteLine(&amp;quot;Tomorrow  will be {0}&amp;quot;, tomorrow);$
        Console.WriteLine(&amp;quot;\nIs yesterday less than today?   {0}.&amp;quot;,
           yesterday &amp;lt; today);$
        Console.WriteLine(&amp;quot;Is today the same as tomorrow ? {0}.&amp;quot;,
           today == tomorrow);$
 
        TimeSpan totalTimespan = new TimeSpan(3, 5, 24, 17) +
                                 new TimeSpan(1, 18, 35, 43);$
        Console.WriteLine(
           &amp;quot;\nThe length of the period is {0} days {1} hours&amp;quot; +
           &amp;quot; {2} minutes {3} seconds.&amp;quot;,
           totalTimespan.Days, totalTimespan.Hours,
           totalTimespan.Minutes, totalTimespan.Seconds);$
        Console.ReadLine();$
    }$
 
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (16, N'Find square root of a given number', N'Find square root of a given number$
using System;$
using System.Text;$
using System.Collections;$
using System.Data;$
namespace Cons$
{$
    public class squareroot$
    {$
        public static void Main()$
        {$
                Console.WriteLine(&amp;quot;Enter a Number : &amp;quot;);$
                int Number = Convert.ToInt16(Console.ReadLine());$
                double SqrtNumber = Math.Sqrt(Number);$
                Console.WriteLine(&amp;quot;Square root of {0} is: {1}&amp;quot;, Number, SqrtNumber);$
                Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (17, N'Calculate area and volume of a cone', N'Calculate area and volume of a cone$
using System;$
using System.IO;$
class program$
{$
    public static void Main()$
    {$
        double r, h, surface_area, volume;$
        double PI = 3.14;$
        Console.WriteLine(&amp;quot;Enter the Radius and Height of a cone : &amp;quot;);$
        r = Convert.ToDouble(Console.ReadLine());$
        h = Convert.ToDouble(Console.ReadLine());$
        surface_area = PI * r * (r + Math.Sqrt(r * r + h * h));$
        volume = (1.0 / 3) * PI * r * r * h;$
        Console.WriteLine(&amp;quot;Surface Area of cone is : {0} &amp;quot;, surface_area);$
        Console.WriteLine(&amp;quot;Volume of Cone is : {0}&amp;quot;, volume);$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (18, N'Check the edge values in power function', N'Check the edge values in power function$
using System;$
class Program$
{$
    static void Main()$
    {$
        double value1 = Math.Pow(double.MinValue, double.MaxValue);$
        double value2 = Math.Pow(double.MinValue, 0);$
        double value3 = Math.Pow(double.NaN, 2);$
        double value4 = Math.Pow(double.PositiveInfinity, 2);$
        double value5 = Math.Pow(double.NegativeInfinity, 2);$
        Console.WriteLine(&amp;quot;Result : {0}&amp;quot;, value1);$
        Console.WriteLine(&amp;quot;Result : {0}&amp;quot;, value2);$
        Console.WriteLine(&amp;quot;Result : {0}&amp;quot;, value3);$
        Console.WriteLine(&amp;quot;Result : {0}&amp;quot;, value4);$
        Console.WriteLine(&amp;quot;Result : {0}&amp;quot;, value5);$
        Console.ReadLine();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (19, N'Calculate compound interest', N'Calculate compound interest$
using System;$
namespace compund$
{$
    class compound$
    {$
        static void Main(string[] args)$
        {$
            double Total = 0, interestRate, years, annualCompound, Amount;$
            Console.Write(&amp;quot;Enter the Initial Amount : &amp;quot;);$
            Amount = Convert.ToDouble(Console.ReadLine());$
            Console.Write(&amp;quot;Enter the Rate of Interest : &amp;quot;);$
            interestRate = Convert.ToDouble(Console.ReadLine()) / 100;$
            Console.Write(&amp;quot;Enter the Number of Years : &amp;quot;);$
            years = Convert.ToDouble(Console.ReadLine());$
            Console.Write(&amp;quot;Number of Times the Interest will be Compounded : &amp;quot;);$
            annualCompound = Convert.ToDouble(Console.ReadLine());$
            for (int t = 1; t &amp;lt; years + 1; t++)$
            {$
                Total = Amount * Math.Pow((1 + interestRate / annualCompound), (annualCompound * t));$
                Console.Write(&amp;quot;Your Total for Year {0} &amp;quot;$
                            + &amp;quot;is {1:F0}. \n&amp;quot;, t, Total);$
 
            }$
 
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (21, N'Calculate the distance travelled by reading speed and time', N'Calculate the distance travelled by reading speed and time$
using System;$
class program$
{$
    public static void Main()$
    {$
        int speed, distance, time;$
        Console.WriteLine(&amp;amp;quot;Enter the Speed(km/hr) : &amp;amp;quot;);$
        speed = Convert.ToInt32(Console.ReadLine());$
        Console.WriteLine(&amp;amp;quot;Enter the Time(hrs) : &amp;amp;quot;);$
        time = Convert.ToInt32(Console.ReadLine());$
        distance = speed * time;$
        Console.WriteLine(&amp;amp;quot;Distance Travelled (kms) : &amp;amp;quot; + distance);$
        Console.ReadLine();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (22, N'Find the sum of two binary numbers', N'Find the sum of two binary numbers$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
namespace ConsoleApplication$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int b1, b2;$
            int i = 0, rem = 0;$
            int[] sum = new int[20];$
            Console.WriteLine(&amp;quot;Enter the first binary number: &amp;quot;);$
            b1 = int.Parse(Console.ReadLine());$
            Console.WriteLine(&amp;quot;Enter the second binary number: &amp;quot;);$
            b2 = int.Parse(Console.ReadLine());$
            while (b1 != 0 || b2 != 0)$
            {$
                sum[i++] = (b1 % 10 + b2 % 10 + rem) % 2;$
                rem = (b1 % 10 + b2 % 10 + rem) / 2;$
                b1 = b1 / 10;$
                b2 = b2 / 10;$
            }$
            if (rem != 0)$
                sum[i++] = rem;$
            --i;$
            Console.WriteLine(&amp;quot;Sum of two binary numbers: &amp;quot;);$
            while (i &amp;gt;= 0)$
                Console.Write(&amp;quot;{0}&amp;quot;, sum[i--]);$
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (23, N'Add two dates', N'Add two dates$
using System;$
namespace DateAndTime$
{$
    class Program$
    {$
        static int Main()$
        {$
            DateTime SDate = new DateTime(2010, 10, 7);$
            Console.WriteLine(&amp;quot;Starting Date : {0}&amp;quot;, SDate);$
            DateTime EDate = startDate.AddDays(10);$
            Console.WriteLine(&amp;quot;Ending Date   : {0}\n&amp;quot;, EDate);$
            Console.ReadLine();$
            return 0;$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (24, N'Perform matrix addition', N'Perform matrix addition$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace ConsoleApplication8$
{$
    class Program$
    {$
        public static void Main(string[] args)$
        {$
            int m, n,i,j;$
            Console.Write(&amp;quot;Enter Number Of Rows And Columns Of Matrices A and B : &amp;quot;);$
            m = Convert.ToInt16(Console.ReadLine());$
            n = Convert.ToInt16(Console.ReadLine());$
            int[,] A = new int[10, 10];$
            Console.Write(&amp;quot;\nEnter The First Matrix : &amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    A[i, j] = Convert.ToInt16(Console.ReadLine());$
                }$
            }$
 
            int[,] B = new int[10, 10];$
            Console.Write(&amp;quot;\nEnter The Second Matrix:&amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    B[i, j] = Convert.ToInt16(Console.ReadLine());$
                }$
            }$
            Console.Clear();$
            Console.WriteLine(&amp;quot;\nMatrix A : &amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    Console.Write(A[i, j] + &amp;quot;\t&amp;quot;);$
 
                }$
                Console.WriteLine();$
            }$
            Console.WriteLine(&amp;quot;\nMatrix B: &amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    Console.Write(B[i, j] + &amp;quot;\t&amp;quot;);$
 
                }$
                Console.WriteLine();$
            }$
            int[,] C = new int[10, 10];$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    C[i, j] = A[i, j] + B[i, j];$
                }$
            }$
            Console.Write(&amp;quot;\nSum Matrix :&amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    Console.Write(C[i, j] + &amp;quot;\t&amp;quot;);$
 
                }$
                Console.WriteLine();$
            }$
            Console.Read();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (25, N'Generate the transpose of a given matrix', N'Generate the transpose of a given matrix$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace Program$
{$
    class Program$
    {$
        public static void Main(string[] args)$
        {$
            int m, n, i, j;$
            Console.Write(&amp;quot;Enter the Order of the Matrix : &amp;quot;);$
            m = Convert.ToInt16(Console.ReadLine());$
            n = Convert.ToInt16(Console.ReadLine());$
            int[,] A = new int[10, 10];$
            Console.Write(&amp;quot;\nEnter The Matrix Elements : &amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    A[i, j] = Convert.ToInt16(Console.ReadLine());$
                }$
            }$
            Console.Clear();$
            Console.WriteLine(&amp;quot;\nMatrix A : &amp;quot;);$
            for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    Console.Write(A[i, j] + &amp;quot;\t&amp;quot;);$
 
                }$
                Console.WriteLine();$
            }$
            Console.WriteLine(&amp;quot;Transpose Matrix : &amp;quot;);$
 
           for (i = 0; i &amp;lt; m; i++)$
            {$
                for (j = 0; j &amp;lt; n; j++)$
                {$
                    Console.Write(A[j, i] + &amp;quot;\t&amp;quot;);$
 
                }$
                Console.WriteLine();$
            }$
            Console.Read();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (26, N'Display the ATM transaction', N'Display the ATM transaction$
using System;$
class program$
{$
    public static void Main()$
    {$
 
        int amount = 1000, deposit, withdraw;$
        int choice, pin = 0, x = 0;$
        Console.WriteLine(&amp;quot;Enter Your Pin Number &amp;quot;);$
        pin = int.Parse(Console.ReadLine());$
        while (true)$
        {$
            Console.WriteLine(&amp;quot;********Welcome to ATM Service**************\n&amp;quot;);$
            Console.WriteLine(&amp;quot;1. Check Balance\n&amp;quot;);$
            Console.WriteLine(&amp;quot;2. Withdraw Cash\n&amp;quot;);$
            Console.WriteLine(&amp;quot;3. Deposit Cash\n&amp;quot;);$
            Console.WriteLine(&amp;quot;4. Quit\n&amp;quot;);$
            Console.WriteLine(&amp;quot;*********************************************\n\n&amp;quot;);$
            Console.WriteLine(&amp;quot;Enter your choice: &amp;quot;);$
            choice = int.Parse(Console.ReadLine());$
            switch (choice)$
            {$
            case 1:$
                Console.WriteLine(&amp;quot;\n YOUR BALANCE IN Rs : {0} &amp;quot;, amount);$
                break;$
            case 2:$
                Console.WriteLine(&amp;quot;\n ENTER THE AMOUNT TO WITHDRAW: &amp;quot;);$
                withdraw = int.Parse(Console.ReadLine());$
                if (withdraw % 100 != 0)$
                {$
                    Console.WriteLine(&amp;quot;\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100&amp;quot;);$
                }$
                else if (withdraw &amp;gt; (amount - 500))$
                {$
                    Console.WriteLine(&amp;quot;\n INSUFFICENT BALANCE&amp;quot;);$
                }$
                else$
                {$
                    amount = amount - withdraw;$
                    Console.WriteLine(&amp;quot;\n\n PLEASE COLLECT CASH&amp;quot;);$
                    Console.WriteLine(&amp;quot;\n YOUR CURRENT BALANCE IS {0}&amp;quot;, amount);$
                }$
                break;$
            case 3:$
                Console.WriteLine(&amp;quot;\n ENTER THE AMOUNT TO DEPOSIT&amp;quot;);$
                deposit = int.Parse(Console.ReadLine());$
                amount = amount + deposit;$
                Console.WriteLine(&amp;quot;YOUR BALANCE IS {0}&amp;quot;, amount);$
                break;$
            case 4:$
                Console.WriteLine(&amp;quot;\n THANK U USING ATM&amp;quot;);$
            break;$
            }$
        }$
        Console.WriteLine(&amp;quot;\n\n THANKS FOR USING OUT ATM SERVICE&amp;quot;);$
    }$
 }$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (27, N'Generate random numbers', N'Generate random numbers$
using System;$
class Program$
{$
    static void Main()$
    {$
        Console.WriteLine(&amp;quot;Some Random Numbers that are generated are : &amp;quot;);$
        for (int i = 1; i &amp;lt; 10; i++)$
        {$
            Randfunc();$
        }$
    }$
    static Random r = new Random();$
    static void Randfunc()$
    {$
        int n = r.Next();$
        Console.WriteLine(n);$
        Console.ReadLine();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (28, N'Calculate acceleration', N'Calculate acceleration$
using System;$
class program$
{$
    static void Main(string[] args)$
    {$
        int v, t, acc;$
        Console.WriteLine(&amp;quot;Enter the Velocity : &amp;quot;);$
        v = int.Parse(Console.ReadLine());$
        Console.WriteLine(&amp;quot;Enter the Time : &amp;quot;);$
        t = int.Parse(Console.ReadLine());$
        acc = v / t;$
        Console.WriteLine(&amp;quot;Acceleration : {0}&amp;quot;, acc);$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (30, N'Display squarefeet of a house', N'Display squarefeet of a house$
using System;$
class pgm$
{$
    public static void Main()$
    {$
        int length, width, area;$
        Console.Write (&amp;quot;Enter length of room in feet: &amp;quot;);$
        length = Convert.ToInt32 (Console.ReadLine());$
        Console.Write ( &amp;quot;Enter width of room in feet:&amp;quot;);$
        width = Convert.ToInt32(Console.ReadLine());$
        area = length * width;$
        Console.WriteLine (&amp;quot;Floor is &amp;quot; + area +  &amp;quot; square feet.&amp;quot;);$
        Console.ReadLine();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (31, N'Reverse a string with predefined function', N'Reverse a string with predefined function$
using System;$
class linSearch$
{$
    public static void Main()$
    {$
        Console.WriteLine(&amp;quot;Enter Number of Elements you Want to Hold in the Array ? &amp;quot;);$
        string s = Console.ReadLine();$
        int x = Int32.Parse(s);$
        int[] a = new int[x];$
        Console.WriteLine(&amp;quot;\n Enter Array Elements : &amp;quot;);$
        for (int i = 0; i &amp;lt; x; i++)$
        {$
            string s1 = Console.ReadLine();$
            a[i] = Int32.Parse(s1);$
        }$
 
        Array.Reverse(a);$
        Console.WriteLine(&amp;quot;Reversed Array : &amp;quot;);$
        for (int i = 0; i &amp;lt; x; i++)$
        {$
            Console.WriteLine(&amp;quot;Element {0} is {1}&amp;quot;, i + 1, a[i]);$
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (32, N'Sort a string using predefined function', N'Sort a string using predefined function$
using System;$
class linSearch$
{$
    public static void Main()$
    {$
        Console.WriteLine(&amp;quot;Enter Number of Elements you Want to Hold in the Array ? &amp;quot;);$
        string s = Console.ReadLine();$
        int x = Int32.Parse(s);$
        int[] a = new int[x];$
        Console.WriteLine(&amp;quot;Enter Array Elements :&amp;quot;);$
        for (int i = 0; i &amp;lt; x; i++)$
        {$
            string s1 = Console.ReadLine();$
            a[i] = Int32.Parse(s1);$
        }$
        Array.Sort(a);$
        Console.WriteLine(&amp;quot;Sorted Array : &amp;quot;);$
        for (int i = 0; i &amp;lt; x; i++)$
        {$
            Console.WriteLine(&amp;quot;{0}&amp;quot;,a[i]);$
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (33, N'Find sum of digits of a number using recursion', N'Find sum of digits of a number using recursion$
using System;$
class program$
{$
    public static void Main()$
{$
    int num, result;$
    pro pg = new pro();$
    Console.WriteLine(&amp;amp;quot;Enter the Number : &amp;amp;quot;);$
    num=int.Parse(Console.ReadLine());$
    result =pg.sum(num);$
    Console.WriteLine(&amp;amp;quot;Sum of Digits in {0} is {1}&amp;amp;quot;, num, result);$
    Console.ReadLine();$
   }$
}$
class pro$
{$
    public int sum(int num)$
    {$
        if (num != 0)$
        {$
            return (num % 10 + sum(num / 10));$
        }$
        else$
        {$
            return 0;$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (34, N'Create anonymous method', N'Create anonymous method$
using System;$
delegate void Print(string s);$
class TestClass$
{$
    static void Main()$
    {$
        Print obj = delegate(string j)$
        {$
            System.Console.WriteLine(j);$
        };$
        obj(&amp;quot;Delegate Using the Anonymous Method&amp;quot;);$
        obj = new Print(TestClass.named);$
        obj(&amp;quot;Delegate Using the Named Method&amp;quot;);$
        Console.Read();$
    } $
    static void named(string k)$
    {$
        System.Console.WriteLine(k);$
    }$
 
}')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (35, N'Implement Static Method', N'Implement Static Method$
using System;$
class Program$
{$
    static void stamethod()$
    {$
        Console.WriteLine(&quot;Static Method&quot;);$
    }$
    void MethodB()$
    {$
        Console.WriteLine(&quot;Instance Method&quot;);$
    }$
    static char stamethod2()$
    {$
        Console.WriteLine(&quot;Static Method&quot;);$
        return &39;C&39;;$
    }$
    static void Main()$
    {$
        Program.stamethod();$
        Console.WriteLine(Program.stamethod2());$
        Program programInstance = new Program();$
        programInstance.MethodB();$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (36, N'Implement namespaces', N'Implement namespaces$
using System;$
namespace Sanfoundry.Csharp.Codes$
{$
    class TestClass$
    {$
        public TestClass()$
        {$
            Console.WriteLine(&amp;quot;Class to Demonstrate Namespace&amp;quot;);$
        }$
    }$
}$
class MyClient$
{$
    public static void Main()$
    {$
        Sanfoundry.Csharp.Codes.TestClass mc = new Sanfoundry.Csharp.Codes.TestClass();$
        Console.ReadLine();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (37, N'Perform binary to decimal conversion', N'Perform binary to decimal conversion$
using System;$
using System.Collections.Generic;$
using System.Text;$
 
namespace Program$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int num, binary_val, decimal_val = 0, base_val = 1, rem;$
            Console.Write(&amp;quot;Enter a Binary Number(1s and 0s) : &amp;quot;);$
            num = int.Parse(Console.ReadLine()); /* maximum five digits */$
            binary_val = num;$
            while (num &amp;gt; 0)$
            {$
                rem = num % 10;$
                decimal_val = decimal_val + rem * base_val;$
                num = num / 10 ;$
                base_val = base_val * 2;$
            }$
            Console.Write(&amp;quot;The Binary Number is : &amp;quot;+binary_val);$
            Console.Write(&amp;quot;\nIts Decimal Equivalent is : &amp;quot;+decimal_val);$
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (38, N'Perform Celsius to Fahrenheit Conversion', N'Perform Celsius to Fahrenheit Conversion$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace program$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            int celsius, faren;$
            Console.WriteLine(&quot;Enter the Temperature in Celsius(&176;C) : &quot;);$
            celsius = int.Parse(Console.ReadLine());$
            faren = (celsius * 9) / 5 + 32;$
            Console.WriteLine(&quot;0Temperature in Fahrenheit is(&176;F) : &quot; + faren);$
            Console.ReadLine();$
 
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (39, N'Create a gray code', N'Create a gray code$
using System;$
public class Gray$
{$
    public static ulong grayEncode(ulong n)$
    {$
        return n ^ (n &amp;gt;&amp;gt; 1);$
    }$
 
    public static ulong grayDecode(ulong n)$
    {$
        ulong i = 1 &amp;lt;&amp;lt; 8 * 64 - 2; //long is 64-bit$
        ulong p, b = p = n &amp;amp; i;$
 
        while ((i &amp;gt;&amp;gt;= 1) &amp;gt; 0)$
            b |= p = n &amp;amp; i ^ p &amp;gt;&amp;gt; 1;$
        return b;$
    }$
 
    public static void Main(string[] args)$
    {$
        Console.WriteLine(&amp;quot;Number\tGray&amp;quot;);$
        for (ulong i = 0; i &amp;lt; 10; i++)$
        {$
            Console.WriteLine(string.Format(&amp;quot;{0}\t{1}&amp;quot;, i, Convert.ToString((long)grayEncode(i), 2)));$
 
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (40, N'Covert hexadecimal number to decimal', N'Covert hexadecimal number to decimal$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace ConsoleApplication$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            string Input;$
            Console.WriteLine(&amp;quot;Enter a Hexadecimal Number :&amp;quot;);$
            Input = Console.ReadLine();$
            int Output = int.Parse(Input, System.Globalization.NumberStyles.HexNumber);$
            Console.WriteLine(&amp;quot;The Decimal value is &amp;quot; + Output);$
            Console.Read();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (41, N'Convert digits to words', N'Convert digits to words$
using System;$
public class ConvertDigitsToWords$
{$   
  public static void Main()$
  {$ 
    int num;$ 
    int nextdigit;$
    int numdigits;$ 
    int[] n = new int[20];$
 
    string[] digits = { &amp;amp;quot;zero&amp;amp;quot;, &amp;amp;quot;one&amp;amp;quot;, &amp;amp;quot;two&amp;amp;quot;, 
                        &amp;amp;quot;three&amp;amp;quot;, &amp;amp;quot;four&amp;amp;quot;, &amp;amp;quot;five&amp;amp;quot;, 
                        &amp;amp;quot;six&amp;amp;quot;, &amp;amp;quot;seven&amp;amp;quot;, &amp;amp;quot;eight&amp;amp;quot;, 
                        &amp;amp;quot;nine&amp;amp;quot; };$ 
 
 
    Console.WriteLine(&amp;amp;quot;Enter the number&amp;amp;quot;);$
    num = Convert.ToInt32(Console.ReadLine());$
    Console.WriteLine(&amp;amp;quot;Number: &amp;amp;quot; + num);$
    Console.Write(&amp;amp;quot;Number in words: &amp;amp;quot;);$   
    nextdigit = 0;$ 
    numdigits = 0;$
    do$ 
    {$ 
      nextdigit = num % 10;$ 
      n[numdigits] = nextdigit;$ 
      numdigits++;$ 
      num = num / 10;$ 
    } while(num &amp;amp;gt; 0);$ 
    numdigits--;$
    for( ; numdigits &amp;amp;gt;= 0; numdigits--)$ 
        Console.Write(digits[n[numdigits]] + &amp;amp;quot; &amp;amp;quot;);$ 
    Console.WriteLine();$
    Console.ReadLine();$
  }$   
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (42, N'Convert Infix to Postfix', N'Convert Infix to Postfix$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
namespace Infix$
{$
    class Program$
    {$
        static bool convert(ref string infix, out string postfix)$
        {$
 
            int prio = 0;$
            postfix = &quot;&quot;;$
            Stack(char) s1 = new Stack(char)();$
            for (int i = 0; i &lt; infix.Length; i++)$
            {$
                 char ch = infix[i];$
                 if (ch == &39;+&39; || ch == &39;-&39; || ch == &39;*&39; || ch == &39;/&39;)$
                 {$
                     if (s1.Count &lt;= 0)$
                         s1.Push(ch);$
                    else$
                    {$
                        if (s1.Peek() == &39;*&39; || s1.Peek() == &39;/&39;)$
                            prio = 1;$
                        else$
                            prio = 0;$
                        if (prio == 1)$
                        {$
                            if (ch == &39;+&39; || ch == &39;-&39;)$
                            {$
                               postfix += s1.Pop();$
                               i--;$
                            }$
                            else$
                            {$
                                postfix += s1.Pop();$
                                i--;$
                            }$
                        }$
                        else$
                        {$
                            if (ch == &39;+&39; || ch == &39;-&39;)$
                            {$
                               postfix += s1.Pop();$
                               s1.Push(ch);$
 
                            }$
                            else$
                                s1.Push(ch);$
                        }$
                    }$
                }$
                else$
                {$
                    postfix += ch;$
                }$
            }$
            int len = s1.Count;$
            for (int j = 0; j &lt; len; j++)$
                postfix += s1.Pop();$
            return true;$
        }$
        static void Main(string[] args)$
        {$
            string infix = &quot;&quot;;$
            string postfix = &quot;&quot;;$
            if (args.Length == 1)$
            {$
                infix = args[0];$
                convert(ref infix, out postfix);$
                System.Console.WriteLine(&quot;InFix  :\t&quot; + infix);$
                System.Console.WriteLine(&quot;PostFix:\t&quot; + postfix);$
            }$
            else$
            {$
                infix = &quot;a+b*c-d&quot;;$
                convert(ref infix, out postfix);$
                System.Console.WriteLine(&quot;InFix   :\t&quot; + infix);$
                System.Console.WriteLine(&quot;PostFix :\t&quot; + postfix);$
                System.Console.WriteLine();$
                infix = &quot;a+b*c-d/e*f&quot;;$
                convert(ref infix, out postfix);$
                System.Console.WriteLine(&quot;InFix   :\t&quot; + infix);$
                System.Console.WriteLine(&quot;PostFix :\t&quot; + postfix);$
                System.Console.WriteLine();$
                infix = &quot;a-b/c*d-e--f/h*i++j-/k&quot;;$
                convert(ref infix, out postfix);$
                System.Console.WriteLine(&quot;InFix   :\t&quot; + infix);$
                System.Console.WriteLine(&quot;PostFix :\t&quot; + postfix);$
                System.Console.WriteLine();$
                Console.ReadLine();$
            }$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (43, N'Convert fahrenheit to celsius', N'Convert fahrenheit to celsius$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
 
namespace Celsius$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            double celsius;$
            Console.Write(&amp;quot;Enter Fahrenheit temperature : &amp;quot;);$
            double fahrenheit = Convert.ToDouble(Console.ReadLine());$
            celsius = (fahrenheit - 32) * 5 / 9;$
            Console.WriteLine(&amp;quot;The converted Celsius temperature is&amp;quot; + celsius);$
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (44, N'Convert decimal to binary', N'Convert decimal to binary$
using System;$
class myclass$
{$
    static void Main()$
    {$
        int num;$
        Console.Write(&amp;quot;Enter a Number : &amp;quot;);$
        num = int.Parse(Console.ReadLine());$
        int quot;$
        string rem = &amp;quot;&amp;quot;;$
        while (num &amp;gt;= 1)$
        {$
            quot = num / 2;$
            rem += (num % 2).ToString();$
            num = quot;$
        }$
        string bin = &amp;quot;&amp;quot;;$
        for (int i = rem.Length - 1; i &amp;gt;= 0; i--)$
        {$
            bin = bin + rem[i];$
        }$
        Console.WriteLine(&amp;quot;The Binary format for given number is {0}&amp;quot;, bin);$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (45, N'Convert Decimal to Octal', N'Convert Decimal to Octal$
using System;$
class program$
{$
    public static void Main()$
    {$
        int decimalNumber, quotient, i = 1, j;$
        int[] octalNumber = new int[100];$
        Console.WriteLine(&quot;Enter a Decimal Number :&quot;);$
        decimalNumber = int.Parse(Console.ReadLine());$
        quotient = decimalNumber;$
        while (quotient != 0)$
        {$
            octalNumber[i++] = quotient % 8;$
            quotient = quotient / 8;$
        }$
        Console.Write(&quot;Equivalent Octal Number is &quot;);$
        for (j = i - 1; j &gt; 0; j--)$
            Console.Write(octalNumber[j]);$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (46, N'Convert Big Endian to Little Endian', N'Convert Big Endian to Little Endian$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
using System.Threading.Tasks;$
 
namespace ConsoleApplication4$
{$
    class Program$
    {$
        static int ReverseBytes(int val)$
        {$
            byte[] intAsBytes = BitConverter.GetBytes(val);$
            Array.Reverse(intAsBytes);$
            return BitConverter.ToInt32(intAsBytes, 0);$
        }$
        static string IntToBinaryString(int v)$
        {$
            string s = Convert.ToString(v, 2);$ 
            string t = s.PadLeft(32, &39;0&39;);$
            string res = &quot;&quot;;$ 
            for (int i = 0; i &lt; t.Length; ++i)$
            {$
                if (i &gt; 0 &amp;&amp; i % 8 == 0)$
                    res += &quot; &quot;;$
                res += t[i];$
            }$
            return res;$
        }$
        static void Main(string[] args)$
        {$
            int little = 2777;$
            int big = ReverseBytes(little);$
            string sLittle = IntToBinaryString(little);$
            string sBig = IntToBinaryString(big);$
            int oLittle = ReverseBytes(big);$
            string oString = IntToBinaryString(oLittle);$
            Console.WriteLine(&quot;Original (Intel) little endian value = &quot;
              + little);$
            Console.WriteLine(&quot;Original value as binary string = &quot;
              + sLittle);$
            Console.WriteLine(&quot;&quot;);$
            Console.WriteLine(&quot;Reversed big endian value = &quot;
              + big);$
            Console.WriteLine(&quot;Reversed value as string = &quot;
              + sBig);$
            Console.WriteLine(&quot;&quot;);$
            Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (47, N'Create an instance of stackTrace and to get all frames', N'Create an instance of stackTrace and to get all frames$
using System.Diagnostics;$
using System;$
class program$
{$
    public static void Main()$
    {$
        StackTrace stackTrace = new StackTrace();$      
        StackFrame[] stackFrames = stackTrace.GetFrames();$  
        // write call stack method names$
        Console.WriteLine(&amp;quot;Method Names : &amp;quot;);$
        foreach (StackFrame stackFrame in stackFrames)$
        {$
            Console.WriteLine(stackFrame.GetMethod().Name);$  
        }$
        Console.Read();$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (48, N'Create a singly linked circular list', N'Create a singly linked circular list$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
namespace CSTest$
{$
    class Circlist$
    {$
        private int currentdata;$
        private Circlist nextdata;$
        public Circlist()$
        {$
            currentdata = 0;$
            nextdata = this;$
        }$
        public Circlist(int value)$
        {$
            currentdata = value;$
            nextdata = this;$
        }$
        public Circlist Insdata(int value)$
        {$
            Circlist node = new Circlist(value);$
            if (this.nextdata == this)$
            {$
                node.nextdata = this;$
                this.nextdata = node;$
            }$
            else$
            {$
                Circlist temp = this.nextdata;$
                node.nextdata = temp;$
                this.nextdata = node;$
            }$
            return node;$
        }$
        public int Deldata()$
        {$
            if (this.nextdata == this)$
            {$
                System.Console.WriteLine(&amp;quot;\nOnly one node!!!!&amp;quot;);$
                return 0;$
            }$
            Circlist node = this.nextdata;$
            this.nextdata = this.nextdata.nextdata;$
            node = null;$
            return 1;$
        }$
        public void Traverse()$
        {$
            Traverse(this);$
        }$
        public void Traverse(Circlist node)$
        {$
            if (node == null)$
                node = this;$
            System.Console.WriteLine(&amp;quot;Forward Direction!!!!&amp;quot;);$
            Circlist snode = node;$
            do$
            {$
                System.Console.WriteLine(node.currentdata);$
                node = node.nextdata;$
            }$
            while (node != snode);$
        }$
        public int Gnodes()$
        {$
            return Gnodes(this);$
        }$
        public int Gnodes(Circlist node)$
        {$
            if (node == null)$
                node = this;$
            int count = 0;$
            Circlist snode = node;$
            do$
            {$
                count++;$
                node = node.nextdata;$
            }$
            while (node != snode);$
            System.Console.WriteLine(&amp;quot;\nCurrent Node Value : &amp;quot; + node.currentdata.ToString());$
            System.Console.WriteLine(&amp;quot;\nTotal nodes :&amp;quot; + count.ToString());$
            return count;$
        }$
        static void Main(string[] args)$
        {$
            Circlist node1 = new Circlist(1);$
            node1.Deldata(); $
            Circlist node2 = node1.Insdata(2);$
            node1.Deldata(); $
            node2 = node1.Insdata(2);$
            Circlist node3 = node2.Insdata(3);$
            Circlist node4 = node3.Insdata(4);$
            Circlist node5 = node4.Insdata(5);$
            node1.Gnodes();$
            node3.Gnodes();$
            node5.Gnodes();$
            node1.Traverse();$
            node3.Deldata();$
            node2.Traverse();$
            node1.Gnodes();$
            node3.Gnodes();$
            node5.Gnodes();$
            Console.Read();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (49, N'Implement stack with push and pop operations', N'Implement stack with push and pop operations$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
using System.Threading.Tasks;$
namespace ConsoleApplication1$
{$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            stack st = new stack();$
          while (true)$
            {$
                Console.Clear();$
                Console.WriteLine(&amp;quot;\nStack MENU(size -- 10)&amp;quot;);$
                Console.WriteLine(&amp;quot;1. Add an element&amp;quot;);$
                Console.WriteLine(&amp;quot;2. See the Top element.&amp;quot;);$
                Console.WriteLine(&amp;quot;3. Remove top element.&amp;quot;);$
                Console.WriteLine(&amp;quot;4. Display stack elements.&amp;quot;);$
                Console.WriteLine(&amp;quot;5. Exit&amp;quot;);$
                Console.Write(&amp;quot;Select your choice: &amp;quot;);$
                int choice = Convert.ToInt32(Console.ReadLine());$
                switch (choice)$
                {$
                    case 1:$
                        Console.WriteLine(&amp;quot;Enter an Element : &amp;quot;);$
                        st.Push(Console.ReadLine());$
                        break;$
 
                    case 2: Console.WriteLine(&amp;quot;Top element is: {0}&amp;quot;, st.Peek());$
                        break;$
 
                    case 3: Console.WriteLine(&amp;quot;Element removed: {0}&amp;quot;, st.Pop());$
                        break;$
 
                    case 4: st.Display();$
                        break;$
 
                    case 5: System.Environment.Exit(1);$
                        break;$
                }$
                Console.ReadKey();$
            }$
        }$
    }$
 
    interface StackADT
    {
        Boolean isEmpty();
        void Push(Object element);
        Object Pop();
        Object Peek();
        void Display();
    }
    class stack : StackADT
    {
        private int StackSize;
        public int StackSizeSet
        {
            get { return StackSize; }
            set { StackSize = value; }
        }
        public int top;
        Object[] item;
        public stack()
        {
            StackSizeSet = 10;
            item = new Object[StackSizeSet];
            top = -1;
        }
        public stack(int capacity)
        {
            StackSizeSet = capacity;
            item = new Object[StackSizeSet];
            top = -1;
        }
        public bool isEmpty()
        {
            if (top == -1) return true;
 
            return false;
        }
        public void Push(object element)
        {
            if (top == (StackSize - 1))
            {
                Console.WriteLine(&amp;quot;Stack is full!&amp;quot;);
            }
 
            else
            {
 
                item[++top] = element;
                Console.WriteLine(&amp;quot;Item pushed successfully!&amp;quot;);
            }
        }
        public object Pop()
        {
            if (isEmpty())
            {
                Console.WriteLine(&amp;quot;Stack is empty!&amp;quot;);
                return &amp;quot;No elements&amp;quot;;
            }
            else
            {
 
                return item[top--];
            }
        }
        public object Peek()
        {
            if (isEmpty())
            {
 
                Console.WriteLine(&amp;quot;Stack is empty!&amp;quot;);
                return &amp;quot;No elements&amp;quot;;
            }
            else
            {
                return item[top];
            }
        }
 
 
        public void Display()
        {
            for (int i = top; i &amp;gt; -1; i--)
            {
 
                Console.WriteLine(&amp;quot;Item {0}: {1}&amp;quot;, (i + 1), item[i]);
            }
        }
    }
}')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (50, N'Implement traversal in singly linked list', N'Implement traversal in singly linked list$
using System;$
using System.Collections.Generic;$
using System.Linq;$
using System.Text;$
namespace Program$
{$
    class singlelist$
    {$
        private int data;$
        private singlelist next;$
        public singlelist()$
        {$
            data = 0;$
            next = null;$
        }$
        public singlelist(int value)$
        {$
            data = value;$
            next = null;$
        }$
        public singlelist InsertNext(int value)$
        {$
 
            singlelist node = new singlelist(value);$
            if (this.next == null)$
            {$
                node.next = null;$
                this.next = node;$
            }$
           else$
            {$
                singlelist temp = this.next;$
                node.next = temp;$
                this.next = node;$
            }$
            return node;$
        }$
        public int DeleteNext()$
        {$
            if (next == null)$
                return 0;$
            singlelist node = this.next;$
            this.next = this.next.next;$ 
            node = null;$
            return 1;$
        }$
        public void Traverse(singlelist node)$
        {$
            if (node == null)$
                node = this;$
            System.Console.WriteLine(&amp;quot;Traversing :&amp;quot;);$
            while (node != null)$
            {$
                System.Console.WriteLine(node.data);$
                node = node.next;$
            }$
        }$
    }$
    class Program$
    {$
        static void Main(string[] args)$
        {$
            singlelist node1 = new singlelist(11);$
            singlelist node2 = node1.InsertNext(12);$
            singlelist node3 = node2.InsertNext(13);$
            singlelist node4 = node3.InsertNext(14);$
            singlelist node5 = node4.InsertNext(15);$
            node1.Traverse(null);$
            Console.WriteLine(&amp;quot;Deleting !!&amp;quot;);$
            node3.DeleteNext();$
            node2.Traverse(null);$
            System.Console.ReadLine();$
        }$
    }$
}$')
INSERT [dbo].[CSharp] ([CSharpId], [Content_c], [Sourcecode_c]) VALUES (54, N'Autoscroll', N'Autoscroll$
textBox1.SelectionStart = textBox1.Text.Length;$
textBox1.ScrollToCaret();$')
SET IDENTITY_INSERT [dbo].[CSharp] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 03/12/2015 13:52:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON
INSERT [dbo].[Admin] ([AdminID], [Username], [Password]) VALUES (1, N'Admin', N'1234')
INSERT [dbo].[Admin] ([AdminID], [Username], [Password]) VALUES (2, N'arachat', N'5430213000')
INSERT [dbo].[Admin] ([AdminID], [Username], [Password]) VALUES (3, N'Usak', N'1234')
INSERT [dbo].[Admin] ([AdminID], [Username], [Password]) VALUES (4, N'Moo', N'1234')
SET IDENTITY_INSERT [dbo].[Admin] OFF
