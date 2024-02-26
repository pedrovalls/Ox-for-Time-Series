#include <oxstd.oxh>
#import <packages/arfima/arfima>

run_1()
{
	//--- Ox code for Arfima( 1)
	decl model = new Arfima();

	model.Load("C:\\Users\\Pedro\\Dropbox\\EcoIII2021\\Lecture5_Filtro_de_Kalman\\R_codes\\yma1.csv");
	model.Deterministic(-1);

	model.Select("Y", {"yma1", 0, 0});
	model.ARMA(0,1);
	model.FixD(0);
	model.SetSelSample(1, 1, 1000, 1);
	model.SetMethod("EML");
	model.Estimate();

	delete model;
}

main()
{
	run_1();
}
