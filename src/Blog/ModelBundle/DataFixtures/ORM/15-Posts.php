<?php

namespace Blog\ModelBundle\DataFixtures\ORM;

use Blog\ModelBundle\Entity\Post;
use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;

/**
 * Fixtures for the Post Entity
 */
class Posts extends AbstractFixture implements OrderedFixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function getOrder()
    {
        return 15;
    }

    /**
     * {@inheritDoc}
     */
    public function load(ObjectManager $manager)
    {
        $p1 = new Post();
        $p1->setTitle('Lorem ipsum dolor sit amet');
        $p1->setBody('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.

Donec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.

Proin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.

Donec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.');
        $p1->setAuthor($this->getAuthor($manager, 'David'));

        $p2 = new Post();
        $p2->setTitle('Maecenas luctus at leo ultricies rhoncus');
        $p2->setBody('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.

Donec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.

Proin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.

Donec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.');
        $p2->setAuthor($this->getAuthor($manager, 'Eddie'));

        $p3 = new Post();
        $p3->setTitle('Donec luctus lorem sit amet nibh viverra egestas');
        $p3->setBody('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus lorem sit amet nibh viverra egestas. Duis dictum lacinia orci, sit amet pretium augue ullamcorper et. Ut congue mi lectus, et consectetur arcu mattis ac. Vivamus nibh ipsum, facilisis vitae quam at, maximus eleifend nisi. Vestibulum aliquam, lorem eget placerat sagittis, sapien purus molestie eros, non facilisis ex elit nec justo. Pellentesque porttitor tellus nec velit consectetur commodo. Pellentesque tempus volutpat elit, sed consequat lacus posuere vel. Nullam a magna sapien. Vivamus dapibus sagittis ullamcorper. Cras sed lorem aliquet, consectetur lacus non, accumsan tortor. In vel mollis risus, in rhoncus ex. Suspendisse potenti.

Donec massa enim, mollis iaculis risus eget, pretium tincidunt purus. Morbi at velit vitae tellus consectetur mollis ultricies iaculis dui. Nam dapibus lobortis viverra. Morbi scelerisque risus ut quam tincidunt iaculis. Pellentesque augue diam, dapibus eu est a, aliquam volutpat urna. Maecenas a dolor vulputate lectus viverra facilisis. Sed euismod iaculis orci, scelerisque sagittis ipsum interdum ac. Curabitur ultrices massa ullamcorper nisl iaculis, pharetra varius metus dictum. Cras leo odio, rhoncus nec erat at, convallis suscipit enim. Donec et arcu auctor, hendrerit lacus id, congue purus.

Proin sed venenatis odio. Ut lobortis, risus ac scelerisque rhoncus, metus elit vehicula augue, ut placerat augue massa eget magna. Maecenas luctus at leo ultricies rhoncus. Suspendisse nisi nulla, commodo aliquam varius eget, ultrices a tortor. In laoreet arcu id felis porta condimentum. Vivamus fringilla neque nec ipsum luctus, in faucibus felis faucibus. Donec luctus feugiat massa et iaculis. Vestibulum pulvinar massa eros, ut cursus massa placerat sit amet. Suspendisse vitae mi id urna blandit consequat quis eu nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In malesuada porta arcu, et tempor arcu rhoncus ut. Vivamus sed vehicula eros.

Donec euismod, erat vitae facilisis tincidunt, sem massa molestie est, a accumsan elit diam at nibh. Donec feugiat nec risus in semper. Sed pharetra maximus dolor, vitae consectetur metus ultricies vitae. Nam accumsan tellus non aliquam hendrerit. Nullam tincidunt blandit sollicitudin. Duis sollicitudin vulputate quam a luctus. In vehicula ex eget justo vestibulum dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur semper tortor id quam mollis, vestibulum placerat dui convallis. Nullam pretium enim ornare nunc condimentum, non porta erat viverra. Praesent ut elit est. Quisque posuere urna eu sem efficitur mollis. Donec sed libero sit amet velit porta pretium. Vivamus sit amet turpis quis velit imperdiet efficitur ut sit amet magna.');
        $p3->setAuthor($this->getAuthor($manager, 'Elsa'));

        $manager->persist($p1);
        $manager->persist($p2);
        $manager->persist($p3);

        $manager->flush();
    }

    /**
     * Get an author
     *
     * @param ObjectManager $manager
     * @param string        $name
     */
    public function getAuthor(ObjectManager $manager, $name)
    {
        return $manager->getRepository('ModelBundle:Author')->findOneBy
        (
            array(
                'name' => $name
            )
        );
    }
}