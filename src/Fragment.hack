namespace Graphpinator\Parser;

final class Fragment {

    public function __construct(
        private string $name,
        private \Graphpinator\Parser\TypeRef\NamedTypeRef $typeCond,
        private \Graphpinator\Parser\DirectiveSet $directives,
        private \Graphpinator\Parser\FieldSet $fields,
    ) {}

    public function getName(): string {
        return $this->name;
    }

    public function getFields(): vec<\Graphpinator\Parser\Field> {
        return $this->fields;
    }

    public function getTypeCond(): \Graphpinator\Parser\TypeRef\NamedTypeRef {
        return $this->typeCond;
    }

    public function getDirectives(): \Graphpinator\Parser\DirectiveSet {
        return $this->directives;
    }
}

type FragmentSet = dict<string, Fragment>;
