# **Simple Script to manage OpenSSL encrypted password**  
**Wofi** is quite crappy when you try to pipe stuff from and to **Wofi**  
  
**1** - How to create the password file  
  
```openssl aes256 -iter 123 -in pass.txt -out "pass_file_name_here.osl"```  
<details>
  <summary>More</summary>
  <br>
  I have used <pre>$ aes256</pre> for this script, but you can change it as you please (Read the openssl man page if you don't like it)  
  <br>
for ```-iter``` i used 123 as example, but you don't need to use if if you don't want, you can omit the ```ITER``` flag in the script  
  <br>
the ITER flag will ask for the number you have set (idk if it can only be a number)  
  <br>
the PASS flag will ask for the **Password** of the file  
  <br>
i don't know yet how to make wofi specify it in the title  
  <br>
you can remove the --password flag if you don't really care about it
  </details>

**2** - Run the Script

**The Password**  
AWK outputs the second column to wl-copy (Yes if uses awk)  
so your password file should look something like this  

Login: USER_NAME  
Password: 12345  

This script is very simple and can be ported to anything lol  
If i could actually program i would do better
