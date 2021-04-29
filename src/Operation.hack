namespace Graphpinator\Parser\Operation;

final class Operation {

    private string $type;
    private string $name;
    private \Graphpinator\Parser\Variable\VariableSet $variables;
    private \Graphpinator\Parser\DirectiveSet $directives;
    private \Graphpinator\Parser\FieldSet $children;

    public function __construct(
        shape(
            'type' => string,
            'name' => string,
            ?'variables' => ?\Graphpinator\Parser\Variable\VariableSet,
            ?'directives' => ?\Graphpinator\Parser\DirectiveSet,
            'children' => \Graphpinator\Parser\FieldSet,
        ) $args,
    ) {
        $this->type = $args['type'];
        $this->name = $args['name'];
        $this->variables = $args['variables'] ?? dict[];
        $this->directives = $args['directives'] ?? vec[];
        $this->children = $args['children'];
    }

    public function getType(): string {
        return $this->type;
    }

    public function getName(): string {
        return $this->name;
    }

    public function getFields(): \Graphpinator\Parser\FieldSet {
        return $this->children;
    }

    public function getVariables(): \Graphpinator\Parser\Variable\VariableSet {
        return $this->variables;
    }

    public function getDirectives(): \Graphpinator\Parser\DirectiveSet {
        return $this->directives;
    }
}

type OperationSet = dict<string, Operation>;
