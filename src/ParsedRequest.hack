namespace Graphpinator\Parser;

final class ParsedRequest {

    public function __construct(
        private \Graphpinator\Parser\Operation\OperationSet $operations,
        private \Graphpinator\Parser\FragmentSet $fragments,
    ) {}

    public function getOperations(): \Graphpinator\Parser\Operation\OperationSet {
        return $this->operations;
    }

    public function getFragments(): \Graphpinator\Parser\FragmentSet {
        return $this->fragments;
    }
}
