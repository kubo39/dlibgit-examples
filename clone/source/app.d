import git;
import std.file : getcwd;
import std.path : buildPath;

void main()
{
    string url = "https://github.com/kubo39/ddbus-examples";
    cloneRepo(url, buildPath(getcwd(), "ddbus-examples"));
}
