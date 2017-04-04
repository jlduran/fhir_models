module FHIR
  class CareTeam < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['date', 'identifier', 'patient', 'category', 'context', 'encounter', 'participant', 'status', 'subject']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'CareTeam.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'CareTeam.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'CareTeam.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'CareTeam.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'CareTeam.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'CareTeam.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'CareTeam.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'CareTeam.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'CareTeam.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/care-team-status'=>['proposed', 'active', 'suspended', 'inactive', 'entered-in-error', 'proposed', 'active', 'suspended', 'inactive', 'entered-in-error']}, 'type'=>'code', 'path'=>'CareTeam.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/care-team-status'}},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/care-team-category'=>['event', 'encounter', 'episode', 'longitudinal', 'condition', 'clinical-research', 'event', 'encounter', 'episode', 'longitudinal', 'condition', 'clinical-research']}, 'type'=>'CodeableConcept', 'path'=>'CareTeam.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/care-team-category'}},
      'name' => {'type'=>'string', 'path'=>'CareTeam.name', 'min'=>0, 'max'=>1},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'type'=>'Reference', 'path'=>'CareTeam.subject', 'min'=>0, 'max'=>1},
      'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'CareTeam.context', 'min'=>0, 'max'=>1},
      'period' => {'type'=>'Period', 'path'=>'CareTeam.period', 'min'=>0, 'max'=>1},
      'participant' => {'type'=>'CareTeam::Participant', 'path'=>'CareTeam.participant', 'min'=>0, 'max'=>Float::INFINITY},
      'reasonCode' => {'valid_codes'=>{'http://snomed.info/sct'=>['109006', '122003', '127009', '129007', '134006', '140004', '144008', '147001', '150003', '151004', '162004', '165002', '168000', '171008', '172001', '175004', '177007', '179005', '181007', '183005', '184004', '188001', '192008', '193003', '195005', '198007', '199004', '208008', '216004', '219006', '222008', '223003', '228007', '241006', '242004', '253005', '257006', '258001', '264008', '276008', '279001', '281004', '282006', '290006', '292003', '297009', '299007', '303002', '308006', '310008', '313005', '317006', '320003', '324007', '330007', '335002', '341009', '349006', '355001', '357009', '358004', '359007', '360002', '364006', '366008', '368009', '369001', '378007', '382009', '383004', '385006', '387003', '398002', '407000', '408005', '409002', '426008', '431005', '437009', '440009', '442001', '443006', '447007', '450005', '452002', '460001', '467003', '470004', '479003', '486006', '488007', '490008', '496002', '504009', '517007', '518002', '520004', '527001', '536002', '539009', '547009', '548004', '554003', '555002', '563001', '568005', '586008', '590005', '596004', '599006', '600009', '602001', '607007', '610000', '613003', '615005', '616006', '626004', '631002', '634005', '640003', '643001', '646009', '649002', '651003', '652005', '655007', '658009', '663008', '664002', '666000', '675003', '682004', '685002', '701003', '703000', '714002', '715001', '718004', '733007', '734001', '736004', '750009', '755004', '756003', '758002', '775008', '776009', '781000', '786005', '787001', '788006', '792004', '799008', '801006', '805002', '811004', '813001', '815008', '816009', '818005', '825003', '827006', '832007', '834008', '841002', '842009', '843004', '844005', '845006', '849000', '857002', '862001', '865004', '871005', '874002', '875001', '888003', '890002', '899001', '903008', '904002', '908004', '919001', '928000', '931004', '932006', '934007', '943003', '954008', '961007', '962000', '964004', '965003', '975000', '978003', '981008', '984000', '987007', '991002', '998008', '1003002', '1020003', '1023001', '1027000', '1031006', '1033009', '1034003', '1038000', '1045000', '1046004', '1051005', '1055001', '1059007', '1070000', '1073003', '1074009', '1077002', '1079004', '1085006', '1089000', '1102005', '1107004', '1108009', '1111005', '1112003', '1116000', '1124005', '1125006', '1126007', '1131009', '1134001', '1135000', '1139006', '1140008', '1141007', '1145003', '1150009', '1151008', '1152001', '1155004', '1156003', '1168007', '1184008', '1192004', '1194003', '1196001', '1197005', '1201005', '1203008', '1207009', '1208004', '1212005', '1214006', '1230003', '1232006', '1239002', '1240000', '1259003', '1261007', '1264004', '1271009', '1280009', '1282001', '1283006', '1284000', '1286003', '1287007', '1297003', '1308001', '1310004', '1317001', '1318006', '1323006', '1332008', '1335005', '1343000', '1345007', '1351002', '1356007', '1361009', '1363007', '1367008', '1370007', '1372004', '1376001', '1378000', '1380006', '1383008', '1384002', '1386000', '1387009', '1388004', '1393001', '1395008', '1402001', '1412008', '1415005', '1418007', '1419004', '1426004', '1427008', '1430001', '1447000', '1469007', '1474004', '1475003', '1478001', '1479009', '1482004', '1486001', '1488000', '1489008', '1492007', '1493002', '1499003', '1512006', '1515008', '1518005', '1519002', '1521007', '1523005', '1525003', '1531000', '1532007', '1534008', '1538006', '1539003', '1542009', '1544005', '1551001', '1556006', '1563006', '1567007', '1588003', '1592005', '1593000', '1606009', '1608005', '1639007', '1647007', '1648002', '1654001', '1657008', '1658003', '1663004', '1667003', '1670004', '1671000', '1674008', '1679003', '1682008', '1685005', '1686006', '1694004', '1698001', '1703007', '1705000', '1708003', '1714005', '1717003', '1723008', '1724002', '1734006', '1735007', '1739001', '1742007', '1744008', '1748006', '1755008', '1761006', '1763009', '1767005', '1769008', '1771008', '1776003', '1777007', '1778002', '1779005', '1794009', '1816003', '1821000', '1822007', '1824008', '1826005', '1828006', '1829003', '1833005', '1835003', '1837006', '1845001', '1847009', '1848004', '1852004', '1855002', '1856001', '1857005', '1858000', '1860003', '1865008', '1869002', '1881003', '1892002', '1896004', '1897008', '1899006', '1903004', '1908008', '1909000', '1922008', '1926006', '1938002', '1939005', '1943009', '1953005', '1954004', '1955003', '1959009', '1961000', '1963002', '1965009', '1967001', '1973000', '1977004', '1979001', '1980003', '1981004', '1988005', '1989002', '2004005', '2012002', '2024009', '2028007', '2032001', '2036003', '2040007', '2041006', '2043009', '2053005', '2055003', '2058001', '2061000', '2065009', '2066005', '2070002', '2073000', '2087000', '2089002', '2091005', '2094002', '2102007', '2103002', '2107001', '2109003', '2114004', '2116002', '2120003', '2121004', '2128005', '2129002', '2132004', '2134003', '2136001', '2138000', '2145000', '2149006', '2158004', '2167004', '2169001', '2170000', '2176006', '2177002', '2186007', '2198002', '2202000', '2204004', '2213002', '2216005', '2217001', '2219003', '2224000', '2228002', '2229005', '2231001', '2237002', '2239004', '2241003', '2243000', '2245007', '2251002', '2256007', '2261009', '2268003', '2284002', '2295008', '2296009', '2298005', '2301009', '2303007', '2304001', '2307008', '2308003', '2312009', '2314005', '2326000', '2339001', '2341000', '2351004', '2355008', '2359002', '2365002', '2366001', '2367005', '2374000', '2385003', '2388001', '2390000', '2391001', '2396006', '2398007', '2403008', '2415007', '2418009', '2419001', '2420007', '2432006', '2435008', '2437000', '2438005', '2439002', '2443003', '2452007', '2463005', '2469009', '2470005', '2471009', '2472002', '2473007', '2477008', '2492009', '2495006', '2496007', '2506003', '2513003', '2518007', '2521009', '2523007', '2526004', '2528003', '2532009', '2534005', '2538008', '2541004', '2554006', '2556008', '2560006', '2562003', '2576002', '2581006', '2582004', '2583009', '2584003', '2585002', '2589008', '2591000', '2593002', '2602008', '2606006', '2615004', '2618002', '2622007', '2624008', '2625009', '2630008', '2634004', '2638001', '2640006', '2651006', '2655002', '2657005', '2663001', '2665008', '2683000', '2689001', '2694001', '2704003', '2707005', '2713001', '2724004', '2725003', '2733002', '2736005', '2740001', '2749000', '2751001', '2761008', '2764000', '2770006', '2772003', '2775001', '2776000', '2781009', '2782002', '2783007', '2786004', '2790002', '2805007', '2806008', '2807004', '2808009', '2815001', '2816000', '2818004', '2819007', '2825006', '2828008', '2829000', '2831009', '2835000', '2836004', '2838003', '2840008', '2850009', '2853006', '2856003', '2858002', '2884008', '2893009', '2897005', '2899008', '2900003', '2901004', '2902006', '2904007', '2910007', '2912004', '2917005', '2918000', '2919008', '2929001', '2935001', '2940009', '2946003', '2951009', '2955000', '2965006', '2967003', '2972007', '2973002', '2978006', '2981001', '2989004', '2990008', '2992000', '2994004', '2999009', '3002002', '3004001', '3006004', '3009006', '3013004', '3014005', '3018008', '3019000', '3021005', '3023008', '3032005', '3033000', '3038009', '3044008', '3053001', '3059002', '3067005', '3071008', '3072001', '3073006', '3084004', '3089009', '3094009', '3095005', '3097002', '3098007', '3105002', '3109008', '3110003', '3119002', '3129009', '3135009', '3140001', '3144005', '3158007', '3160009', '3163006', '3168002', '3185000', '3199001', '3200003', '3208005', '3214003', '3217005', '3218000', '3219008', '3228009', '3229001', '3230006', '3238004', '3239007', '3253007', '3254001', '3259006', '3261002', '3263004', '3272007', '3274008', '3275009', '3276005', '3277001', '3282008', '3283003', '3286006', '3289004', '3291007', '3298001', '3303004', '3304005', '3305006', '3308008', '3310005', '3321001', '3323003', '3327002', '3331008', '3344003', '3345002', '3355003', '3358001', '3368006', '3376008', '3381004', '3387000', '3391005', '3393008', '3398004', '3401001', '3415004', '3419005', '3421000', '3424008', '3426005', '3427001', '3434004', '3439009', '3441005', '3446000', '3449007', '3456001', '3458000', '3461004', '3464007', '3468005', '3469002', '3472009', '3474005', '3480002', '3482005', '3483000', '3487004', '3500002', '3502005', '3503000', '3505007', '3506008', '3507004', '3511005', '3514002', '3519007', '3528008', '3529000', '3530005', '3531009', '3533007', '3539006', '3542000', '3544004', '3545003', '3548001', '3549009', '3558002', '3560000', '3570003', '3571004', '3577000', '3585009', '3586005', '3589003', '3590007', '3591006', '3598000', '3611003', '3633001', '3634007', '3639002', '3640000', '3641001', '3642008', '3644009', '3649004', '3650004', '3652007', '3657001', '3660008', '3662000', '3677008', '3680009', '3681008', '3696007', '3699000', '3703002', '3704008', '3705009', '3712000', '3716002', '3720003', '3723001', '3733009', '3736001', '3738000', '3744001', '3745000', '3747008', '3750006', '3751005', '3752003', '3754002', '3755001', '3756000', '3759007', '3760002', '3762005', '3763000', '3783004', '3797007', '3798002', '3815005', '3820005', '3827008', '3830001', '3841004', '3845008', '3855007', '3859001', '3873005', '3885002', '3886001', '3899003', '3900008', '3902000', '3903005', '3908001', '3909009', '3913002', '3914008', '3928002', '3939004', '3944006', '3947004', '3950001', '3951002', '3972004', '3975002', '3978000', '3987009', '3993001', '3999002', '4003003', '4004009', '4006006', '4009004', '4016003', '4017007', '4022007', '4026005', '4030008', '4038001', '4039009', '4040006', '4041005', '4046000', '4062006', '4063001', '4069002', '4070001', '4075006', '4082005', '4088009', '4089001', '4092002', '4103001', '4106009', '4107000', '4113009', '4120002', '4124006', '4127004', '4129001', '4135001', '4136000', '4142001', '4152002', '4160001', '4168008', '4170004', '4174008', '4175009', '4178006', '4181001', '4183003', '4184009', '4191007', '4195003', '4197006', '4199009', '4208000', '4210003', '4223005', '4224004', '4225003', '4229009', '4232007', '4237001', '4240001', '4241002', '4242009', '4244005', '4248008', '4249000', '4251001', '4260009', '4262001', '4264000', '4269005', '4273008', '4275001', '4278004', '4283007', '4287008', '4294006', '4300009', '4301008', '4306003', '4307007', '4308002', '4310000', '4313003', '4316006', '4320005', '4324001', '4325000', '4332009', '4338008', '4340003', '4349002', '4354006', '4356008', '4359001', '4364002', '4367009', '4373005', '4374004', '4381006', '4386001', '4390004', '4397001', '4399003', '4403007', '4406004', '4409006', '4410001', '4412009', '4414005', '4416007', '4418008', '4426000', '4434006', '4439001', '4441000', '4445009', '4448006', '4451004', '4461006', '4463009', '4464003', '4465002', '4468000', '4470009', '4473006', '4477007', '4478002', '4481007', '4483005']}, 'type'=>'CodeableConcept', 'path'=>'CareTeam.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/clinical-findings'}},
      'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'type'=>'Reference', 'path'=>'CareTeam.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
      'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'CareTeam.managingOrganization', 'min'=>0, 'max'=>Float::INFINITY},
      'note' => {'type'=>'Annotation', 'path'=>'CareTeam.note', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Participant < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Participant.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Participant.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Participant.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'role' => {'valid_codes'=>{'http://snomed.info/sct'=>['270002', '375005', '444000', '609005', '1354005', '2272004', '2316007', '2368000', '2481008', '2959006', '3425009', '3851003', '4577005', '6676009', '8458002', '8674003', '9306000', '9947008', '10896006', '10960006', '11286003', '11393001', '11434005', '11773006', '11993008', '12241003', '12629003', '13038009', '13157002', '13443008', '13646006', '14469008', '15130002', '17219007', '17925003', '17945006', '18205005', '18906004', '19343003', '19686009', '21093007', '21464003', '21506002', '22387007', '22573006', '22609000', '22963000', '25211005', '27508009', '27733009', '28010004', '29539002', '29644004', '29787005', '30578000', '31656007', '31831004', '33969000', '34581001', '34871008', '34972000', '38048003', '38248007', '38265003', '38312007', '39062003', '40683002', '41057000', '41795004', '41953004', '44181008', '45929001', '46363003', '47801002', '48385004', '48673000', '50058005', '50261002', '51616000', '53201003', '54056000', '55538000', '58293006', '58626002', '60614009', '62090008', '62296006', '64988008', '65412001', '65616008', '65656005', '65853000', '66089001', '66839005', '67005001', '67147004', '67822003', '68021009', '70578009', '70862002', '70924004', '72012000', '72705000', '73678001', '74128007', '74489007', '75226009', '75615008', '76022008', '76087000', '78194006', '78272007', '78652007', '78872000', '79508001', '79756005', '80386000', '80587008', '81173009', '81276006', '81467001', '81706006', '82101005', '83408003', '83420006', '83559000', '84390006', '85058002', '85411004', '85683001', '86372007', '86764008', '88510002', '89681006', '90921004', '105428002', '105429005', '105431001', '105436006', '105437002', '105438007', '105449001', '105450001', '105451002', '105452009', '105453004', '105454005', '105455006', '105456007', '105457003', '105458008', '105459000', '105460005', '105461009', '105462002', '105463007', '105464001', '105465000', '105466004', '105467008', '105468003', '105469006', '105470007', '105471006', '105472004', '105473009', '105474003', '113157001', '113158006', '113159003', '113160008', '113161007', '113163005', '116153009', '116154003', '125677006', '125678001', '125679009', '127848009', '127849001', '127850001', '127851002', '133931009', '133932002', '133933007', '133936004', '133937008', '160234004', '160498000', '160505009', '160506005', '160540005', '160542002', '160543007', '160544001', '160545000', '160549006', '160557009', '160558004', '160560002', '160562005', '160563000', '160566008', '160567004', '160772005', '161158003', '224080001', '224526002', '224527006', '224528001', '224619008', '224627004', '248544006', '255409004', '257497009', '257498004', '257499007', '257500003', '257501004', '257502006', '257503001', '257504007', '257505008', '257506009', '257508005', '257509002', '257510007', '257511006', '257512004', '257513009', '257514003', '257516001', '257517005', '257518000', '257519008', '257521003', '257522005', '257523000', '257524006', '257525007', '257526008', '262043009', '266943008', '268557009', '271448006', '276035002', '276036001', '276037005', '276119007', '303069001', '303071001', '303072008', '303073003', '303118004', '303119007', '303120001', '303121002', '303122009', '303977004', '303980003', '303981004', '303983001', '303984007', '303985008', '303986009', '303987000', '303988005', '303989002', '303990006', '303991005', '303992003', '303993008', '309456003', '309687009', '309884000', '309885004', '309886003', '310543008', '313415001', '313416000', '314712007', '314767008', '339947000', '360852005', '360863008', '360984002', '366740002', '373864002', '373929005', '385435006', '390790000', '394566006', '394567002', '394568007', '394571004', '394619001', '394738000', '394854006', '394855007', '394856008', '394857004', '394858009', '394859001', '394860006', '394861005', '394862003', '394863008', '394921008', '407542009', '407543004', '410597007', '410598002', '410599005', '410600008', '410601007', '410602000', '410603005', '410604004', '413327003', '414043009', '416034003', '416035002', '416625007', '416800000', '418119000', '419358007', '420058008', '420158005', '427568008', '427729003', '427754003', '427755002', '427874000', '427950002', '427963008', '427981006', '428024001', '428315004', '428347009', '428373004', '428376007', '428378008', '428407001', '428408006', '428410008', '428496003', '428503004', '428504005', '428506007', '428620006', '428666001', '428792000', '428801007', '428815009', '428816005', '428820009', '428821008', '429158002', '429171004', '429379008', '429509008', '429511004', '429527006', '429533002', '429534008', '429539003', '429543004', '429544005', '429545006', '429547003', '429577009', '429644000', '429708003', '429732005', '429787006', '429790000', '430098004', '430101000', '430792005', '430882007', '431549007', '433152004', '433475001', '438347000', '441463002', '441465009', '441468006', '444018008', '444052006', '444053001', '444054007', '444055008', '444145006', '444146007', '444147003', '444148008', '444168002', '444169005', '444191003', '444192005', '444193000', '444194006', '444199001', '444210007', '444211006', '444212004', '444213009', '444241008', '444242001', '444243006', '444244000', '444278006', '444279003', '444280000', '444292000', '444293005', '444294004', '444295003', '444301002', '444302009', '444303004', '444304005', '444464007', '444870008', '446654005', '450768005', '699110007', '699111006', '713176007', '713177003', '713178008', '713179000', '713183000', '713184006', '713352007', '713353002', '713369009', '715167002', '471000122100', '1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45419001', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83189004', '83273008', '83685006', '85733003', '88189002', '88475002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '112247003', '158965000', '158966004', '158967008', '158968003', '158969006', '158970007', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159013006', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224553003', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224561008', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224605008', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309365006', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310183005', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397824005', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '3981000175106', '394745000', '394746004', '394747008', '394748003', '394749006', '394751005', '394757009', '394758004', '394760002', '394762005', '394763000', '394764006', '394765007', '398154004', '398255008']}, 'type'=>'CodeableConcept', 'path'=>'Participant.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/participant-role'}},
        'member' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'type'=>'Reference', 'path'=>'Participant.member', 'min'=>0, 'max'=>1},
        'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Participant.onBehalfOf', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'Participant.period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :role              # 0-1 CodeableConcept
      attr_accessor :member            # 0-1 Reference(Practitioner|RelatedPerson|Patient|Organization|CareTeam)
      attr_accessor :onBehalfOf        # 0-1 Reference(Organization)
      attr_accessor :period            # 0-1 Period
    end

    attr_accessor :id                   # 0-1 id
    attr_accessor :meta                 # 0-1 Meta
    attr_accessor :implicitRules        # 0-1 uri
    attr_accessor :language             # 0-1 code
    attr_accessor :text                 # 0-1 Narrative
    attr_accessor :contained            # 0-* [ Resource ]
    attr_accessor :extension            # 0-* [ Extension ]
    attr_accessor :modifierExtension    # 0-* [ Extension ]
    attr_accessor :identifier           # 0-* [ Identifier ]
    attr_accessor :status               # 0-1 code
    attr_accessor :category             # 0-* [ CodeableConcept ]
    attr_accessor :name                 # 0-1 string
    attr_accessor :subject              # 0-1 Reference(Patient|Group)
    attr_accessor :context              # 0-1 Reference(Encounter|EpisodeOfCare)
    attr_accessor :period               # 0-1 Period
    attr_accessor :participant          # 0-* [ CareTeam::Participant ]
    attr_accessor :reasonCode           # 0-* [ CodeableConcept ]
    attr_accessor :reasonReference      # 0-* [ Reference(Condition) ]
    attr_accessor :managingOrganization # 0-* [ Reference(Organization) ]
    attr_accessor :note                 # 0-* [ Annotation ]

    def resourceType
      'CareTeam'
    end
  end
end