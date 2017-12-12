import git.repository;
import git.revparse;
import std.stdio;

void main()
{
    auto repo = openRepository("..");
    auto spec = repo.revparse("master");
    if (spec.flags == GitRevparseModeFlags.single)
    {
        writeln(spec.from.id.toHex);
    }
    else if (spec.flags == GitRevparseModeFlags.range)
    {
        writeln(spec.from.id.toHex);
        writeln(spec.to.id.toHex);
    }
}
