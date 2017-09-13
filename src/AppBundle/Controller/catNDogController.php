class CatNDogController extends Controller
{
    /**
     * @Route("/lucky/number")
     */
    public function numberCatNDog()
    {
		
        $number = mt_rand(0, 100);


        return $this->render('catNDog.html.twig', array(
            'number' => $catCount,
            'number' => $dogCount,
        ));
    }
}