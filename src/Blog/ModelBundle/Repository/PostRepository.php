<?php

namespace Blog\ModelBundle\Repository;

/**
 * Class PostRepository
 */
class PostRepository extends \Doctrine\ORM\EntityRepository
{
    /**
     * Find latest
     *
     * @param int $num How many posts to get
     *
     * @return array
     */
    public function findLatest($num)
    {
        $qb = $this->getQueryBuilder()
            ->orderBy('p.createdAt', 'desc')
            ->setMaxResults($num);

        return $qb->getQuery()->getResult();
    }

    /**
     * Fnd the first post
     *
     * return Post
     */
    public function findFirst()
    {
        $qb = $this->getQueryBuilder()
            ->orderBy('p.id', 'asc')
            ->setMaxResults(1);

        return $qb->getQuery()->getSingleResult();
    }

    private function getQueryBuilder()
    {
        $em = $this->getEntityManager();

        $qb = $em->getRepository('ModelBundle:Post')
            ->createQueryBuilder('p');

        return $qb;
    }
}
