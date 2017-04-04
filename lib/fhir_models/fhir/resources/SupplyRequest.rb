module FHIR
  class SupplyRequest < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    MULTIPLE_TYPES = {
      'occurrence' => ['dateTime', 'Period', 'Timing'],
      'reason' => ['CodeableConcept', 'Reference']
    }
    SEARCH_PARAMS = ['date', 'identifier', 'category', 'requester', 'status', 'supplier']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'SupplyRequest.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'SupplyRequest.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'SupplyRequest.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'SupplyRequest.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'SupplyRequest.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'SupplyRequest.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'SupplyRequest.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'SupplyRequest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'SupplyRequest.identifier', 'min'=>0, 'max'=>1},
      'status' => {'valid_codes'=>{'http://hl7.org/fhir/supplyrequest-status'=>['draft', 'active', 'suspended', 'cancelled', 'completed', 'entered-in-error', 'unknown', 'draft', 'active', 'suspended', 'cancelled', 'completed', 'entered-in-error', 'unknown']}, 'type'=>'code', 'path'=>'SupplyRequest.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-status'}},
      'category' => {'valid_codes'=>{'http://hl7.org/fhir/supply-kind'=>['central', 'nonstock', 'central', 'nonstock']}, 'type'=>'CodeableConcept', 'path'=>'SupplyRequest.category', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-kind'}},
      'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat', 'routine', 'urgent', 'asap', 'stat']}, 'type'=>'code', 'path'=>'SupplyRequest.priority', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
      'orderedItem' => {'type'=>'SupplyRequest::OrderedItem', 'path'=>'SupplyRequest.orderedItem', 'min'=>0, 'max'=>1},
      'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
      'occurrencePeriod' => {'type'=>'Period', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
      'occurrenceTiming' => {'type'=>'Timing', 'path'=>'SupplyRequest.occurrence[x]', 'min'=>0, 'max'=>1},
      'authoredOn' => {'type'=>'dateTime', 'path'=>'SupplyRequest.authoredOn', 'min'=>0, 'max'=>1},
      'requester' => {'type'=>'SupplyRequest::Requester', 'path'=>'SupplyRequest.requester', 'min'=>0, 'max'=>1},
      'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'SupplyRequest.supplier', 'min'=>0, 'max'=>Float::INFINITY},
      'reasonCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/supplyrequest-reason'=>['patient-care', 'ward-stock', 'patient-care', 'ward-stock']}, 'type'=>'CodeableConcept', 'path'=>'SupplyRequest.reason[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-reason'}},
      'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'SupplyRequest.reason[x]', 'min'=>0, 'max'=>1},
      'deliverFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'SupplyRequest.deliverFrom', 'min'=>0, 'max'=>1},
      'deliverTo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Patient'], 'type'=>'Reference', 'path'=>'SupplyRequest.deliverTo', 'min'=>0, 'max'=>1}
    }

    class OrderedItem < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'item' => ['CodeableConcept', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'OrderedItem.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'OrderedItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'OrderedItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'quantity' => {'type'=>'Quantity', 'path'=>'OrderedItem.quantity', 'min'=>1, 'max'=>1},
        'itemCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['102002', '120006', '125001', '126000', '130002', '131003', '159002', '164003', '178002', '186002', '187006', '200001', '217008', '231008', '238002', '261000', '296000', '322006', '327000', '329002', '336001', '340005', '363000', '370000', '371001', '377002', '392001', '395004', '412004', '424006', '425007', '432003', '438004', '462009', '472007', '476005', '498001', '501001', '505005', '506006', '515004', '519005', '521000', '529003', '538001', '566009', '576007', '578008', '584006', '585007', '591009', '593007', '594001', '597008', '604000', '611001', '620005', '648005', '662003', '668004', '683009', '686001', '693002', '698006', '699003', '704006', '732002', '735000', '747006', '773001', '785009', '804003', '819002', '850000', '859004', '860009', '873008', '876000', '877009', '889006', '896008', '905001', '923009', '925002', '963005', '974001', '979006', '993004', '1002007', '1010008', '1018001', '1025008', '1047008', '1050006', '1057009', '1065007', '1080001', '1091008', '1097007', '1105007', '1113008', '1137008', '1149009', '1160000', '1166006', '1169004', '1171004', '1185009', '1189003', '1190007', '1219001', '1223009', '1244009', '1248007', '1269009', '1272002', '1273007', '1313002', '1319003', '1320009', '1325004', '1331001', '1334009', '1336006', '1341003', '1346008', '1355006', '1368003', '1371006', '1373009', '1381005', '1394007', '1396009', '1405004', '1408002', '1416006', '1450002', '1466000', '1471007', '1472000', '1476002', '1477006', '1496005', '1506001', '1517000', '1530004', '1535009', '1536005', '1540001', '1545006', '1557002', '1565004', '1575001', '1603001', '1607000', '1609002', '1634002', '1649005', '1656004', '1660001', '1668008', '1672007', '1673002', '1675009', '1676005', '1681001', '1696002', '1701009', '1710001', '1726000', '1727009', '1740004', '1764003', '1768000', '1786002', '1793003', '1795005', '1798007', '1799004', '1823002', '1827001', '1886008', '1904005', '1914001', '1916004', '1940007', '1944003', '1956002', '1971003', '1975007', '1978009', '1985008', '1991005', '2000001', '2006007', '2008008', '2009000', '2017008', '2027002', '2029004', '2038002', '2039005', '2050008', '2064008', '2082006', '2085008', '2088005', '2096000', '2100004', '2101000', '2125008', '2130007', '2141009', '2147008', '2151005', '2154002', '2159007', '2163000', '2168009', '2179004', '2189000', '2194000', '2195004', '2197007', '2201007', '2208001', '2212007', '2215009', '2240002', '2249001', '2254005', '2260005', '2262002', '2264001', '2309006', '2311002', '2329007', '2331003', '2338009', '2343002', '2346005', '2354007', '2358005', '2369008', '2370009', '2376003', '2384004', '2404002', '2405001', '2414006', '2430003', '2431004', '2441001', '2444009', '2450004', '2462000', '2466002', '2500009', '2509005', '2516006', '2522002', '2529006', '2537003', '2568004', '2573005', '2575003', '2595009', '2597001', '2611008', '2637006', '2648004', '2649007', '2660003', '2671002', '2674005', '2676007', '2678008', '2680002', '2698003', '2705002', '2706001', '2719002', '2721007', '2728001', '2753003', '2754009', '2765004', '2778004', '2796008', '2799001', '2823004', '2832002', '2846002', '2869004', '2878005', '2880004', '2883002', '2913009', '2916001', '2925007', '2927004', '2938004', '2942001', '2950005', '2958003', '2964005', '2974008', '2988007', '2991007', '2995003', '3027009', '3031003', '3040004', '3045009', '3052006', '3066001', '3070009', '3087006', '3107005', '3108000', '3131000', '3136005', '3142009', '3145006', '3150000', '3151001', '3155005', '3161008', '3167007', '3187008', '3193000', '3197004', '3209002', '3212004', '3225007', '3232003', '3271000', '3273002', '3300001', '3318003', '3325005', '3339005', '3340007', '3342004', '3346001', '3378009', '3379001', '3392003', '3405005', '3411008', '3437006', '3440006', '3455002', '3463001', '3465008', '3466009', '3492002', '3493007', '3495000', '3501003', '3523004', '3532002', '3555004', '3579002', '3581000', '3587001', '3588006', '3592004', '3597005', '3601005', '3602003', '3610002', '3617004', '3648007', '3655009', '3672002', '3684000', '3689005', '3692009', '3693004', '3702007', '3710008', '3718001', '3726009', '3727000', '3730007', '3737005', '3742002', '3757009', '3771001', '3775005', '3776006', '3792001', '3793006', '3800009', '3807007', '3811001', '3812008', '3816006', '3823007', '3829006', '3834005', '3836007', '3844007', '3848005', '3849002', '3854006', '3874004', '3892007', '3896005', '3897001', '3906002', '3920009', '3930000', '3932008', '3941003', '3945007', '3958008', '3961009', '3976001', '3982003', '3983008', '3990003', '3994007', '4014000', '4024008', '4025009', '4043008', '4047009', '4048004', '4067000', '4076007', '4077003', '4080002', '4091009', '4097008', '4104007', '4105008', '4115002', '4137009', '4153007', '4167003', '4169000', '4177001', '4182008', '4188007', '4200007', '4201006', '4203009', '4207005', '4217000', '4218005', '4231000', '4239003', '4255005', '4289006', '4290002', '4314009', '4334005', '4342006', '4353000', '4355007', '4362003', '4370008', '4393002', '4401009', '4413004', '4422003', '4423008', '4425001', '4435007', '4437004', '4471008', '4479005', '4480008', '4509009', '4518006', '4534009', '4540002', '4546008', '4555006', '4560005', '4561009', '4564001', '4567008', '4582003', '4591004', '4610008', '4616002', '4629002', '4635002', '4643007', '4656000', '4674009', '4681002', '4693006', '4700006', '4706000', '4714006', '4728000', '4731004', '4732006', '4746006', '4761007', '4762000', '4777008', '4780009', '4786003', '4789005', '4793004', '4814001', '4824009', '4825005', '4831008', '4832001', '4833006', '4844003', '4864008', '4872005', '4878009', '4882006', '4889002', '4901003', '4925006', '4933007', '4940008', '4955004', '4962008', '4963003', '4965005', '4968007', '4986005', '5003005', '5004004', '5007006', '5024000', '5031001', '5040002', '5043000', '5045007', '5059000', '5060005', '5061009', '5064001', '5081005', '5086000', '5094007', '5098005', '5109006', '5142007', '5160007', '5163009', '5167005', '5172001', '5179005', '5200001', '5206007', '5220000', '5226006', '5250008', '5252000', '5253005', '5259009', '5289002', '5303002', '5305009', '5307001', '5312000', '5323001', '5330007', '5339008', '5340005', '5392001', '5395004', '5404007', '5405008', '5406009', '5420002', '5439007', '5442001', '5453007', '5471000', '5474008', '5477001', '5483003', '5504009', '5511008', '5513006', '5515004', '5533005', '5537006', '5540006', '5547009', '5548004', '5568005', '5573004', '5589001', '5590005', '5628003', '5629006', '5637003', '5641004', '5647000', '5656008', '5657004', '5659001', '5670008', '5681006', '5691000', '5692007', '5699003', '5700002', '5702005', '5704006', '5705007', '5739006', '5746002', '5757007', '5762008', '5764009', '5767002', '5774007', '5800007', '5813001', '5826002', '5827006', '5829009', '5830004', '5840001', '5858007', '5863006', '5896008', '5899001', '5907009', '5910002', '5915007', '5927005', '5931004', '5932006', '5950004', '5955009', '5977008', '5989005', '5991002', '6021003', '6038004', '6043006', '6044000', '6054001', '6056004', '6068008', '6083003', '6085005', '6088007', '6089004', '6091007', '6107003', '6109000', '6115000', '6135004', '6138002', '6162007', '6170002', '6172005', '6178009', '6179001', '6182006', '6197009', '6237004', '6249003', '6256009', '6257000', '6260007', '6261006', '6263009', '6264003', '6287006', '6291001', '6301006', '6310003', '6314007', '6333002', '6338006', '6356006', '6360009', '6367007', '6386004', '6394006', '6401007', '6409009', '6411000', '6422001', '6451002', '6455006', '6469006', '6478000', '6495008', '6507009', '6513000', '6516008', '6524003', '6529008', '6532006', '6590001', '6592009', '6602005', '6611005', '6612003', '6619007', '6642000', '6644004', '6671004', '6672006', '6699008', '6701008', '6702001', '6709005', '6710000', '6713003', '6717002', '6725000', '6730001', '6741004', '6755007', '6786001', '6790004', '6792007', '6808006', '6809003', '6814004', '6817006', '6826009', '6837005', '6854002', '6865007', '6873003', '6879004', '6881002', '6884005', '6890009', '6896003', '6910009', '6911008', '6916003', '6924008', '6925009', '6927001', '6937006', '6945001', '6952004', '6958000', '6961004', '6970001', '6973004', '6983000', '6992002', '6993007', '6999006', '7008002', '7018007', '7029006', '7030001', '7034005', '7045008', '7047000', '7049002', '7054006', '7056008', '7059001', '7061005', '7070008', '7084003', '7110002', '7120007', '7132006', '7139002', '7146006', '7152007', '7156005', '7158006', '7161007', '7179006', '7191002', '7208009', '7211005', '7237008', '7243005', '7269004', '7271004', '7280004', '7281000', '7284008', '7294003', '7302008', '7318002', '7321000', '7325009', '7327001', '7328006', '7330008', '7337006', '7348004', '7382005', '7401000', '7411007', '7427000', '7434003', '7446004', '7451005', '7460002', '7470000', '7489000', '7503004', '7509000', '7515000', '7537007', '7547005', '7549008', '7588005', '7608003', '7616007', '7648006', '7661006', '7670009', '7675004', '7679005', '7685003', '7696006', '7716001', '7737009', '7738004', '7761002', '7770004', '7774008', '7779003', '7785005', '7790008', '7791007', '7795003', '7801007', '7816005', '7834009', '7846008', '7848009', '7868003', '7879008', '7900007', '7904003', '7909008', '7924004', '7938006', '7945006', '7948008', '7953003', '7957002', '7961008', '7970006', '7974002', '7975001', '7979007', '7983007', '7985000', '7997004', '8000007', '8002004', '8025003', '8029009', '8030004', '8035009', '8048008', '8054009', '8055005', '8105004', '8108002', '8123007', '8132009', '8143001', '8153000', '8156008', '8164002', '8168004', '8179009', '8184003', '8190004', '8202008', '8203003', '8204009', '8222007', '8227001', '8230008', '8237006', '8252004', '8257005', '8261004', '8268005', '8270001', '8275006', '8295000', '8300003', '8310007', '8313009', '8340009', '8342001', '8343006', '8354001', '8355000', '8362009', '8365006', '8368008', '8376005', '8385005', '8397006', '8406008', '8429000', '8450009', '8452001', '8456003', '8460000', '8473001', '8474007', '8484008', '8485009', '8486005', '8487001', '8491006', '8492004', '8498000', '8507001', '8514004', '8520003', '8525008', '8529002', '8534003', '8537005', '8578007', '8591008', '8612007', '8620009', '8631001', '8653004', '8660005', '8687009', '8689007', '8701002', '8705006', '8731008', '8740007', '8761000', '8767001', '8785008', '8786009', '8795001', '8817004', '8818009', '8822004', '8830003', '8836009', '8844009', '8858006', '8865003', '8878003', '8882001', '8886003', '8908003', '8914005', '8919000', '8926000', '8945009', '8953001', '8963009', '8969008', '8977007', '8982000', '8987006', '8991001', '9010006', '9013008', '9021002', '9024005', '9045003', '9052001', '9054000', '9103003', '9110009', '9125009', '9159008', '9172009', '9174005', '9183000', '9189001', '9195000', '9197008', '9205004', '9220005', '9223007', '9234005', '9246009', '9253000', '9270008', '9271007']}, 'type'=>'CodeableConcept', 'path'=>'OrderedItem.item[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supply-item'}},
        'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'OrderedItem.item[x]', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                  # 0-1 string
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :quantity            # 1-1 Quantity
      attr_accessor :itemCodeableConcept # 0-1 CodeableConcept
      attr_accessor :itemReference       # 0-1 Reference(Medication|Substance|Device)
    end

    class Requester < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Requester.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Requester.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Requester.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'agent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'Requester.agent', 'min'=>1, 'max'=>1},
        'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Requester.onBehalfOf', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :agent             # 1-1 Reference(Practitioner|Organization|Patient|RelatedPerson|Device)
      attr_accessor :onBehalfOf        # 0-1 Reference(Organization)
    end

    attr_accessor :id                    # 0-1 id
    attr_accessor :meta                  # 0-1 Meta
    attr_accessor :implicitRules         # 0-1 uri
    attr_accessor :language              # 0-1 code
    attr_accessor :text                  # 0-1 Narrative
    attr_accessor :contained             # 0-* [ Resource ]
    attr_accessor :extension             # 0-* [ Extension ]
    attr_accessor :modifierExtension     # 0-* [ Extension ]
    attr_accessor :identifier            # 0-1 Identifier
    attr_accessor :status                # 0-1 code
    attr_accessor :category              # 0-1 CodeableConcept
    attr_accessor :priority              # 0-1 code
    attr_accessor :orderedItem           # 0-1 SupplyRequest::OrderedItem
    attr_accessor :occurrenceDateTime    # 0-1 dateTime
    attr_accessor :occurrencePeriod      # 0-1 Period
    attr_accessor :occurrenceTiming      # 0-1 Timing
    attr_accessor :authoredOn            # 0-1 dateTime
    attr_accessor :requester             # 0-1 SupplyRequest::Requester
    attr_accessor :supplier              # 0-* [ Reference(Organization) ]
    attr_accessor :reasonCodeableConcept # 0-1 CodeableConcept
    attr_accessor :reasonReference       # 0-1 Reference(Resource)
    attr_accessor :deliverFrom           # 0-1 Reference(Organization|Location)
    attr_accessor :deliverTo             # 0-1 Reference(Organization|Location|Patient)

    def resourceType
      'SupplyRequest'
    end
  end
end