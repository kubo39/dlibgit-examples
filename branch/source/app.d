import colorize;
import git.branch;
import git.repository;
import git.types;
import std.stdio;

void main()
{
    auto repo = openRepository("..");
    repo.iterateBranches(GitBranchType.local, delegate(branch, _) {
            if (branch.isHead)
                cwritefln("name: %s".color(fg.green), branch.name);
            else
                writeln("name: ", branch.name);
            return ContinueWalk.yes;
        });
}
