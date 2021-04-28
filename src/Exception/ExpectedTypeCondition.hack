namespace Graphpinator\Parser\Exception;

final class ExpectedTypeCondition extends \Graphpinator\Parser\Exception\ExpectedError
{
    public const MESSAGE = 'Expected type condition for fragment, got "%s".';
}
