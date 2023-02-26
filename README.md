# WIP

Creating a password file
User: USER_NAME
Password: PASSWORD
save it into a text file

Creating a decryption key
echo YOUR_DECRYPTION_KEY_HERE | b3sum
dcf40f6ca732b8625a2754f4d59ed71159991599831136b7a474868c1ff46a06
openssl enc -e -aes-256-cbc -pbkdf2 -k dcf40f6ca732b8625a2754f4d59ed71159991599831136b7a474868c1ff46a06 -in password_file.txt -out password_file.osl

Explanation
echo will send your password to b3sum and b3sum will give you the hash of your password
you can change b3sum to any other hashing tool (md5 not recomended)
this scripts assumes you are using b3sum
openssl encrypts your password file with the hash b3sum gave you and outputs a .osl file
you can change .osl to anything you want

why this?
b3sum verifies the hash of your password and wofi sends it to openssl to decrypt your password file
that way you can have an easy to remember password but encrypt your file with a long and safe key

Limitations
the script requires you to use the same algorithm and hashing tool as you used to encrypt your file

it uses awk to copy the second colum of text
so if you have a file like this
User: USER_NAME
USER_NAME will be copied

but if is its like this
User: USER NAME
USER will be copied
