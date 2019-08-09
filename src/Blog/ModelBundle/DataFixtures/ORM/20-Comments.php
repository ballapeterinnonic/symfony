<?php

namespace Blog\ModelBundle\DataFixtures\ORM;

use Blog\ModelBundle\Entity\Comment;
use Doctrine\Common\DataFixtures\AbstractFixture;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;

/**
 * Class Comments
 */
class Comments extends AbstractFixture implements OrderedFixtureInterface
{
    /**
     * {@inheritDoc}
     */
    public function getOrder()
    {
        return 20;
    }

    public function load(ObjectManager $manager)
    {
        $posts = $manager->getRepository('ModelBundle:Post')->findAll();

        $comments = array(
            0 => 'Integer eu libero nisl. Nunc consequat mauris magna, in consectetur nibh congue non. Curabitur purus tellus, sagittis ut tincidunt non, pharetra in erat.',
            1 => 'Sed porttitor metus sed nunc tempor imperdiet. Integer mattis scelerisque odio.',
            2 => 'Nulla non erat eu neque imperdiet sollicitudin eget sit amet turpis.'
        );

        $i = 0;

        foreach($posts as $post) {
            $comment = new Comment();
            $comment->setAuthorName('Someone');
            $comment->setBody($comments[$i++]);
            $comment->setPost($post);

            $manager->persist($comment);
        }

        $manager->flush();
    }
}