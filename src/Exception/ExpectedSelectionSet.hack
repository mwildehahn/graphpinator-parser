namespace Graphpinator\Parser\Exception;

use namespace HH\Lib\Str;

final class ExpectedSelectionSet extends \Graphpinator\Parser\Exception\ExpectedError {
    public function __construct(\Graphpinator\Common\Location $location, string $token, string $message = '') {
        $message = Str\format('Expected selection set, got "%s".', $token);
        parent::__construct($location, $token, $message);
    }
}
