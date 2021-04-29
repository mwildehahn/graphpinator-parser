namespace Graphpinator\Parser\Exception;

use namespace HH\Lib\Str;

final class ExpectedValue extends \Graphpinator\Parser\Exception\ExpectedError {
    public function __construct(\Graphpinator\Common\Location $location, string $token, string $message = '') {
        $message = Str\format('Expected value - either literal or variable reference, got "%s".', $token);
        parent::__construct($location, $token, $message);
    }
}
