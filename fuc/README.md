# F.U.C.

Frequently Used Commands :D

instead of a ton of aliases, which make it hard to remember what the underlying commands actually
do, the FUC is just a file which contains commands and their flags that are frequently used.  This
will hopefully grow over time.

My goal is to have an alias which will take in an argument that will then grep the file for whatever
command you are looking for and display results.

ex:

    $ fuc netstat
    netstat -tulpn # shows numeric (does not resolve names) listening TCP and UDP sockets and displays PID/prog name
    netstat -tuapn # shows ALL numeric (does not resolve names) TCP and UDP sockets and displays PID/prog name
    ...
    etc
    ...
