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