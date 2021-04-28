namespace Graphpinator\Parser\Exception;

final class ExpectedLiteralValue extends \Graphpinator\Parser\Exception\ExpectedError
{
    public const MESSAGE = 'Expected literal value as variable default value, got "%s".';
}
