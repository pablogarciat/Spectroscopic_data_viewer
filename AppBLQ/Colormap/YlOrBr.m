function map = YlOrBr(N)

if nargin<1 || isnumeric(N)&&isequal(N,[])

N=256;
else
	assert(isscalar(N)&&isfinite(N)&&isreal(N),...
		'SC:inferno:N:NotRealFiniteScalarNumeric',...
		'First argument <N> must be a real finite numeric scalar.')
end

raw = [1 1 0.898039215686275;1 0.999015763168012 0.892995001922338;1 0.998031526336025 0.887950788158401;1 0.997047289504037 0.882906574394464;1 0.996063052672049 0.877862360630527;1 0.995078815840062 0.87281814686659;1 0.994094579008074 0.867773933102653;1 0.993110342176086 0.862729719338716;1 0.992126105344098 0.857685505574779;1 0.991141868512111 0.852641291810842;1 0.990157631680123 0.847597078046905;1 0.989173394848135 0.842552864282968;1 0.988189158016148 0.837508650519031;1 0.98720492118416 0.832464436755094;1 0.986220684352172 0.827420222991157;1 0.985236447520185 0.82237600922722;1 0.984252210688197 0.817331795463283;1 0.983267973856209 0.812287581699346;1 0.982283737024221 0.80724336793541;1 0.981299500192234 0.802199154171473;1 0.980315263360246 0.797154940407536;1 0.979331026528258 0.792110726643599;1 0.978346789696271 0.787066512879662;1 0.977362552864283 0.782022299115725;1 0.976378316032295 0.776978085351788;1 0.975394079200308 0.771933871587851;1 0.97440984236832 0.766889657823914;1 0.973425605536332 0.761845444059977;1 0.972441368704344 0.75680123029604;1 0.971457131872357 0.751757016532103;1 0.970472895040369 0.746712802768166;1 0.969488658208381 0.741668589004229;0.9999846212995 0.968319876970396 0.736593617839293;0.999861591695502 0.965859284890427 0.731303344867359;0.999738562091503 0.963398692810458 0.726013071895425;0.999615532487505 0.960938100730488 0.720722798923491;0.999492502883506 0.958477508650519 0.715432525951557;0.999369473279508 0.95601691657055 0.710142252979623;0.999246443675509 0.953556324490581 0.704851980007689;0.999123414071511 0.951095732410611 0.699561707035755;0.999000384467512 0.948635140330642 0.694271434063822;0.998877354863514 0.946174548250673 0.688981161091888;0.998754325259516 0.943713956170704 0.683690888119954;0.998631295655517 0.941253364090734 0.67840061514802;0.998508266051519 0.938792772010765 0.673110342176086;0.99838523644752 0.936332179930796 0.667820069204152;0.998262206843522 0.933871587850827 0.662529796232218;0.998139177239523 0.931410995770857 0.657239523260285;0.998016147635525 0.928950403690888 0.651949250288351;0.997893118031526 0.926489811610919 0.646658977316417;0.997770088427528 0.92402921953095 0.641368704344483;0.997647058823529 0.92156862745098 0.636078431372549;0.997524029219531 0.919108035371011 0.630788158400615;0.997400999615533 0.916647443291042 0.625497885428681;0.997277970011534 0.914186851211073 0.620207612456747;0.997154940407536 0.911726259131103 0.614917339484814;0.997031910803537 0.909265667051134 0.60962706651288;0.996908881199539 0.906805074971165 0.604336793540946;0.99678585159554 0.904344482891196 0.599046520569012;0.996662821991542 0.901883890811226 0.593756247597078;0.996539792387543 0.899423298731257 0.588465974625144;0.996416762783545 0.896962706651288 0.58317570165321;0.996293733179546 0.894502114571319 0.577885428681276;0.996170703575548 0.892041522491349 0.572595155709342;0.996078431372549 0.889242599000384 0.566597462514418;0.996078431372549 0.885428681276432 0.558477508650519;0.996078431372549 0.88161476355248 0.550357554786621;0.996078431372549 0.877800845828527 0.542237600922722;0.996078431372549 0.873986928104575 0.534117647058823;0.996078431372549 0.870173010380623 0.525997693194925;0.996078431372549 0.86635909265667 0.517877739331027;0.996078431372549 0.862545174932718 0.509757785467128;0.996078431372549 0.858731257208766 0.50163783160323;0.996078431372549 0.854917339484814 0.493517877739331;0.996078431372549 0.851103421760861 0.485397923875433;0.996078431372549 0.847289504036909 0.477277970011534;0.996078431372549 0.843475586312956 0.469158016147636;0.996078431372549 0.839661668589004 0.461038062283737;0.996078431372549 0.835847750865052 0.452918108419838;0.996078431372549 0.8320338331411 0.44479815455594;0.996078431372549 0.828219915417147 0.436678200692042;0.996078431372549 0.824405997693195 0.428558246828143;0.996078431372549 0.820592079969243 0.420438292964245;0.996078431372549 0.81677816224529 0.412318339100346;0.996078431372549 0.812964244521338 0.404198385236448;0.996078431372549 0.809150326797386 0.396078431372549;0.996078431372549 0.805336409073433 0.387958477508651;0.996078431372549 0.801522491349481 0.379838523644752;0.996078431372549 0.797708573625529 0.371718569780853;0.996078431372549 0.793894655901576 0.363598615916955;0.996078431372549 0.790080738177624 0.355478662053057;0.996078431372549 0.786266820453672 0.347358708189158;0.996078431372549 0.782452902729719 0.33923875432526;0.996078431372549 0.778638985005767 0.331118800461361;0.996078431372549 0.774825067281815 0.322998846597463;0.996078431372549 0.771011149557862 0.314878892733564;0.996078431372549 0.766643598615917 0.308050749711649;0.996078431372549 0.761353325643983 0.303375624759708;0.996078431372549 0.756063052672049 0.298700499807766;0.996078431372549 0.750772779700115 0.294025374855825;0.996078431372549 0.745482506728182 0.289350249903883;0.996078431372549 0.740192233756248 0.284675124951942;0.996078431372549 0.734901960784314 0.28;0.996078431372549 0.72961168781238 0.275324875048058;0.996078431372549 0.724321414840446 0.270649750096117;0.996078431372549 0.719031141868512 0.265974625144175;0.996078431372549 0.713740868896578 0.261299500192234;0.996078431372549 0.708450595924644 0.256624375240292;0.996078431372549 0.70316032295271 0.251949250288351;0.996078431372549 0.697870049980777 0.247274125336409;0.996078431372549 0.692579777008843 0.242599000384468;0.996078431372549 0.687289504036909 0.237923875432526;0.996078431372549 0.681999231064975 0.233248750480584;0.996078431372549 0.676708958093041 0.228573625528643;0.996078431372549 0.671418685121107 0.223898500576701;0.996078431372549 0.666128412149173 0.21922337562476;0.996078431372549 0.66083813917724 0.214548250672818;0.996078431372549 0.655547866205306 0.209873125720877;0.996078431372549 0.650257593233372 0.205198000768935;0.996078431372549 0.644967320261438 0.200522875816993;0.996078431372549 0.639677047289504 0.195847750865052;0.996078431372549 0.63438677431757 0.19117262591311;0.996078431372549 0.629096501345636 0.186497500961169;0.996078431372549 0.623806228373702 0.181822376009227;0.996078431372549 0.618515955401769 0.177147251057286;0.996078431372549 0.613225682429835 0.172472126105344;0.996078431372549 0.607935409457901 0.167797001153403;0.996078431372549 0.602645136485967 0.163121876201461;0.994971164936563 0.597477893118031 0.159492502883506;0.992756632064591 0.592433679354095 0.156908881199539;0.990542099192618 0.587389465590158 0.154325259515571;0.988327566320646 0.582345251826221 0.151741637831603;0.986113033448674 0.577301038062284 0.149158016147636;0.983898500576701 0.572256824298347 0.146574394463668;0.981683967704729 0.56721261053441 0.1439907727797;0.979469434832757 0.562168396770473 0.141407151095732;0.977254901960784 0.557124183006536 0.138823529411765;0.975040369088812 0.552079969242599 0.136239907727797;0.97282583621684 0.547035755478662 0.133656286043829;0.970611303344867 0.541991541714725 0.131072664359862;0.968396770472895 0.536947327950788 0.128489042675894;0.966182237600923 0.531903114186851 0.125905420991926;0.96396770472895 0.526858900422914 0.123321799307958;0.961753171856978 0.521814686658977 0.120738177623991;0.959538638985006 0.51677047289504 0.118154555940023;0.957324106113033 0.511726259131103 0.115570934256055;0.955109573241061 0.506682045367166 0.112987312572088;0.952895040369089 0.50163783160323 0.11040369088812;0.950680507497117 0.496593617839293 0.107820069204152;0.948465974625144 0.491549404075356 0.105236447520185;0.946251441753172 0.486505190311419 0.102652825836217;0.9440369088812 0.481460976547482 0.100069204152249;0.941822376009227 0.476416762783545 0.0974855824682814;0.939607843137255 0.471372549019608 0.0949019607843137;0.937393310265283 0.466328335255671 0.092318339100346;0.93517877739331 0.461284121491734 0.0897347174163783;0.932964244521338 0.456239907727797 0.0871510957324106;0.930749711649366 0.45119569396386 0.0845674740484429;0.928535178777393 0.446151480199923 0.0819838523644752;0.926320645905421 0.441107266435986 0.0794002306805075;0.923029603998462 0.436447520184544 0.0770472895040369;0.919092656670511 0.4320184544406 0.0748327566320646;0.915155709342561 0.427589388696655 0.0726182237600923;0.91121876201461 0.42316032295271 0.07040369088812;0.907281814686659 0.418731257208766 0.0681891580161477;0.903344867358708 0.414302191464821 0.0659746251441753;0.899407920030757 0.409873125720877 0.063760092272203;0.895470972702807 0.405444059976932 0.0615455594002307;0.891534025374856 0.401014994232987 0.0593310265282584;0.887597078046905 0.396585928489043 0.057116493656286;0.883660130718954 0.392156862745098 0.0549019607843137;0.879723183391004 0.387727797001153 0.0526874279123414;0.875786236063053 0.383298731257209 0.0504728950403691;0.871849288735102 0.378869665513264 0.0482583621683968;0.867912341407151 0.374440599769319 0.0460438292964245;0.8639753940792 0.370011534025375 0.0438292964244521;0.86003844675125 0.36558246828143 0.0416147635524798;0.856101499423299 0.361153402537486 0.0394002306805075;0.852164552095348 0.356724336793541 0.0371856978085352;0.848227604767397 0.352295271049596 0.0349711649365629;0.844290657439447 0.347866205305652 0.0327566320645906;0.840353710111496 0.343437139561707 0.0305420991926182;0.836416762783545 0.339008073817762 0.0283275663206459;0.832479815455594 0.334579008073818 0.0261130334486736;0.828542868127643 0.330149942329873 0.0238985005767013;0.824605920799693 0.325720876585928 0.0216839677047289;0.820668973471742 0.321291810841984 0.0194694348327566;0.816732026143791 0.316862745098039 0.0172549019607843;0.81279507881584 0.312433679354095 0.015040369088812;0.808858131487889 0.30800461361015 0.0128258362168397;0.804921184159939 0.303575547866205 0.0106113033448674;0.800984236831988 0.299146482122261 0.00839677047289504;0.795294117647059 0.295824682814302 0.00802768166089965;0.789019607843137 0.292871972318339 0.00827374086889658;0.782745098039216 0.289919261822376 0.0085198000768935;0.776470588235294 0.286966551326413 0.00876585928489043;0.770196078431373 0.28401384083045 0.00901191849288734;0.763921568627451 0.281061130334487 0.00925797770088427;0.757647058823529 0.278108419838524 0.0095040369088812;0.751372549019608 0.275155709342561 0.00975009611687812;0.745098039215686 0.272202998846597 0.00999615532487505;0.738823529411765 0.269250288350634 0.010242214532872;0.732549019607843 0.266297577854671 0.0104882737408689;0.726274509803922 0.263344867358708 0.0107343329488658;0.72 0.260392156862745 0.0109803921568627;0.713725490196078 0.257439446366782 0.0112264513648597;0.707450980392157 0.254486735870819 0.0114725105728566;0.701176470588235 0.251534025374856 0.0117185697808535;0.694901960784314 0.248581314878893 0.0119646289888504;0.688627450980392 0.24562860438293 0.0122106881968474;0.682352941176471 0.242675893886967 0.0124567474048443;0.676078431372549 0.239723183391003 0.0127028066128412;0.669803921568628 0.23677047289504 0.0129488658208381;0.663529411764706 0.233817762399077 0.0131949250288351;0.657254901960784 0.230865051903114 0.013440984236832;0.650980392156863 0.227912341407151 0.0136870434448289;0.644705882352941 0.224959630911188 0.0139331026528258;0.63843137254902 0.222006920415225 0.0141791618608228;0.632156862745098 0.219054209919262 0.0144252210688197;0.625882352941176 0.216101499423299 0.0146712802768166;0.619607843137255 0.213148788927336 0.0149173394848135;0.613333333333333 0.210196078431373 0.0151633986928105;0.607058823529412 0.207243367935409 0.0154094579008074;0.60078431372549 0.204290657439446 0.0156555171088043;0.594509803921569 0.202306805074971 0.0159015763168012;0.588235294117647 0.200461361014994 0.0161476355247982;0.581960784313725 0.198615916955017 0.0163936947327951;0.575686274509804 0.19677047289504 0.016639753940792;0.569411764705883 0.194925028835063 0.0168858131487889;0.563137254901961 0.193079584775086 0.0171318723567859;0.556862745098039 0.19123414071511 0.0173779315647828;0.550588235294118 0.189388696655133 0.0176239907727797;0.544313725490196 0.187543252595156 0.0178700499807766;0.538039215686275 0.185697808535179 0.0181161091887735;0.531764705882353 0.183852364475202 0.0183621683967705;0.525490196078431 0.182006920415225 0.0186082276047674;0.51921568627451 0.180161476355248 0.0188542868127643;0.512941176470588 0.178316032295271 0.0191003460207612;0.506666666666667 0.176470588235294 0.0193464052287582;0.500392156862745 0.174625144175317 0.0195924644367551;0.494117647058824 0.17277970011534 0.019838523644752;0.487843137254902 0.170934256055363 0.0200845828527489;0.48156862745098 0.169088811995386 0.0203306420607459;0.475294117647059 0.167243367935409 0.0205767012687428;0.469019607843137 0.165397923875433 0.0208227604767397;0.462745098039216 0.163552479815456 0.0210688196847366;0.456470588235294 0.161707035755479 0.0213148788927336;0.450196078431373 0.159861591695502 0.0215609381007305;0.443921568627451 0.158016147635525 0.0218069973087274;0.437647058823529 0.156170703575548 0.0220530565167243;0.431372549019608 0.154325259515571 0.0222991157247213;0.425098039215686 0.152479815455594 0.0225451749327182;0.418823529411765 0.150634371395617 0.0227912341407151;0.412549019607843 0.14878892733564 0.023037293348712;0.406274509803922 0.146943483275663 0.023283352556709;0.4 0.145098039215686 0.0235294117647059];

num = size(raw,1);

vec = linspace(0,num+1,N+2);
map = interp1(1:num,raw,vec(2:N+1),'linear','extrap');

map = max(0,min(1,map));
%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%inferno