namespace Graphpinator\Parser\Exception;

final class UnexpectedEnd extends \Graphpinator\Parser\Exception\ParserError
{
    public const MESSAGE = 'Unexpected end of input. Probably missing closing brace?';
}
