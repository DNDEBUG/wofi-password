# **Simple Script to manage OpenSSL encrypted password**  
**Wofi** is quite crappy when you try to pipe stuff from and to **Wofi**  
  
**1** - How to create the password file  
  
```openssl aes256 -iter 123 -in pass.txt -out "pass_file_name_here.osl"```  
<details>
  <summary>More</summary>
  <br>
  I have used <b>aes256</b> for this script, but you can change it as you please (Read the openssl man page if you don't like it)  
  <br>
  for <b>-iter</b> i used <b>123</b> as example, but you don't need to use if if you don't want, you can omit the <b>ITER</b> flag in the script  
  <br>
  the <b>ITER</b> flag will ask for the number you have set (idk if it can only be a number)  
  <br>
  the <b>PASS</b> flag will ask for the <b>Password</b> of the file  
  <br>
i don't know yet how to make wofi specify it in the title  
  <br>
you can remove the <b>--password</b> flag if you don't really care about it
  </details>

**2** - Run the Script

**The Password**  
AWK outputs the second column to wl-copy (Yes it uses awk, one day i will learn regex)  
so your password file should look something like this  

Login: USER_NAME  
Password: 12345  

This script is very simple and can be ported to anything lol  
If i could actually program i would do better

**HELP ME, I'M POOR**

monero:892MhVb6bJNDwvuhQNJBWtLfaXBH2FjbGdzcKJvesE6B8LpfyASmJf836pPjE3uK  
![98880063](https://user-images.githubusercontent.com/98880063/170874778-6107c37d-ae4d-4f8f-9895-31e4ff3eba85.png)
