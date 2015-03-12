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