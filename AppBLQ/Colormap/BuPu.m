function map = BuPu(N)

if nargin<1 || isnumeric(N)&&isequal(N,[])

N=256;
else
	assert(isscalar(N)&&isfinite(N)&&isreal(N),...
		'SC:inferno:N:NotRealFiniteScalarNumeric',...
		'First argument <N> must be a real finite numeric scalar.')
end

raw = [0.968627450980392 0.988235294117647 0.992156862745098;0.965797770088427 0.986266820453672 0.991049596309112;0.962968089196463 0.984298346789696 0.989942329873126;0.960138408304498 0.982329873125721 0.98883506343714;0.957308727412534 0.980361399461745 0.987727797001153;0.954479046520569 0.97839292579777 0.986620530565167;0.951649365628604 0.976424452133795 0.985513264129181;0.94881968473664 0.974455978469819 0.984405997693195;0.945990003844675 0.972487504805844 0.983298731257209;0.94316032295271 0.970519031141869 0.982191464821223;0.940330642060746 0.968550557477893 0.981084198385237;0.937500961168781 0.966582083813918 0.97997693194925;0.934671280276817 0.964613610149942 0.978869665513264;0.931841599384852 0.962645136485967 0.977762399077278;0.929011918492887 0.960676662821992 0.976655132641292;0.926182237600923 0.958708189158016 0.975547866205306;0.923352556708958 0.956739715494041 0.97444059976932;0.920522875816993 0.954771241830065 0.973333333333333;0.917693194925029 0.95280276816609 0.972226066897347;0.914863514033064 0.950834294502115 0.971118800461361;0.9120338331411 0.948865820838139 0.970011534025375;0.909204152249135 0.946897347174164 0.968904267589389;0.90637447135717 0.944928873510188 0.967797001153403;0.903544790465206 0.942960399846213 0.966689734717416;0.900715109573241 0.940991926182238 0.96558246828143;0.897885428681276 0.939023452518262 0.964475201845444;0.895055747789312 0.937054978854287 0.963367935409458;0.892226066897347 0.935086505190311 0.962260668973472;0.889396386005383 0.933118031526336 0.961153402537486;0.886566705113418 0.931149557862361 0.960046136101499;0.883737024221453 0.929181084198385 0.958938869665513;0.880907343329489 0.92721261053441 0.957831603229527;0.877923875432526 0.925105728565936 0.956647443291042;0.873863898500577 0.922029988465975 0.954925028835063;0.869803921568627 0.918954248366013 0.953202614379085;0.865743944636678 0.915878508266052 0.951480199923107;0.861683967704729 0.91280276816609 0.949757785467128;0.85762399077278 0.909727028066128 0.94803537101115;0.85356401384083 0.906651287966167 0.946312956555171;0.849504036908881 0.903575547866205 0.944590542099193;0.845444059976932 0.900499807766244 0.942868127643214;0.841384083044983 0.897424067666282 0.941145713187236;0.837324106113033 0.894348327566321 0.939423298731257;0.833264129181084 0.891272587466359 0.937700884275279;0.829204152249135 0.888196847366398 0.9359784698193;0.825144175317186 0.885121107266436 0.934256055363322;0.821084198385236 0.882045367166474 0.932533640907343;0.817024221453287 0.878969627066513 0.930811226451365;0.812964244521338 0.875893886966551 0.929088811995386;0.808904267589389 0.87281814686659 0.927366397539408;0.804844290657439 0.869742406766628 0.925643983083429;0.80078431372549 0.866666666666667 0.923921568627451;0.796724336793541 0.863590926566705 0.922199154171473;0.792664359861592 0.860515186466744 0.920476739715494;0.788604382929642 0.857439446366782 0.918754325259516;0.784544405997693 0.85436370626682 0.917031910803537;0.780484429065744 0.851287966166859 0.915309496347559;0.776424452133795 0.848212226066897 0.91358708189158;0.772364475201845 0.845136485966936 0.911864667435602;0.768304498269896 0.842060745866974 0.910142252979623;0.764244521337947 0.838985005767013 0.908419838523645;0.760184544405998 0.835909265667051 0.906697424067666;0.756124567474048 0.83283352556709 0.904975009611688;0.752064590542099 0.829757785467128 0.903252595155709;0.74800461361015 0.826743560169166 0.90159169550173;0.743944636678201 0.823913879277201 0.900115340253749;0.739884659746252 0.821084198385236 0.898638985005767;0.735824682814302 0.818254517493272 0.897162629757785;0.731764705882353 0.815424836601307 0.895686274509804;0.727704728950404 0.812595155709342 0.894209919261822;0.723644752018454 0.809765474817378 0.892733564013841;0.719584775086505 0.806935793925413 0.891257208765859;0.715524798154556 0.804106113033449 0.889780853517878;0.711464821222607 0.801276432141484 0.888304498269896;0.707404844290658 0.798446751249519 0.886828143021915;0.703344867358708 0.795617070357555 0.885351787773933;0.699284890426759 0.79278738946559 0.883875432525952;0.69522491349481 0.789957708573626 0.88239907727797;0.69116493656286 0.787128027681661 0.880922722029988;0.687104959630911 0.784298346789696 0.879446366782007;0.683044982698962 0.781468665897732 0.877970011534025;0.678985005767013 0.778638985005767 0.876493656286044;0.674925028835064 0.775809304113802 0.875017301038062;0.670865051903114 0.772979623221838 0.873540945790081;0.666805074971165 0.770149942329873 0.872064590542099;0.662745098039216 0.767320261437909 0.870588235294118;0.658685121107266 0.764490580545944 0.869111880046136;0.654625144175317 0.761660899653979 0.867635524798155;0.650565167243368 0.758831218762015 0.866159169550173;0.646505190311419 0.75600153787005 0.864682814302191;0.642445213379469 0.753171856978085 0.86320645905421;0.63838523644752 0.750342176086121 0.861730103806228;0.634325259515571 0.747512495194156 0.860253748558247;0.630265282583622 0.744682814302192 0.858777393310265;0.626205305651672 0.741853133410227 0.857301038062284;0.622145328719723 0.739023452518262 0.855824682814302;0.618777393310265 0.735501730103806 0.853979238754325;0.616562860438293 0.730826605151865 0.851518646674356;0.614348327566321 0.726151480199923 0.849058054594387;0.612133794694348 0.721476355247982 0.846597462514417;0.609919261822376 0.71680123029604 0.844136870434448;0.607704728950404 0.712126105344098 0.841676278354479;0.605490196078431 0.707450980392157 0.83921568627451;0.603275663206459 0.702775855440215 0.836755094194541;0.601061130334487 0.698100730488274 0.834294502114571;0.598846597462514 0.693425605536332 0.831833910034602;0.596632064590542 0.688750480584391 0.829373317954633;0.59441753171857 0.684075355632449 0.826912725874664;0.592202998846597 0.679400230680508 0.824452133794694;0.589988465974625 0.674725105728566 0.821991541714725;0.587773933102653 0.670049980776624 0.819530949634756;0.585559400230681 0.665374855824683 0.817070357554787;0.583344867358708 0.660699730872741 0.814609765474817;0.581130334486736 0.6560246059208 0.812149173394848;0.578915801614764 0.651349480968858 0.809688581314879;0.576701268742791 0.646674356016917 0.80722798923491;0.574486735870819 0.641999231064975 0.80476739715494;0.572272202998847 0.637324106113033 0.802306805074971;0.570057670126874 0.632648981161092 0.799846212995002;0.567843137254902 0.62797385620915 0.797385620915033;0.56562860438293 0.623298731257209 0.794925028835063;0.563414071510957 0.618623606305267 0.792464436755094;0.561199538638985 0.613948481353326 0.790003844675125;0.558985005767013 0.609273356401384 0.787543252595156;0.55677047289504 0.604598231449443 0.785082660515186;0.554555940023068 0.599923106497501 0.782622068435217;0.552341407151096 0.595247981545559 0.780161476355248;0.550126874279123 0.590572856593618 0.777700884275279;0.549019607843137 0.58559015763168 0.77517877739331;0.549019607843137 0.580299884659746 0.772595155709343;0.549019607843137 0.575009611687812 0.770011534025375;0.549019607843137 0.569719338715879 0.767427912341407;0.549019607843137 0.564429065743945 0.76484429065744;0.549019607843137 0.559138792772011 0.762260668973472;0.549019607843137 0.553848519800077 0.759677047289504;0.549019607843137 0.548558246828143 0.757093425605536;0.549019607843137 0.543267973856209 0.754509803921569;0.549019607843137 0.537977700884275 0.751926182237601;0.549019607843137 0.532687427912341 0.749342560553633;0.549019607843137 0.527397154940408 0.746758938869665;0.549019607843137 0.522106881968474 0.744175317185698;0.549019607843137 0.51681660899654 0.74159169550173;0.549019607843137 0.511526336024606 0.739008073817762;0.549019607843137 0.506236063052672 0.736424452133795;0.549019607843137 0.500945790080738 0.733840830449827;0.549019607843137 0.495655517108804 0.731257208765859;0.549019607843137 0.49036524413687 0.728673587081892;0.549019607843137 0.485074971164937 0.726089965397924;0.549019607843137 0.479784698193003 0.723506343713956;0.549019607843137 0.474494425221069 0.720922722029988;0.549019607843137 0.469204152249135 0.718339100346021;0.549019607843137 0.463913879277201 0.715755478662053;0.549019607843137 0.458623606305267 0.713171856978085;0.549019607843137 0.453333333333333 0.710588235294118;0.549019607843137 0.448043060361399 0.70800461361015;0.549019607843137 0.442752787389466 0.705420991926182;0.549019607843137 0.437462514417532 0.702837370242214;0.549019607843137 0.432172241445598 0.700253748558247;0.549019607843137 0.426881968473664 0.697670126874279;0.549019607843137 0.42159169550173 0.695086505190311;0.548712033833141 0.416378316032295 0.692579777008843;0.548219915417147 0.41121107266436 0.690119184928873;0.547727797001153 0.406043829296424 0.687658592848904;0.54723567858516 0.400876585928489 0.685198000768935;0.546743560169166 0.395709342560554 0.682737408688966;0.546251441753172 0.390542099192618 0.680276816608997;0.545759323337178 0.385374855824683 0.677816224529027;0.545267204921184 0.380207612456747 0.675355632449058;0.54477508650519 0.375040369088812 0.672895040369089;0.544282968089197 0.369873125720877 0.67043444828912;0.543790849673203 0.364705882352941 0.66797385620915;0.543298731257209 0.359538638985006 0.665513264129181;0.542806612841215 0.35437139561707 0.663052672049212;0.542314494425221 0.349204152249135 0.660592079969243;0.541822376009227 0.3440369088812 0.658131487889273;0.541330257593233 0.338869665513264 0.655670895809304;0.54083813917724 0.333702422145329 0.653210303729335;0.540346020761246 0.328535178777393 0.650749711649366;0.539853902345252 0.323367935409458 0.648289119569396;0.539361783929258 0.318200692041522 0.645828527489427;0.538869665513264 0.313033448673587 0.643367935409458;0.53837754709727 0.307866205305652 0.640907343329489;0.537885428681276 0.302698961937716 0.638446751249519;0.537393310265283 0.297531718569781 0.63598615916955;0.536901191849289 0.292364475201845 0.633525567089581;0.536409073433295 0.28719723183391 0.631064975009612;0.535916955017301 0.282029988465975 0.628604382929642;0.535424836601307 0.276862745098039 0.626143790849673;0.534932718185313 0.271695501730104 0.623683198769704;0.534440599769319 0.266528258362168 0.621222606689735;0.533948481353326 0.261361014994233 0.618762014609766;0.533456362937332 0.256193771626298 0.616301422529796;0.532687427912341 0.250288350634371 0.612641291810842;0.531826220684352 0.244136870434448 0.608581314878893;0.530965013456363 0.237985390234525 0.604521337946944;0.530103806228374 0.231833910034602 0.600461361014994;0.529242599000385 0.225682429834679 0.596401384083045;0.528381391772395 0.219530949634756 0.592341407151096;0.527520184544406 0.213379469434833 0.588281430219146;0.526658977316417 0.20722798923491 0.584221453287197;0.525797770088428 0.201076509034987 0.580161476355248;0.524936562860438 0.194925028835063 0.576101499423299;0.524075355632449 0.18877354863514 0.57204152249135;0.52321414840446 0.182622068435217 0.5679815455594;0.522352941176471 0.176470588235294 0.563921568627451;0.521491733948481 0.170319108035371 0.559861591695502;0.520630526720492 0.164167627835448 0.555801614763552;0.519769319492503 0.158016147635525 0.551741637831603;0.518908112264514 0.151864667435602 0.547681660899654;0.518046905036524 0.145713187235679 0.543621683967705;0.517185697808535 0.139561707035755 0.539561707035755;0.516324490580546 0.133410226835832 0.535501730103806;0.515463283352557 0.127258746635909 0.531441753171857;0.514602076124567 0.121107266435986 0.527381776239908;0.513740868896578 0.114955786236063 0.523321799307959;0.512879661668589 0.10880430603614 0.519261822376009;0.5120184544406 0.102652825836217 0.51520184544406;0.51115724721261 0.0965013456362937 0.511141868512111;0.510296039984621 0.0903498654363706 0.507081891580161;0.509434832756632 0.0841983852364475 0.503021914648212;0.508573625528643 0.0780469050365244 0.498961937716263;0.507712418300654 0.0718954248366013 0.494901960784314;0.506851211072664 0.0657439446366782 0.490841983852364;0.505990003844675 0.0595924644367551 0.486782006920415;0.500284505959246 0.0572087658592849 0.480999615532487;0.493886966551326 0.055363321799308 0.474971164936563;0.487489427143406 0.053517877739331 0.468942714340638;0.481091887735486 0.0516724336793541 0.462914263744714;0.474694348327566 0.0498269896193772 0.456885813148789;0.468296808919646 0.0479815455594002 0.450857362552864;0.461899269511726 0.0461361014994233 0.44482891195694;0.455501730103806 0.0442906574394464 0.438800461361015;0.449104190695886 0.0424452133794694 0.43277201076509;0.442706651287966 0.0405997693194925 0.426743560169166;0.436309111880046 0.0387543252595156 0.420715109573241;0.429911572472126 0.0369088811995386 0.414686658977316;0.423514033064206 0.0350634371395617 0.408658208381392;0.417116493656286 0.0332179930795848 0.402629757785467;0.410718954248366 0.0313725490196078 0.396601307189542;0.404321414840446 0.0295271049596309 0.390572856593618;0.397923875432526 0.027681660899654 0.384544405997693;0.391526336024606 0.0258362168396771 0.378515955401769;0.385128796616686 0.0239907727797001 0.372487504805844;0.378731257208766 0.0221453287197232 0.366459054209919;0.372333717800846 0.0202998846597463 0.360430603613995;0.365936178392926 0.0184544405997693 0.35440215301807;0.359538638985006 0.0166089965397924 0.348373702422145;0.353141099577086 0.0147635524798155 0.342345251826221;0.346743560169166 0.0129181084198385 0.336316801230296;0.340346020761246 0.0110726643598616 0.330288350634371;0.333948481353326 0.00922722029988466 0.324259900038447;0.327550941945406 0.00738177623990773 0.318231449442522;0.321153402537486 0.0055363321799308 0.312202998846597;0.314755863129565 0.00369088811995386 0.306174548250673;0.308358323721646 0.00184544405997693 0.300146097654748;0.301960784313725 0 0.294117647058824];

num = size(raw,1);

vec = linspace(0,num+1,N+2);
map = interp1(1:num,raw,vec(2:N+1),'linear','extrap');

map = max(0,min(1,map));
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%inferno