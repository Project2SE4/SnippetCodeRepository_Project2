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
