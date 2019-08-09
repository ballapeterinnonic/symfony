<?php

namespace App\LuckyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use App\LuckyBundle\Entity\Task;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class DefaultController extends Controller
{

    /**
     * @Route("/lucky/number", name="lucky-number")
     */
    public function numberAction()
    {
        $number = random_int(0, 100);

        return $this->render('LuckyBundle::lucky/number.html.twig', array(
            'number' => $number,
        ));
    }

    /**
     * @Route("/lucky/test")
     */
    public function testAction(Request $request){

        $isAjax = $request->isXmlHttpRequest();

        $preferredLang = $request->getPreferredLanguage(array('en', 'fr'));


        $getPage = $request->query->get('page');

        $request->server->get('HTTP_HOST');

        $foo = 'bar';

        return $this->render('LuckyBundle::lucky/test.html.twig', [
            'foo' => $foo
        ]);
    }

    /**
     * @Route("lucky/form")
     */
    public function formAction(Request $request) {

        // creates a task and gives it some dummy data for this example
        $task = new Task();
        $task->setTask('Write a blog post');
        $task->setDueDate(new \DateTime('tomorrow'));

        $form = $this->createFormBuilder($task)
            ->add('task', TextType::class)
            // If you use PHP 5.3 or 5.4 you must use
            // ->add('task', 'Symfony\Component\Form\Extension\Core\Type\TextType')
            ->add('dueDate', DateType::class, array(
                'widget' => 'single_text',
                'label' => 'Időpont'
            ))
            ->add('save', SubmitType::class, array('label' => 'Create Task'))
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            echo 'Form elküldve';
            // $form->getData() holds the submitted values
            // but, the original `$task` variable has also been updated
            $task = $form->getData();

            // ... perform some action, such as saving the task to the database
            // for example, if Task is a Doctrine entity, save it!
            // $entityManager = $this->getDoctrine()->getManager();
            // $entityManager->persist($task);
            // $entityManager->flush();

//            return $this->redirectToRoute('task_success');
        }

        return $this->render('LuckyBundle::lucky/form.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
