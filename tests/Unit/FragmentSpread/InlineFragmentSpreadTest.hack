namespace Graphpinator\Parser\Tests\Unit\FragmentSpread;

use function Facebook\FBExpect\expect;
use namespace HH\Lib\C;

final class InlineFragmentSpreadTest extends \Facebook\HackTest\HackTest {
    public function testConstructor(): void {
        $val = new \Graphpinator\Parser\FragmentSpread\InlineFragmentSpread(vec[]);
        expect(C\count($val->getFields()))->toBeSame(0);
        expect(C\count($val->getDirectives()))->toBeSame(0);
    }
}
