namespace Graphpinator\Parser;

final class Field {

    public function __construct(
        private string $name,
        private ?string $alias = null,
        private ?\Graphpinator\Parser\FieldSet $children = null,
        private ?\Graphpinator\Parser\Value\ArgumentValueSet $arguments = null,
        private ?\Graphpinator\Parser\DirectiveSet $directives = null,
    ) {}

    public function getName(): string {
        return $this->name;
    }

    public function getAlias(): ?string {
        return $this->alias;
    }

    public function getFields(): ?vec<\Graphpinator\Parser\Field> {
        return $this->children;
    }

    public function getArguments(): ?\Graphpinator\Parser\Value\ArgumentValueSet {
        return $this->arguments;
    }

    public function getDirectives(): ?\Graphpinator\Parser\DirectiveSet {
        return $this->directives;
    }
}

type FieldSet = vec<Field>;
