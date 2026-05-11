module FHIR
  module R5
    class Citation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'versionAlgorithm' => ['string', 'Coding']
      }
      SEARCH_PARAMS = ['classification', 'classification-type', 'classifier', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'Citation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Citation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Citation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Citation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Citation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Citation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Citation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Citation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Citation.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'Citation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'Citation.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'versionAlgorithmString' => {'path'=>'Citation.versionAlgorithm[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'versionAlgorithmCoding' => {'valid_codes'=>{'http://hl7.org/fhir/version-algorithm'=>['semver', 'integer', 'alpha', 'date', 'natural']}, 'path'=>'Citation.versionAlgorithm[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/version-algorithm'}},
        'name' => {'path'=>'Citation.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Citation.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'Citation.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'Citation.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'Citation.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'Citation.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Citation.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Citation.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'Citation.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AF-BAL', 'AF-BAM', 'AF-BDG', 'AF-BDS', 'AF-BGL', 'AF-DAY', 'AF-FRA', 'AF-FYB', 'AF-GHA', 'AF-GHO', 'AF-HEL', 'AF-HER', 'AF-JOW', 'AF-KAB', 'AF-KAN', 'AF-KAP', 'AF-KDZ', 'AF-KHO', 'AF-KNR', 'AF-LAG', 'AF-LOG', 'AF-NAN', 'AF-NIM', 'AF-NUR', 'AF-PAN', 'AF-PAR', 'AF-PIA', 'AF-PKA', 'AF-SAM', 'AF-SAR', 'AF-TAK', 'AF-URU', 'AF-WAR', 'AF-ZAB', 'AX-AX', 'AL-01', 'AL-02', 'AL-03', 'AL-04', 'AL-05', 'AL-06', 'AL-07', 'AL-08', 'AL-09', 'AL-10', 'AL-11', 'AL-12', 'AL-BR', 'AL-BU', 'AL-DI', 'AL-DL', 'AL-DR', 'AL-DV', 'AL-EL', 'AL-ER', 'AL-FR', 'AL-GJ', 'AL-GR', 'AL-HA', 'AL-KA', 'AL-KB', 'AL-KC', 'AL-KO', 'AL-KR', 'AL-KU', 'AL-LB', 'AL-LE', 'AL-LU', 'AL-MK', 'AL-MM', 'AL-MR', 'AL-MT', 'AL-PG', 'AL-PQ', 'AL-PR', 'AL-PU', 'AL-SH', 'AL-SK', 'AL-SR', 'AL-TE', 'AL-TP', 'AL-TR', 'AL-VL', 'DZ-01', 'DZ-02', 'DZ-03', 'DZ-04', 'DZ-05', 'DZ-06', 'DZ-07', 'DZ-08', 'DZ-09', 'DZ-10', 'DZ-11', 'DZ-12', 'DZ-13', 'DZ-14', 'DZ-15', 'DZ-16', 'DZ-17', 'DZ-18', 'DZ-19', 'DZ-20', 'DZ-21', 'DZ-22', 'DZ-23', 'DZ-24', 'DZ-25', 'DZ-26', 'DZ-27', 'DZ-28', 'DZ-29', 'DZ-30', 'DZ-31', 'DZ-32', 'DZ-33', 'DZ-34', 'DZ-35', 'DZ-36', 'DZ-37', 'DZ-38', 'DZ-39', 'DZ-40', 'DZ-41', 'DZ-42', 'DZ-43', 'DZ-44', 'DZ-45', 'DZ-46', 'DZ-47', 'DZ-48', 'AS-AS', 'AD-02', 'AD-03', 'AD-04', 'AD-05', 'AD-06', 'AD-07', 'AD-08', 'AO-BGO', 'AO-BGU', 'AO-BIE', 'AO-CAB', 'AO-CCU', 'AO-CNN', 'AO-CNO', 'AO-CUS', 'AO-HUA', 'AO-HUI', 'AO-LNO', 'AO-LSU', 'AO-LUA', 'AO-MAL', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-ZAI', 'AI-AI', 'AQ-AQ', 'AG-03', 'AG-04', 'AG-05', 'AG-06', 'AG-07', 'AG-08', 'AG-10', 'AG-11', 'AR-A', 'AR-B', 'AR-C', 'AR-D', 'AR-E', 'AR-F', 'AR-G', 'AR-H', 'AR-J', 'AR-K', 'AR-L', 'AR-M', 'AR-N', 'AR-P', 'AR-Q', 'AR-R', 'AR-S', 'AR-T', 'AR-U', 'AR-V', 'AR-W', 'AR-X', 'AR-Y', 'AR-Z', 'AM-AG', 'AM-AR', 'AM-AV', 'AM-ER', 'AM-GR', 'AM-KT', 'AM-LO', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-VD', 'AW-AW', 'AU-ACT', 'AU-NSW', 'AU-NT', 'AU-QLD', 'AU-SA', 'AU-TAS', 'AU-VIC', 'AU-WA', 'AT-1', 'AT-2', 'AT-3', 'AT-4', 'AT-5', 'AT-6', 'AT-7', 'AT-8', 'AT-9', 'AZ-ABS', 'AZ-AGA', 'AZ-AGC', 'AZ-AGM', 'AZ-AGS', 'AZ-AGU', 'AZ-AST', 'AZ-BA', 'AZ-BAB', 'AZ-BAL', 'AZ-BAR', 'AZ-BEY', 'AZ-BIL', 'AZ-CAB', 'AZ-CAL', 'AZ-CUL', 'AZ-DAS', 'AZ-FUZ', 'AZ-GAD', 'AZ-GA', 'AZ-GOR', 'AZ-GOY', 'AZ-GYG', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-KAL', 'AZ-KAN', 'AZ-KUR', 'AZ-LAC', 'AZ-LA', 'AZ-LAN', 'AZ-LER', 'AZ-MAS', 'AZ-MI', 'AZ-NA', 'AZ-NEF', 'AZ-NV', 'AZ-NX', 'AZ-OGU', 'AZ-ORD', 'AZ-QAB', 'AZ-QAX', 'AZ-QAZ', 'AZ-QBA', 'AZ-QBI', 'AZ-QOB', 'AZ-QUS', 'AZ-SAB', 'AZ-SAD', 'AZ-SAH', 'AZ-SAK', 'AZ-SAL', 'AZ-SAR', 'AZ-SA', 'AZ-SAT', 'AZ-SBN', 'AZ-SIY', 'AZ-SKR', 'AZ-SMI', 'AZ-SM', 'AZ-SMX', 'AZ-SR', 'AZ-SUS', 'AZ-TAR', 'AZ-TOV', 'AZ-UCA', 'AZ-XAC', 'AZ-XA', 'AZ-XCI', 'AZ-XIZ', 'AZ-XVD', 'AZ-YAR', 'AZ-YEV', 'AZ-YE', 'AZ-ZAN', 'AZ-ZAQ', 'AZ-ZAR', 'BS-AK', 'BS-BI', 'BS-BP', 'BS-BY', 'BS-CE', 'BS-CI', 'BS-CK', 'BS-CO', 'BS-CS', 'BS-EG', 'BS-EX', 'BS-FP', 'BS-GC', 'BS-HI', 'BS-HT', 'BS-IN', 'BS-LI', 'BS-MC', 'BS-MG', 'BS-MI', 'BS-NE', 'BS-NO', 'BS-NS', 'BS-RC', 'BS-RI', 'BS-SA', 'BS-SE', 'BS-SO', 'BS-SS', 'BS-SW', 'BS-WG', 'BH-13', 'BH-14', 'BH-15', 'BH-16', 'BH-17', 'BD-01', 'BD-02', 'BD-03', 'BD-04', 'BD-05', 'BD-06', 'BD-07', 'BD-08', 'BD-09', 'BD-10', 'BD-11', 'BD-12', 'BD-13', 'BD-14', 'BD-15', 'BD-16', 'BD-17', 'BD-18', 'BD-19', 'BD-20', 'BD-21', 'BD-22', 'BD-23', 'BD-24', 'BD-25', 'BD-26', 'BD-27', 'BD-28', 'BD-29', 'BD-30', 'BD-31', 'BD-32', 'BD-33', 'BD-34', 'BD-35', 'BD-36', 'BD-37', 'BD-38', 'BD-39', 'BD-40', 'BD-41', 'BD-42', 'BD-43', 'BD-44', 'BD-45', 'BD-46', 'BD-47', 'BD-48', 'BD-49', 'BD-50', 'BD-51', 'BD-52', 'BD-53', 'BD-54', 'BD-55', 'BD-56', 'BD-57', 'BD-58', 'BD-59', 'BD-60', 'BD-61', 'BD-62', 'BD-63', 'BD-64', 'BD-A', 'BD-B', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BB-01', 'BB-02', 'BB-03', 'BB-04', 'BB-05', 'BB-06', 'BB-07', 'BB-08', 'BB-09', 'BB-10', 'BB-11', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MA', 'BY-MI', 'BY-VI', 'BE-BRU', 'BE-VAN', 'BE-VBR', 'BE-VLG', 'BE-VLI', 'BE-VOV', 'BE-VWV', 'BE-WAL', 'BE-WBR', 'BE-WHT', 'BE-WLG', 'BE-WLX', 'BE-WNA', 'BZ-BZ', 'BZ-CY', 'BZ-CZL', 'BZ-OW', 'BZ-SC', 'BZ-TOL', 'BJ-AK', 'BJ-AL', 'BJ-AQ', 'BJ-BO', 'BJ-CO', 'BJ-DO', 'BJ-KO', 'BJ-LI', 'BJ-MO', 'BJ-OU', 'BJ-PL', 'BJ-ZO', 'BM-BM', 'BT-11', 'BT-12', 'BT-13', 'BT-14', 'BT-15', 'BT-21', 'BT-22', 'BT-23', 'BT-24', 'BT-31', 'BT-32', 'BT-33', 'BT-34', 'BT-41', 'BT-42', 'BT-43', 'BT-44', 'BT-45', 'BT-GA', 'BT-TY', 'BO-B', 'BO-C', 'BO-H', 'BO-L', 'BO-N', 'BO-O', 'BO-P', 'BO-S', 'BO-T', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BA-01', 'BA-02', 'BA-03', 'BA-04', 'BA-05', 'BA-06', 'BA-07', 'BA-08', 'BA-09', 'BA-10', 'BA-BIH', 'BA-BRC', 'BA-SRP', 'BW-CE', 'BW-CH', 'BW-FR', 'BW-GA', 'BW-GH', 'BW-JW', 'BW-KG', 'BW-KL', 'BW-KW', 'BW-LO', 'BW-NE', 'BW-NW', 'BW-SE', 'BW-SO', 'BW-SP', 'BW-ST', 'BV-BV', 'BR-AC', 'BR-AL', 'BR-AM', 'BR-AP', 'BR-BA', 'BR-CE', 'BR-DF', 'BR-ES', 'BR-GO', 'BR-MA', 'BR-MG', 'BR-MS', 'BR-MT', 'BR-PA', 'BR-PB', 'BR-PE', 'BR-PI', 'BR-PR', 'BR-RJ', 'BR-RN', 'BR-RO', 'BR-RR', 'BR-RS', 'BR-SC', 'BR-SE', 'BR-SP', 'BR-TO', 'IO-IO', 'BN-BE', 'BN-BM', 'BN-TE', 'BN-TU', 'BG-01', 'BG-02', 'BG-03', 'BG-04', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-09', 'BG-10', 'BG-11', 'BG-12', 'BG-13', 'BG-14', 'BG-15', 'BG-16', 'BG-17', 'BG-18', 'BG-19', 'BG-20', 'BG-21', 'BG-22', 'BG-23', 'BG-24', 'BG-25', 'BG-26', 'BG-27', 'BG-28', 'BF-01', 'BF-02', 'BF-03', 'BF-04', 'BF-05', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-10', 'BF-11', 'BF-12', 'BF-13', 'BF-BAL', 'BF-BAM', 'BF-BAN', 'BF-BAZ', 'BF-BGR', 'BF-BLG', 'BF-BLK', 'BF-COM', 'BF-GAN', 'BF-GNA', 'BF-GOU', 'BF-HOU', 'BF-IOB', 'BF-KAD', 'BF-KEN', 'BF-KMD', 'BF-KMP', 'BF-KOP', 'BF-KOS', 'BF-KOT', 'BF-KOW', 'BF-LER', 'BF-LOR', 'BF-MOU', 'BF-NAM', 'BF-NAO', 'BF-NAY', 'BF-NOU', 'BF-OUB', 'BF-OUD', 'BF-PAS', 'BF-PON', 'BF-SEN', 'BF-SIS', 'BF-SMT', 'BF-SNG', 'BF-SOM', 'BF-SOR', 'BF-TAP', 'BF-TUI', 'BF-YAG', 'BF-YAT', 'BF-ZIR', 'BF-ZON', 'BF-ZOU', 'BI-BB', 'BI-BL', 'BI-BM', 'BI-BR', 'BI-CA', 'BI-CI', 'BI-GI', 'BI-KI', 'BI-KR', 'BI-KY', 'BI-MA', 'BI-MU', 'BI-MW', 'BI-MY', 'BI-NG', 'BI-RT', 'BI-RY', 'KH-10', 'KH-11', 'KH-12', 'KH-13', 'KH-14', 'KH-15', 'KH-16', 'KH-17', 'KH-18', 'KH-19', 'KH-1', 'KH-20', 'KH-21', 'KH-22', 'KH-23', 'KH-24', 'KH-2', 'KH-3', 'KH-4', 'KH-5', 'KH-6', 'KH-7', 'KH-8', 'KH-9', 'CM-AD', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-LT', 'CM-NO', 'CM-NW', 'CM-OU', 'CM-SU', 'CM-SW', 'CA-AB', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-NL', 'CA-NS', 'CA-NT', 'CA-NU', 'CA-ON', 'CA-PE', 'CA-QC', 'CA-SK', 'CA-YT', 'CV-B', 'CV-BR', 'CV-BV', 'CV-CA', 'CV-CF', 'CV-CR', 'CV-MA', 'CV-MO', 'CV-PA', 'CV-PN', 'CV-PR', 'CV-RB', 'CV-RG', 'CV-RS', 'CV-SD', 'CV-SF', 'CV-S', 'CV-SL', 'CV-SM', 'CV-SO', 'CV-SS', 'CV-SV', 'CV-TA', 'CV-TS', 'KY-KY', 'CF-AC', 'CF-BB', 'CF-BGF', 'CF-BK', 'CF-HK', 'CF-HM', 'CF-HS', 'CF-KB', 'CF-KG', 'CF-LB', 'CF-MB', 'CF-MP', 'CF-NM', 'CF-OP', 'CF-SE', 'CF-UK', 'CF-VK', 'TD-BA', 'TD-BG', 'TD-BO', 'TD-CB', 'TD-EE', 'TD-EO', 'TD-GR', 'TD-HL', 'TD-KA', 'TD-LC', 'TD-LO', 'TD-LR', 'TD-MA', 'TD-MC', 'TD-ME', 'TD-MO', 'TD-ND', 'TD-OD', 'TD-SA', 'TD-SI', 'TD-TA', 'TD-TI', 'TD-WF', 'CL-AI', 'CL-AN', 'CL-AP', 'CL-AR', 'CL-AT', 'CL-BI', 'CL-CO', 'CL-LI', 'CL-LL', 'CL-LR', 'CL-MA', 'CL-ML', 'CL-RM', 'CL-TA', 'CL-VS', 'CN-11', 'CN-12', 'CN-13', 'CN-14', 'CN-15', 'CN-21', 'CN-22', 'CN-23', 'CN-31', 'CN-32', 'CN-33', 'CN-34', 'CN-35', 'CN-36', 'CN-37', 'CN-41', 'CN-42', 'CN-43', 'CN-44', 'CN-45', 'CN-46', 'CN-50', 'CN-51', 'CN-52', 'CN-53', 'CN-54', 'CN-61', 'CN-62', 'CN-63', 'CN-64', 'CN-65', 'CN-71', 'CN-91', 'CN-92', 'CX-CX', 'CC-CC', 'CO-AMA', 'CO-ANT', 'CO-ARA', 'CO-ATL', 'CO-BOL', 'CO-BOY', 'CO-CAL', 'CO-CAQ', 'CO-CAS', 'CO-CAU', 'CO-CES', 'CO-CHO', 'CO-COR', 'CO-CUN', 'CO-DC', 'CO-GUA', 'CO-GUV', 'CO-HUI', 'CO-LAG', 'CO-MAG', 'CO-MET', 'CO-NAR', 'CO-NSA', 'CO-PUT', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-SAP', 'CO-SUC', 'CO-TOL', 'CO-VAC', 'CO-VAU', 'CO-VID', 'KM-A', 'KM-G', 'KM-M', 'CG-11', 'CG-12', 'CG-13', 'CG-14', 'CG-15', 'CG-16', 'CG-2', 'CG-5', 'CG-7', 'CG-8', 'CG-9', 'CG-BZV', 'CD-BC', 'CD-BN', 'CD-EQ', 'CD-KA', 'CD-KE', 'CD-KN', 'CD-KW', 'CD-MA', 'CD-NK', 'CD-OR', 'CD-SK', 'CK-CK', 'CR-A', 'CR-C', 'CR-G', 'CR-H', 'CR-L', 'CR-P', 'CR-SJ', 'CI-01', 'CI-02', 'CI-03', 'CI-04', 'CI-05', 'CI-06', 'CI-07', 'CI-08', 'CI-09', 'CI-10', 'CI-11', 'CI-12', 'CI-13', 'CI-14', 'CI-15', 'CI-16', 'CI-17', 'CI-18', 'CI-19', 'HR-01', 'HR-02', 'HR-03', 'HR-04', 'HR-05', 'HR-06', 'HR-07', 'HR-08', 'HR-09', 'HR-10', 'HR-11', 'HR-12', 'HR-13', 'HR-14', 'HR-15', 'HR-16', 'HR-17', 'HR-18', 'HR-19', 'HR-20', 'HR-21', 'CU-01', 'CU-03', 'CU-04', 'CU-05', 'CU-06', 'CU-07', 'CU-08', 'CU-09', 'CU-10', 'CU-11', 'CU-12', 'CU-13', 'CU-14', 'CU-15', 'CU-16', 'CU-99', 'CW-CW', 'CY-01', 'CY-02', 'CY-03', 'CY-04', 'CY-05', 'CY-06', 'CZ-101', 'CZ-102', 'CZ-103', 'CZ-104', 'CZ-105', 'CZ-106', 'CZ-107', 'CZ-108', 'CZ-109', 'CZ-10A', 'CZ-10B', 'CZ-10C', 'CZ-10D', 'CZ-10E', 'CZ-10F', 'CZ-201', 'CZ-202', 'CZ-203', 'CZ-204', 'CZ-205', 'CZ-206', 'CZ-207', 'CZ-208', 'CZ-209', 'CZ-20A', 'CZ-20B', 'CZ-20C', 'CZ-311', 'CZ-312', 'CZ-313', 'CZ-314', 'CZ-315', 'CZ-316', 'CZ-317', 'CZ-321', 'CZ-322', 'CZ-323', 'CZ-324', 'CZ-325', 'CZ-326', 'CZ-327', 'CZ-411', 'CZ-412', 'CZ-413', 'CZ-421', 'CZ-422', 'CZ-423', 'CZ-424', 'CZ-425', 'CZ-426', 'CZ-427', 'CZ-511', 'CZ-512', 'CZ-513', 'CZ-514'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'path'=>'Citation.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'Citation.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'Citation.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyrightLabel' => {'path'=>'Citation.copyrightLabel', 'type'=>'string', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'Citation.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'Citation.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'Citation.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'author' => {'path'=>'Citation.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'Citation.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'Citation.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'Citation.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'summary' => {'path'=>'Citation.summary', 'type'=>'Citation::Summary', 'min'=>0, 'max'=>Float::INFINITY},
        'classification' => {'path'=>'Citation.classification', 'type'=>'Citation::Classification', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Citation.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'currentState' => {'valid_codes'=>{'http://hl7.org/fhir/citation-status-type'=>['pubmed-pubstatus-received', 'pubmed-pubstatus-accepted', 'pubmed-pubstatus-epublish', 'pubmed-pubstatus-ppublish', 'pubmed-pubstatus-revised', 'pubmed-pubstatus-aheadofprint', 'pubmed-pubstatus-retracted', 'pubmed-pubstatus-ecollection', 'pubmed-pubstatus-pmc', 'pubmed-pubstatus-pmcr', 'pubmed-pubstatus-pubmed', 'pubmed-pubstatus-pubmedr', 'pubmed-pubstatus-premedline', 'pubmed-pubstatus-medline', 'pubmed-pubstatus-medliner', 'pubmed-pubstatus-entrez', 'pubmed-pubstatus-pmc-release', 'medline-completed', 'medline-in-process', 'medline-pubmed-not-medline', 'medline-in-data-review', 'medline-publisher', 'medline-medline', 'medline-oldmedline', 'pubmed-publication-status-ppublish', 'pubmed-publication-status-epublish', 'pubmed-publication-status-aheadofprint']}, 'path'=>'Citation.currentState', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-status-type'}},
        'statusDate' => {'path'=>'Citation.statusDate', 'type'=>'Citation::StatusDate', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'Citation.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'citedArtifact' => {'path'=>'Citation.citedArtifact', 'type'=>'Citation::CitedArtifact', 'min'=>0, 'max'=>1}
      }

      class Summary < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Summary.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Summary.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Summary.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'style' => {'valid_codes'=>{'http://hl7.org/fhir/citation-summary-style'=>['vancouver', 'ama11', 'apa7', 'apa6', 'asa6', 'mla8', 'cochrane', 'elsevier-harvard', 'nature', 'acs', 'chicago-a-17', 'chicago-b-17', 'ieee', 'comppub']}, 'path'=>'Summary.style', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-summary-style'}},
          'text' => {'path'=>'Summary.text', 'type'=>'markdown', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :style             # 0-1 CodeableConcept
        attr_accessor :text              # 1-1 markdown
      end

      class Classification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Classification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Classification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Classification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/citation-classification-type'=>['citation-source', 'medline-owner', 'fevir-platform-use']}, 'path'=>'Classification.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-classification-type'}},
          'classifier' => {'valid_codes'=>{'http://hl7.org/fhir/citation-artifact-classifier'=>['audio', 'D001877', 'cds-artifact', 'D016420', 'common-share', 'D019991', 'D064886', 'dataset-unpublished', 'Electronic', 'Electronic-eCollection', 'Electronic-Print', 'executable-app', 'fhir-resource', 'image', 'interactive-form', 'D016428', 'D016422', 'machine-code', 'medline-base', 'prediction-model', 'D000076942', 'Print', 'Print-Electronic', 'project-specific', 'protocol', 'pseudocode', 'D016425', 'standard-specification', 'terminology', 'D059040', 'webpage']}, 'path'=>'Classification.classifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :classifier        # 0-* [ CodeableConcept ]
      end

      class StatusDate < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'StatusDate.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'StatusDate.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'StatusDate.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'activity' => {'valid_codes'=>{'http://hl7.org/fhir/citation-status-type'=>['pubmed-pubstatus-received', 'pubmed-pubstatus-accepted', 'pubmed-pubstatus-epublish', 'pubmed-pubstatus-ppublish', 'pubmed-pubstatus-revised', 'pubmed-pubstatus-aheadofprint', 'pubmed-pubstatus-retracted', 'pubmed-pubstatus-ecollection', 'pubmed-pubstatus-pmc', 'pubmed-pubstatus-pmcr', 'pubmed-pubstatus-pubmed', 'pubmed-pubstatus-pubmedr', 'pubmed-pubstatus-premedline', 'pubmed-pubstatus-medline', 'pubmed-pubstatus-medliner', 'pubmed-pubstatus-entrez', 'pubmed-pubstatus-pmc-release', 'medline-completed', 'medline-in-process', 'medline-pubmed-not-medline', 'medline-in-data-review', 'medline-publisher', 'medline-medline', 'medline-oldmedline', 'pubmed-publication-status-ppublish', 'pubmed-publication-status-epublish', 'pubmed-publication-status-aheadofprint']}, 'path'=>'StatusDate.activity', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-status-type'}},
          'actual' => {'path'=>'StatusDate.actual', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'StatusDate.period', 'type'=>'Period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :activity          # 1-1 CodeableConcept
        attr_accessor :actual            # 0-1 boolean
        attr_accessor :period            # 1-1 Period
      end

      class CitedArtifact < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'CitedArtifact.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CitedArtifact.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'CitedArtifact.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'CitedArtifact.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedIdentifier' => {'path'=>'CitedArtifact.relatedIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'dateAccessed' => {'path'=>'CitedArtifact.dateAccessed', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'version' => {'path'=>'CitedArtifact.version', 'type'=>'Citation::CitedArtifact::Version', 'min'=>0, 'max'=>1},
          'currentState' => {'valid_codes'=>{'http://hl7.org/fhir/cited-artifact-status-type'=>['created', 'submitted', 'withdrawn', 'pre-review', 'under-review', 'post-review-pre-published', 'rejected', 'published-early-form', 'published-final-form', 'accepted', 'archived', 'retracted', 'draft', 'active', 'approved', 'unknown']}, 'path'=>'CitedArtifact.currentState', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-status-type'}},
          'statusDate' => {'path'=>'CitedArtifact.statusDate', 'type'=>'Citation::CitedArtifact::StatusDate', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'path'=>'CitedArtifact.title', 'type'=>'Citation::CitedArtifact::Title', 'min'=>0, 'max'=>Float::INFINITY},
          'abstract' => {'path'=>'CitedArtifact.abstract', 'type'=>'Citation::CitedArtifact::Abstract', 'min'=>0, 'max'=>Float::INFINITY},
          'part' => {'path'=>'CitedArtifact.part', 'type'=>'Citation::CitedArtifact::Part', 'min'=>0, 'max'=>1},
          'relatesTo' => {'path'=>'CitedArtifact.relatesTo', 'type'=>'Citation::CitedArtifact::RelatesTo', 'min'=>0, 'max'=>Float::INFINITY},
          'publicationForm' => {'path'=>'CitedArtifact.publicationForm', 'type'=>'Citation::CitedArtifact::PublicationForm', 'min'=>0, 'max'=>Float::INFINITY},
          'webLocation' => {'path'=>'CitedArtifact.webLocation', 'type'=>'Citation::CitedArtifact::WebLocation', 'min'=>0, 'max'=>Float::INFINITY},
          'classification' => {'path'=>'CitedArtifact.classification', 'type'=>'Citation::CitedArtifact::Classification', 'min'=>0, 'max'=>Float::INFINITY},
          'contributorship' => {'path'=>'CitedArtifact.contributorship', 'type'=>'Citation::CitedArtifact::Contributorship', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'CitedArtifact.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Version < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Version.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Version.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Version.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'value' => {'path'=>'Version.value', 'type'=>'string', 'min'=>1, 'max'=>1},
            'baseCitation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'path'=>'Version.baseCitation', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :value             # 1-1 string
          attr_accessor :baseCitation      # 0-1 Reference(Citation)
        end

        class StatusDate < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'StatusDate.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'StatusDate.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'StatusDate.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'activity' => {'valid_codes'=>{'http://hl7.org/fhir/cited-artifact-status-type'=>['created', 'submitted', 'withdrawn', 'pre-review', 'under-review', 'post-review-pre-published', 'rejected', 'published-early-form', 'published-final-form', 'accepted', 'archived', 'retracted', 'draft', 'active', 'approved', 'unknown']}, 'path'=>'StatusDate.activity', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-status-type'}},
            'actual' => {'path'=>'StatusDate.actual', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'period' => {'path'=>'StatusDate.period', 'type'=>'Period', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :activity          # 1-1 CodeableConcept
          attr_accessor :actual            # 0-1 boolean
          attr_accessor :period            # 1-1 Period
        end

        class Title < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Title.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Title.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Title.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/title-type'=>['primary', 'official', 'scientific', 'plain-language', 'subtitle', 'short-title', 'acronym', 'earlier-title', 'language', 'autotranslated', 'human-use', 'machine-use', 'duplicate-uid']}, 'path'=>'Title.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/title-type'}},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bg', 'bg-BG', 'bn', 'cs', 'cs-CZ', 'bs', 'bs-BA', 'da', 'da-DK', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'el-GR', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'et', 'et-EE', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fi-FI', 'fr-CA', 'fy', 'fy-NL', 'hi', 'hr', 'hr-HR', 'is', 'is-IS', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'lt', 'lt-LT', 'lv', 'lv-LV', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pl-PL', 'pt', 'pt-PT', 'pt-BR', 'ro', 'ro-RO', 'ru', 'ru-RU', 'sk', 'sk-SK', 'sl', 'sl-SI', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Title.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'text' => {'path'=>'Title.text', 'type'=>'markdown', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-* [ CodeableConcept ]
          attr_accessor :language          # 0-1 CodeableConcept
          attr_accessor :text              # 1-1 markdown
        end

        class Abstract < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Abstract.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Abstract.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Abstract.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/cited-artifact-abstract-type'=>['primary-human-use', 'primary-machine-use', 'truncated', 'short-abstract', 'long-abstract', 'plain-language', 'different-publisher', 'language', 'autotranslated', 'duplicate-pmid', 'earlier-abstract']}, 'path'=>'Abstract.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-abstract-type'}},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bg', 'bg-BG', 'bn', 'cs', 'cs-CZ', 'bs', 'bs-BA', 'da', 'da-DK', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'el-GR', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'et', 'et-EE', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fi-FI', 'fr-CA', 'fy', 'fy-NL', 'hi', 'hr', 'hr-HR', 'is', 'is-IS', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'lt', 'lt-LT', 'lv', 'lv-LV', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pl-PL', 'pt', 'pt-PT', 'pt-BR', 'ro', 'ro-RO', 'ru', 'ru-RU', 'sk', 'sk-SK', 'sl', 'sl-SI', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Abstract.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'text' => {'path'=>'Abstract.text', 'type'=>'markdown', 'min'=>1, 'max'=>1},
            'copyright' => {'path'=>'Abstract.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :language          # 0-1 CodeableConcept
          attr_accessor :text              # 1-1 markdown
          attr_accessor :copyright         # 0-1 markdown
        end

        class Part < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Part.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Part.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Part.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/cited-artifact-part-type'=>['pages', 'sections', 'paragraphs', 'lines', 'tables', 'figures', 'supplement', 'supplement-subpart', 'article-set']}, 'path'=>'Part.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-part-type'}},
            'value' => {'path'=>'Part.value', 'type'=>'string', 'min'=>0, 'max'=>1},
            'baseCitation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'path'=>'Part.baseCitation', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :value             # 0-1 string
          attr_accessor :baseCitation      # 0-1 Reference(Citation)
        end

        class RelatesTo < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'RelatesTo.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'RelatesTo.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'RelatesTo.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/related-artifact-type'=>['documentation', 'justification', 'citation', 'predecessor', 'successor', 'derived-from', 'depends-on', 'composed-of', 'part-of', 'amends', 'amended-with', 'appends', 'appended-with', 'cites', 'cited-by', 'comments-on', 'comment-in', 'contains', 'contained-in', 'corrects', 'correction-in', 'replaces', 'replaced-with', 'retracts', 'retracted-by', 'signs', 'similar-to', 'supports', 'supported-with', 'transforms', 'transformed-into', 'transformed-with', 'documents', 'specification-of', 'created-with', 'cite-as'], 'http://hl7.org/fhir/related-artifact-type-expanded'=>['reprint', 'reprint-of']}, 'path'=>'RelatesTo.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/related-artifact-type-all'}},
            'classifier' => {'valid_codes'=>{'http://hl7.org/fhir/citation-artifact-classifier'=>['audio', 'D001877', 'cds-artifact', 'D016420', 'common-share', 'D019991', 'D064886', 'dataset-unpublished', 'Electronic', 'Electronic-eCollection', 'Electronic-Print', 'executable-app', 'fhir-resource', 'image', 'interactive-form', 'D016428', 'D016422', 'machine-code', 'medline-base', 'prediction-model', 'D000076942', 'Print', 'Print-Electronic', 'project-specific', 'protocol', 'pseudocode', 'D016425', 'standard-specification', 'terminology', 'D059040', 'webpage']}, 'path'=>'RelatesTo.classifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}},
            'label' => {'path'=>'RelatesTo.label', 'type'=>'string', 'min'=>0, 'max'=>1},
            'display' => {'path'=>'RelatesTo.display', 'type'=>'string', 'min'=>0, 'max'=>1},
            'citation' => {'path'=>'RelatesTo.citation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
            'document' => {'path'=>'RelatesTo.document', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
            'resource' => {'path'=>'RelatesTo.resource', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'resourceReference' => {'path'=>'RelatesTo.resourceReference', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 code
          attr_accessor :classifier        # 0-* [ CodeableConcept ]
          attr_accessor :label             # 0-1 string
          attr_accessor :display           # 0-1 string
          attr_accessor :citation          # 0-1 markdown
          attr_accessor :document          # 0-1 Attachment
          attr_accessor :resource          # 0-1 canonical
          attr_accessor :resourceReference # 0-1 Reference()
        end

        class PublicationForm < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'PublicationForm.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'PublicationForm.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'PublicationForm.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'publishedIn' => {'path'=>'PublicationForm.publishedIn', 'type'=>'Citation::CitedArtifact::PublicationForm::PublishedIn', 'min'=>0, 'max'=>1},
            'citedMedium' => {'valid_codes'=>{'http://hl7.org/fhir/cited-medium'=>['internet', 'print', 'offline-digital-storage', 'internet-without-issue', 'print-without-issue', 'offline-digital-storage-without-issue']}, 'path'=>'PublicationForm.citedMedium', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-medium'}},
            'volume' => {'path'=>'PublicationForm.volume', 'type'=>'string', 'min'=>0, 'max'=>1},
            'issue' => {'path'=>'PublicationForm.issue', 'type'=>'string', 'min'=>0, 'max'=>1},
            'articleDate' => {'path'=>'PublicationForm.articleDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
            'publicationDateText' => {'path'=>'PublicationForm.publicationDateText', 'type'=>'string', 'min'=>0, 'max'=>1},
            'publicationDateSeason' => {'path'=>'PublicationForm.publicationDateSeason', 'type'=>'string', 'min'=>0, 'max'=>1},
            'lastRevisionDate' => {'path'=>'PublicationForm.lastRevisionDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
            'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bg', 'bg-BG', 'bn', 'cs', 'cs-CZ', 'bs', 'bs-BA', 'da', 'da-DK', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'el-GR', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'et', 'et-EE', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fi-FI', 'fr-CA', 'fy', 'fy-NL', 'hi', 'hr', 'hr-HR', 'is', 'is-IS', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'lt', 'lt-LT', 'lv', 'lv-LV', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pl-PL', 'pt', 'pt-PT', 'pt-BR', 'ro', 'ro-RO', 'ru', 'ru-RU', 'sk', 'sk-SK', 'sl', 'sl-SI', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'PublicationForm.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
            'accessionNumber' => {'path'=>'PublicationForm.accessionNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
            'pageString' => {'path'=>'PublicationForm.pageString', 'type'=>'string', 'min'=>0, 'max'=>1},
            'firstPage' => {'path'=>'PublicationForm.firstPage', 'type'=>'string', 'min'=>0, 'max'=>1},
            'lastPage' => {'path'=>'PublicationForm.lastPage', 'type'=>'string', 'min'=>0, 'max'=>1},
            'pageCount' => {'path'=>'PublicationForm.pageCount', 'type'=>'string', 'min'=>0, 'max'=>1},
            'copyright' => {'path'=>'PublicationForm.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1}
          }

          class PublishedIn < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'PublishedIn.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'PublishedIn.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'PublishedIn.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/published-in-type'=>['D020492', 'D019991', 'D001877', 'D064886']}, 'path'=>'PublishedIn.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/published-in-type'}},
              'identifier' => {'path'=>'PublishedIn.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
              'title' => {'path'=>'PublishedIn.title', 'type'=>'string', 'min'=>0, 'max'=>1},
              'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PublishedIn.publisher', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'publisherLocation' => {'path'=>'PublishedIn.publisherLocation', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :identifier        # 0-* [ Identifier ]
            attr_accessor :title             # 0-1 string
            attr_accessor :publisher         # 0-1 Reference(Organization)
            attr_accessor :publisherLocation # 0-1 string
          end

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :publishedIn           # 0-1 Citation::CitedArtifact::PublicationForm::PublishedIn
          attr_accessor :citedMedium           # 0-1 CodeableConcept
          attr_accessor :volume                # 0-1 string
          attr_accessor :issue                 # 0-1 string
          attr_accessor :articleDate           # 0-1 dateTime
          attr_accessor :publicationDateText   # 0-1 string
          attr_accessor :publicationDateSeason # 0-1 string
          attr_accessor :lastRevisionDate      # 0-1 dateTime
          attr_accessor :language              # 0-* [ CodeableConcept ]
          attr_accessor :accessionNumber       # 0-1 string
          attr_accessor :pageString            # 0-1 string
          attr_accessor :firstPage             # 0-1 string
          attr_accessor :lastPage              # 0-1 string
          attr_accessor :pageCount             # 0-1 string
          attr_accessor :copyright             # 0-1 markdown
        end

        class WebLocation < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'WebLocation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'WebLocation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'WebLocation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'classifier' => {'valid_codes'=>{'http://hl7.org/fhir/artifact-url-classifier'=>['abstract', 'full-text', 'supplement', 'webpage', 'file-directory', 'code-repository', 'restricted', 'compressed-file', 'doi-based', 'pdf', 'json', 'xml', 'version-specific', 'computable-resource', 'not-specified']}, 'path'=>'WebLocation.classifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-url-classifier'}},
            'url' => {'path'=>'WebLocation.url', 'type'=>'uri', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :classifier        # 0-* [ CodeableConcept ]
          attr_accessor :url               # 0-1 uri
        end

        class Classification < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Classification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Classification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Classification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/cited-artifact-classification-type'=>['publication-type', 'mesh-heading', 'supplemental-mesh-protocol', 'supplemental-mesh-disease', 'supplemental-mesh-organism', 'keyword', 'citation-subset', 'chemical', 'publishing-model', 'knowledge-artifact-type', 'coverage']}, 'path'=>'Classification.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/cited-artifact-classification-type'}},
            'classifier' => {'valid_codes'=>{'http://hl7.org/fhir/citation-artifact-classifier'=>['audio', 'D001877', 'cds-artifact', 'D016420', 'common-share', 'D019991', 'D064886', 'dataset-unpublished', 'Electronic', 'Electronic-eCollection', 'Electronic-Print', 'executable-app', 'fhir-resource', 'image', 'interactive-form', 'D016428', 'D016422', 'machine-code', 'medline-base', 'prediction-model', 'D000076942', 'Print', 'Print-Electronic', 'project-specific', 'protocol', 'pseudocode', 'D016425', 'standard-specification', 'terminology', 'D059040', 'webpage']}, 'path'=>'Classification.classifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/citation-artifact-classifier'}},
            'artifactAssessment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ArtifactAssessment'], 'path'=>'Classification.artifactAssessment', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                 # 0-1 string
          attr_accessor :extension          # 0-* [ Extension ]
          attr_accessor :modifierExtension  # 0-* [ Extension ]
          attr_accessor :type               # 0-1 CodeableConcept
          attr_accessor :classifier         # 0-* [ CodeableConcept ]
          attr_accessor :artifactAssessment # 0-* [ Reference(ArtifactAssessment) ]
        end

        class Contributorship < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Contributorship.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Contributorship.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Contributorship.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'complete' => {'path'=>'Contributorship.complete', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'entry' => {'path'=>'Contributorship.entry', 'type'=>'Citation::CitedArtifact::Contributorship::Entry', 'min'=>0, 'max'=>Float::INFINITY},
            'summary' => {'path'=>'Contributorship.summary', 'type'=>'Citation::CitedArtifact::Contributorship::Summary', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Entry < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Entry.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Entry.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Entry.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'contributor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Entry.contributor', 'type'=>'Reference', 'min'=>1, 'max'=>1},
              'forenameInitials' => {'path'=>'Entry.forenameInitials', 'type'=>'string', 'min'=>0, 'max'=>1},
              'affiliation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Entry.affiliation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
              'contributionType' => {'valid_codes'=>{'http://hl7.org/fhir/artifact-contribution-type'=>['conceptualization', 'data-curation', 'formal-analysis', 'funding-acquisition', 'investigation', 'methodology', 'project-administration', 'resources', 'software', 'supervision', 'validation', 'visualization', 'writing-original-draft', 'writing-review-editing']}, 'path'=>'Entry.contributionType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-contribution-type'}},
              'role' => {'valid_codes'=>{'http://hl7.org/fhir/contributor-role'=>['publisher', 'author', 'reviewer', 'endorser', 'editor', 'informant', 'funder']}, 'path'=>'Entry.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-role'}},
              'contributionInstance' => {'path'=>'Entry.contributionInstance', 'type'=>'Citation::CitedArtifact::Contributorship::Entry::ContributionInstance', 'min'=>0, 'max'=>Float::INFINITY},
              'correspondingContact' => {'path'=>'Entry.correspondingContact', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'rankingOrder' => {'path'=>'Entry.rankingOrder', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
            }

            class ContributionInstance < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'ContributionInstance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'ContributionInstance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'ContributionInstance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'type' => {'valid_codes'=>{'http://hl7.org/fhir/artifact-contribution-instance-type'=>['reviewed', 'approved', 'edited']}, 'path'=>'ContributionInstance.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/artifact-contribution-instance-type'}},
                'time' => {'path'=>'ContributionInstance.time', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :type              # 1-1 CodeableConcept
              attr_accessor :time              # 0-1 dateTime
            end

            attr_accessor :id                   # 0-1 string
            attr_accessor :extension            # 0-* [ Extension ]
            attr_accessor :modifierExtension    # 0-* [ Extension ]
            attr_accessor :contributor          # 1-1 Reference(Practitioner|Organization)
            attr_accessor :forenameInitials     # 0-1 string
            attr_accessor :affiliation          # 0-* [ Reference(Organization|PractitionerRole) ]
            attr_accessor :contributionType     # 0-* [ CodeableConcept ]
            attr_accessor :role                 # 0-1 CodeableConcept
            attr_accessor :contributionInstance # 0-* [ Citation::CitedArtifact::Contributorship::Entry::ContributionInstance ]
            attr_accessor :correspondingContact # 0-1 boolean
            attr_accessor :rankingOrder         # 0-1 positiveInt
          end

          class Summary < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Summary.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Summary.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Summary.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/contributor-summary-type'=>['author-string', 'contributorship-list', 'contributorship-statement', 'acknowledgement-list', 'acknowledgment-statement', 'funding-statement', 'competing-interests-statement']}, 'path'=>'Summary.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-type'}},
              'style' => {'valid_codes'=>{'http://hl7.org/fhir/contributor-summary-style'=>['a1full', 'a1init', 'a3full', 'a3init', 'a6full', 'a6init', 'aallfull', 'aallfullwithand', 'aallfullwithampersand', 'aallinit', 'aallinitwithand', 'aallinitwithampersand', 'contr-full-by-person', 'contr-init-by-person', 'contr-full-by-contr', 'contr-init-by-contr']}, 'path'=>'Summary.style', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-style'}},
              'source' => {'valid_codes'=>{'http://hl7.org/fhir/contributor-summary-source'=>['publisher-data', 'article-copy', 'citation-manager', 'custom']}, 'path'=>'Summary.source', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-summary-source'}},
              'value' => {'path'=>'Summary.value', 'type'=>'markdown', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :style             # 0-1 CodeableConcept
            attr_accessor :source            # 0-1 CodeableConcept
            attr_accessor :value             # 1-1 markdown
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :complete          # 0-1 boolean
          attr_accessor :entry             # 0-* [ Citation::CitedArtifact::Contributorship::Entry ]
          attr_accessor :summary           # 0-* [ Citation::CitedArtifact::Contributorship::Summary ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :relatedIdentifier # 0-* [ Identifier ]
        attr_accessor :dateAccessed      # 0-1 dateTime
        attr_accessor :version           # 0-1 Citation::CitedArtifact::Version
        attr_accessor :currentState      # 0-* [ CodeableConcept ]
        attr_accessor :statusDate        # 0-* [ Citation::CitedArtifact::StatusDate ]
        attr_accessor :title             # 0-* [ Citation::CitedArtifact::Title ]
        attr_accessor :abstract          # 0-* [ Citation::CitedArtifact::Abstract ]
        attr_accessor :part              # 0-1 Citation::CitedArtifact::Part
        attr_accessor :relatesTo         # 0-* [ Citation::CitedArtifact::RelatesTo ]
        attr_accessor :publicationForm   # 0-* [ Citation::CitedArtifact::PublicationForm ]
        attr_accessor :webLocation       # 0-* [ Citation::CitedArtifact::WebLocation ]
        attr_accessor :classification    # 0-* [ Citation::CitedArtifact::Classification ]
        attr_accessor :contributorship   # 0-1 Citation::CitedArtifact::Contributorship
        attr_accessor :note              # 0-* [ Annotation ]
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :versionAlgorithmString # 0-1 string
      attr_accessor :versionAlgorithmCoding # 0-1 Coding
      attr_accessor :name                   # 0-1 string
      attr_accessor :title                  # 0-1 string
      attr_accessor :status                 # 1-1 code
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :copyrightLabel         # 0-1 string
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :summary                # 0-* [ Citation::Summary ]
      attr_accessor :classification         # 0-* [ Citation::Classification ]
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :currentState           # 0-* [ CodeableConcept ]
      attr_accessor :statusDate             # 0-* [ Citation::StatusDate ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :citedArtifact          # 0-1 Citation::CitedArtifact

      def resourceType
        'Citation'
      end
    end
  end
end