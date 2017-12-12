import git.repository;
import std.stdio;

void main()
{
    auto repo = openRepository("..");
    writeln(repo.isPathIgnored("./.dub"));
}
