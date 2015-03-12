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