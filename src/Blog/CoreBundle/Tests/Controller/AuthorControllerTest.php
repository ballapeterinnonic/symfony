<?php

namespace Blog\CoreBundle\Tests\Controller;

use Blog\ModelBundle\Entity\Author;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class AuthorControllerTest extends WebTestCase
{
    public function testShow()
    {
        $client = static::createClient();

        /** @var Author $author */
        $author = $client->getContainer()
            ->get('doctrine')
            ->getManager()
            ->getRepository('ModelBundle:Author')
            ->findFirst();
        $authorPostsCount = $author->getPosts()->count();

        $crawler = $client->request('GET', '/author/'.$author->getSlug());

        $this->assertTrue($client->getResponse()->isSuccessful(), 'The response was not successful');

        $this->assertCount($authorPostsCount, $crawler->filter('h2'), 'There should be '.$authorPostsCount.' $posts');
    }

}
