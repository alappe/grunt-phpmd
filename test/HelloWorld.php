<?php
/**
 * Sample class for tests of grunt-phpmd runner
 *
 */
class World {

    /**
     *
     * @var string
     */
    private $a = '';

    /**
     * Constructor
     *
     * @param string $name
     */
    public function __construct($name) {
        $this->a = $name;
    }

    /**
     * Sets the world's name
     *
     * @param string $name
     */
    public function setName($name) {
        $this->a = $name;
    }

    /**
     * Returns world's name
     *
     * @return string
     */
    public function getName() {
        return $this->a;
    }
}