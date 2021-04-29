namespace Graphpinator\Parser\FragmentSpread;

final class InlineFragmentSpread implements \Graphpinator\Parser\FragmentSpread\FragmentSpread {

    private \Graphpinator\Parser\FieldSet $fields;
    private \Graphpinator\Parser\DirectiveSet $directives;
    private ?\Graphpinator\Parser\TypeRef\NamedTypeRef $typeCond;

    public function __construct(
        \Graphpinator\Parser\FieldSet $fields,
        ?\Graphpinator\Parser\DirectiveSet $directives = null,
        ?\Graphpinator\Parser\TypeRef\NamedTypeRef $typeCond = null,
    ) {
        $this->fields = $fields;
        $this->directives = $directives ?? vec[];
        $this->typeCond = $typeCond;
    }

    public function getFields(): \Graphpinator\Parser\FieldSet {
        return $this->fields;
    }

    public function getDirectives(): \Graphpinator\Parser\DirectiveSet {
        return $this->directives;
    }

    public function getTypeCond(): ?\Graphpinator\Parser\TypeRef\NamedTypeRef {
        return $this->typeCond;
    }
}
