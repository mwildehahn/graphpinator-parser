namespace Graphpinator\Parser\Exception;

final class ExpectedSelectionSetBody extends \Graphpinator\Parser\Exception\ExpectedError
{
    public const MESSAGE = 'Expected field name, got "%s".';
}
