# Script created for Generating User in Linux automatically
## Notification
1. User's name and Groups name is stored in file `username`
2. Run `./generate.sh` in terminal will generate all the user listed in file `username`
3. User's password will be the same as User's name
4. The created user will be in the group of its own and the group specified in the `username` file
5. User won't be able to access other user's directories

## Discription of _username_ file
For example:
```
---
Year2019
wujr
ouyangmy
hansy
```
* Every group of users start with `---`
* The line after `---` is the group name, the script will create a group with this name if not created. In this example it's `Year2019`
* The upcoming lines after the group name are names for each user in this group
