**Simple Script to manage OpenSSL encrypted password**  
**Wofi** is quite crappy when you try to pipe stuff from and to **Wofi**  
  
How to create the password file  
  
```openssl aes256 -iter 123 -in pass.txt -out "pass_file_name_here.osl"```  
I have used aes256 for this script, but you can change it as you please
for ```-iter``` i used 123 as example, but you don't need to use if if you don't want, you can omit the ```ITER``` flag in the script  
the ITER flag will ask for the number you have set (idk if it can only be a number)  
the PASS flag will ask for the **Password** of the file  
i don't know yet how to make wofi specify it in the title  

**The Password**  
AWK outputs the second column to wl-copy  
so your password file should look something like this  

Login: USER_NAME  
Password: 12345  

If i could actually program i would do better
