# dd-nohup-fix
Fixing dd hangup error mid flashing with nohup while making it behave as usual

## How it is imagined
The thing i had in mind to find workaround instead of fixing the issue while still being able to use dd command as it was never a script

## What i did
### For now, i made my bash script take image path, desired device and block size as prompts and put them in dd command while using nohup command and made its output to go to /tmp folder because i wanted to see status=progress output on terminal with tail command with built in clean up which is just rm -rf from /tmp folder


