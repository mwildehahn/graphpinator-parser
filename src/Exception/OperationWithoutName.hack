namespace Graphpinator\Parser\Exception;

final class OperationWithoutName extends \Graphpinator\Parser\Exception\ParserError
{
    public const MESSAGE = 'Multiple operations given, but not all have specified name.';
}
