namespace Graphpinator\Parser\Tests\Unit\FragmentSpread;

final class NamedFragmentSpreadTest extends \PHPUnit\Framework\TestCase
{
    public function testConstructor() : void
    {
        $val = new \Graphpinator\Parser\FragmentSpread\NamedFragmentSpread('fragment');
        self::assertSame('fragment', $val->getName());
        self::assertCount(0, $val->getDirectives());
    }
}
