namespace Graphpinator\Parser\FragmentSpread;

final class NamedFragmentSpread implements \Graphpinator\Parser\FragmentSpread\FragmentSpread {

    private string $name;
    private \Graphpinator\Parser\DirectiveSet $directives;

    public function __construct(string $name, ?\Graphpinator\Parser\DirectiveSet $directives = null) {
        $this->name = $name;
        $this->directives = $directives ?? vec[];
    }

    public function getName(): string {
        return $this->name;
    }

    public function getDirectives(): \Graphpinator\Parser\DirectiveSet {
        return $this->directives;
    }
}
