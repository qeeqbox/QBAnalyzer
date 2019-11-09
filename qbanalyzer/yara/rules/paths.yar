/*
__G__ = "(G)bd249ce4"
*/

rule Path
{
strings:
    $ = /[\x00]\/[\x20-\x7F]*\.[\w:]+/
    $ = /[\x00][a-zA-Z]:\\[\\\S|*\S]?.*/
    $ = /[\x00](http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/
condition:
    any of them
}

rule IP
{
strings:
    $ = /[\x00](([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])/
condition:
    any of them
}
