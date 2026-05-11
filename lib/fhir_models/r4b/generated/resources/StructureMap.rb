module FHIR
  module R4B
    class StructureMap < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'StructureMap.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'StructureMap.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'StructureMap.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'StructureMap.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'StructureMap.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'StructureMap.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'StructureMap.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'StructureMap.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'StructureMap.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'identifier' => {'path'=>'StructureMap.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'StructureMap.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'StructureMap.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'title' => {'path'=>'StructureMap.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'StructureMap.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'StructureMap.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'StructureMap.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'StructureMap.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'StructureMap.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'StructureMap.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'StructureMap.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AD-03', 'AD-07', 'AD-04', 'AD-05', 'AD-02', 'AD-06', 'AD-08', 'AE-RK', 'AE-SH', 'AE-FU', 'AE-DU', 'AE-AZ', 'AE-UQ', 'AE-AJ', 'AF-BAM', 'AF-KAB', 'AF-KAP', 'AF-KHO', 'AF-KNR', 'AF-KAN', 'AF-LOG', 'AF-PIA', 'AF-SAM', 'AF-URU', 'AF-BDS', 'AF-FYB', 'AF-JOW', 'AF-KDZ', 'AF-LAG', 'AF-NIM', 'AF-BGL', 'AF-FRA', 'AF-HEL', 'AF-PKA', 'AF-SAR', 'AF-BDG', 'AF-GHA', 'AF-PAN', 'AF-TAK', 'AF-WAR', 'AF-BAL', 'AF-GHO', 'AF-DAY', 'AF-HER', 'AF-NAN', 'AF-NUR', 'AF-PAR', 'AF-ZAB', 'AG-03', 'AG-06', 'AG-10', 'AG-07', 'AG-08', 'AG-05', 'AG-04', 'AG-11', 'AL-11', 'AL-12', 'AL-03', 'AL-09', 'AL-01', 'AL-02', 'AL-08', 'AL-10', 'AL-05', 'AL-06', 'AL-07', 'AL-04', 'AM-AG', 'AM-AV', 'AM-KT', 'AM-GR', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-LO', 'AM-ER', 'AM-VD', 'AM-AR', 'AO-CAB', 'AO-CCU', 'AO-ZAI', 'AO-LNO', 'AO-LSU', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-CNO', 'AO-HUI', 'AO-LUA', 'AO-MAL', 'AO-BGO', 'AO-BGU', 'AO-CNN', 'AO-CUS', 'AO-HUA', 'AO-BIE', 'AR-N', 'AR-S', 'AR-Z', 'AR-A', 'AR-C', 'AR-F', 'AR-B', 'AR-G', 'AR-H', 'AR-P', 'AR-X', 'AR-J', 'AR-T', 'AR-E', 'AR-K', 'AR-V', 'AR-W', 'AR-U', 'AR-D', 'AR-L', 'AR-M', 'AR-Q', 'AR-R', 'AR-Y', 'AT-3', 'AT-4', 'AT-5', 'AT-8', 'AT-1', 'AT-7', 'AT-2', 'AT-6', 'AT-9', 'AU-NT', 'AU-QLD', 'AU-TAS', 'AU-ACT', 'AU-NSW', 'AU-SA', 'AU-WA', 'AU-VIC', 'AZ-ABS', 'AZ-BA', 'AZ-BAL', 'AZ-BAR', 'AZ-GOY', 'AZ-MAS', 'AZ-SKR', 'AZ-SR', 'AZ-XA', 'AZ-XIZ', 'AZ-AGC', 'AZ-AGU', 'AZ-BIL', 'AZ-GA', 'AZ-QAB', 'AZ-SMX', 'AZ-XAC', 'AZ-YAR', 'AZ-ZAN', 'AZ-AGA', 'AZ-FUZ', 'AZ-GAD', 'AZ-LAC', 'AZ-QAX', 'AZ-AGM', 'AZ-DAS', 'AZ-GYG', 'AZ-LA', 'AZ-LAN', 'AZ-OGU', 'AZ-QBA', 'AZ-QUS', 'AZ-SAB', 'AZ-CAB', 'AZ-KUR', 'AZ-SAL', 'AZ-SBN', 'AZ-SM', 'AZ-UCA', 'AZ-XCI', 'AZ-YEV', 'AZ-AGS', 'AZ-AST', 'AZ-BEY', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-LER', 'AZ-MI', 'AZ-NEF', 'AZ-NX', 'AZ-QAZ', 'AZ-SAK', 'AZ-SAT', 'AZ-TAR', 'AZ-XVD', 'AZ-CAL', 'AZ-KAL', 'AZ-QOB', 'AZ-SIY', 'AZ-SUS', 'AZ-ZAQ', 'AZ-ZAR', 'AZ-GOR', 'AZ-NA', 'AZ-QBI', 'AZ-SA', 'AZ-SMI', 'AZ-TOV', 'AZ-YE', 'BA-BRC', 'BA-BIH', 'BA-SRP', 'BB-03', 'BB-05', 'BB-02', 'BB-10', 'BB-11', 'BB-08', 'BB-04', 'BB-09', 'BB-01', 'BB-06', 'BB-07', 'BD-B', 'BD-H', 'BD-A', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BE-WAL', 'BE-BRU', 'BE-VLG', 'BF-05', 'BF-01', 'BF-10', 'BF-02', 'BF-03', 'BF-04', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-11', 'BF-12', 'BF-13', 'BG-04', 'BG-09', 'BG-15', 'BG-16', 'BG-28', 'BG-13', 'BG-18', 'BG-21', 'BG-22', 'BG-27', 'BG-02', 'BG-14', 'BG-19', 'BG-25', 'BG-03', 'BG-24', 'BG-01', 'BG-10', 'BG-12', 'BG-20', 'BG-23', 'BG-11', 'BG-17', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-26', 'BH-14', 'BH-13', 'BH-15', 'BH-17', 'BI-BM', 'BI-KR', 'BI-MY', 'BI-KI', 'BI-BR', 'BI-CI', 'BI-GI', 'BI-MA', 'BI-MU', 'BI-NG', 'BI-RY', 'BI-KY', 'BI-MW', 'BI-CA', 'BI-BL', 'BI-RT', 'BI-RM', 'BI-BB', 'BJ-AK', 'BJ-CO', 'BJ-BO', 'BJ-OU', 'BJ-LI', 'BJ-AQ', 'BJ-MO', 'BJ-AL', 'BJ-DO', 'BJ-KO', 'BJ-PL', 'BJ-ZO', 'BN-BM', 'BN-BE', 'BN-TE', 'BN-TU', 'BO-C', 'BO-L', 'BO-B', 'BO-O', 'BO-S', 'BO-P', 'BO-T', 'BO-H', 'BO-N', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BR-AC', 'BR-AM', 'BR-CE', 'BR-RR', 'BR-GO', 'BR-MG', 'BR-ES', 'BR-AP', 'BR-BA', 'BR-MS', 'BR-PR', 'BR-RN', 'BR-MT', 'BR-PB', 'BR-PE', 'BR-RJ', 'BR-RO', 'BR-SC', 'BR-SP', 'BR-AL', 'BR-DF', 'BR-MA', 'BR-PA', 'BR-PI', 'BR-RS', 'BR-SE', 'BR-TO', 'BS-CO', 'BS-EG', 'BS-HI', 'BS-MI', 'BS-SS', 'BS-SW', 'BS-AK', 'BS-LI', 'BS-BY', 'BS-FP', 'BS-NS', 'BS-RC', 'BS-SO', 'BS-CE', 'BS-CI', 'BS-CS', 'BS-EX', 'BS-IN', 'BS-MC', 'BS-SA', 'BS-GC', 'BS-MG', 'BS-WG', 'BS-BI', 'BS-BP', 'BS-NE', 'BS-NO', 'BS-SE', 'BS-CK', 'BS-HT', 'BS-RI', 'BT-42', 'BT-45', 'BT-12', 'BT-23', 'BT-24', 'BT-21', 'BT-33', 'BT-34', 'BT-31', 'BT-14', 'BT-15', 'BT-44', 'BT-TY', 'BT-13', 'BT-41', 'BT-GA', 'BT-22', 'BT-32', 'BT-43', 'BT-11', 'BW-KL', 'BW-GH', 'BW-NW', 'BW-SO', 'BW-KW', 'BW-CH', 'BW-LO', 'BW-SP', 'BW-JW', 'BW-ST', 'BW-FR', 'BW-GA', 'BW-KG', 'BW-CE', 'BW-SE', 'BW-NE', 'BY-VI', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MI', 'BY-MA', 'BZ-OW', 'BZ-CZL', 'BZ-SC', 'BZ-TOL', 'BZ-BZ', 'BZ-CY', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-SK', 'CA-AB', 'CA-ON', 'CA-YT', 'CA-NT', 'CA-NU', 'CA-NL', 'CA-PE', 'CA-NS', 'CA-QC', 'CD-EQ', 'CD-BC', 'CD-SK', 'CD-NK', 'CD-KE', 'CD-KN', 'CD-BU', 'CD-HK', 'CD-HL', 'CD-HU', 'CD-IT', 'CD-KS', 'CD-KC', 'CD-KG', 'CD-KL', 'CD-LO', 'CD-LU', 'CD-MN', 'CD-MO', 'CD-NU', 'CD-SA', 'CD-SU', 'CD-TA', 'CD-TO', 'CD-TU', 'CD-MA', 'CF-HM', 'CF-HS', 'CF-LB', 'CF-AC', 'CF-KB', 'CF-BB', 'CF-MP', 'CF-HK', 'CF-KG', 'CF-MB', 'CF-NM', 'CF-SE', 'CF-VK', 'CF-BGF', 'CF-OP', 'CF-UK', 'CF-BK', 'CG-9', 'CG-15', 'CG-5', 'CG-11', 'CG-BZV', 'CG-16', 'CG-12', 'CG-13', 'CG-7', 'CG-14', 'CG-2', 'CG-8', 'CH-JU', 'CH-LU', 'CH-SO', 'CH-TG', 'CH-BS', 'CH-SZ', 'CH-ZG', 'CH-AG', 'CH-BE', 'CH-FR', 'CH-NE', 'CH-OW', 'CH-TI', 'CH-VD', 'CH-AR', 'CH-GE', 'CH-GL', 'CH-SG', 'CH-GR', 'CH-NW', 'CH-SH', 'CH-ZH', 'CH-AI', 'CH-VS', 'CH-BL', 'CH-UR', 'CI-AB', 'CI-YM', 'CI-BS', 'CI-CM', 'CI-DN', 'CI-GD', 'CI-LC', 'CI-LG', 'CI-MG', 'CI-SM', 'CI-SV', 'CI-VB', 'CI-WR', 'CI-ZZ', 'CL-AN', 'CL-RM', 'CL-TA', 'CL-BI', 'CL-AP', 'CL-AT', 'CL-LL', 'CL-LR', 'CL-ML', 'CL-AR', 'CL-LI', 'CL-AI', 'CL-VS', 'CL-CO', 'CL-MA', 'CM-NW', 'CM-OU', 'CM-AD', 'CM-LT', 'CM-NO', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-SU', 'CM-SW', 'CN-NM', 'CN-GX', 'CN-XZ', 'CN-NX', 'CN-XJ', 'CN-BJ', 'CN-TJ', 'CN-SH', 'CN-CQ', 'CN-HE', 'CN-SX', 'CN-LN', 'CN-JL', 'CN-HL', 'CN-ZJ', 'CN-AH', 'CN-FJ', 'CN-JX', 'CN-SD', 'CN-HA', 'CN-HB', 'CN-HN', 'CN-GD', 'CN-HI', 'CN-SC', 'CN-GZ', 'CN-YN', 'CN-SN', 'CN-GS', 'CN-QH', 'CN-TW', 'CN-HK', 'CN-MO', 'CN-JS', 'CO-BOL', 'CO-MAG', 'CO-MET', 'CO-PUT', 'CO-VID', 'CO-AMA', 'CO-CAL', 'CO-CAU', 'CO-CES', 'CO-DC', 'CO-LAG', 'CO-ARA', 'CO-NSA', 'CO-TOL', 'CO-VAC', 'CO-GUV', 'CO-HUI', 'CO-SUC', 'CO-CAS', 'CO-CHO', 'CO-GUA', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-VAU', 'CO-ANT', 'CO-ATL', 'CO-COR', 'CO-SAP', 'CO-BOY', 'CO-CAQ', 'CO-CUN', 'CO-NAR', 'CR-H', 'CR-L', 'CR-G', 'CR-P', 'CR-A', 'CR-C', 'CR-SJ', 'CU-03', 'CU-07', 'CU-12', 'CU-05', 'CU-11', 'CU-08', 'CU-09', 'CU-10', 'CU-13', 'CU-15', 'CU-16', 'CU-01', 'CU-14', 'CU-99', 'CU-04', 'CU-06', 'CV-B', 'CV-S', 'CY-03', 'CY-06', 'CY-01', 'CY-04', 'CY-05', 'CY-02', 'CZ-42', 'CZ-63', 'CZ-72', 'CZ-31', 'CZ-64', 'CZ-41', 'CZ-52', 'CZ-51', 'CZ-80', 'CZ-71', 'CZ-53', 'CZ-32', 'CZ-20', 'CZ-10', 'DE-BW', 'DE-MV', 'DE-NW', 'DE-SL', 'DE-TH', 'DE-ST', 'DE-HH', 'DE-BB', 'DE-BE', 'DE-BY', 'DE-HB', 'DE-HE', 'DE-NI', 'DE-SH', 'DE-RP', 'DE-SN', 'DJ-OB', 'DJ-AR', 'DJ-DI', 'DJ-DJ', 'DJ-AS', 'DJ-TA', 'DK-82', 'DK-85', 'DK-81', 'DK-84', 'DK-83', 'DM-06', 'DM-08', 'DM-09', 'DM-03', 'DM-02', 'DM-11', 'DM-04', 'DM-10', 'DM-05', 'DM-07', 'DO-33', 'DO-34', 'DO-35', 'DO-36', 'DO-37', 'DO-38', 'DO-39', 'DO-40', 'DO-41', 'DO-42', 'DZ-06', 'DZ-11', 'DZ-13', 'DZ-27', 'DZ-40', 'DZ-03', 'DZ-09', 'DZ-14', 'DZ-15', 'DZ-19', 'DZ-20', 'DZ-35', 'DZ-41', 'DZ-42', 'DZ-44', 'DZ-02', 'DZ-04', 'DZ-05', 'DZ-23', 'DZ-39', 'DZ-01', 'DZ-08', 'DZ-16', 'DZ-28', 'DZ-31', 'DZ-07', 'DZ-24', 'DZ-33', 'DZ-36', 'DZ-38', 'DZ-45', 'DZ-10', 'DZ-21', 'DZ-25', 'DZ-32', 'DZ-43', 'DZ-46', 'DZ-48', 'DZ-17', 'DZ-18', 'DZ-22', 'DZ-30', 'DZ-47', 'DZ-12', 'DZ-26', 'DZ-29', 'DZ-34', 'DZ-37', 'EC-E', 'EC-G', 'EC-X', 'EC-Y', 'EC-A', 'EC-D', 'EC-L', 'EC-O', 'EC-SE', 'EC-Z', 'EC-H', 'EC-SD', 'EC-I', 'EC-M', 'EC-P', 'EC-W', 'EC-C', 'EC-F', 'EC-S', 'EC-U', 'EC-N', 'EC-T', 'EC-B', 'EC-R', 'EE-78', 'EE-49', 'EE-51', 'EE-70', 'EE-84', 'EE-37', 'EE-44', 'EE-57', 'EE-59', 'EE-67', 'EE-74', 'EE-82', 'EE-86', 'EE-65', 'EE-39', 'EG-AST', 'EG-BNS', 'EG-C', 'EG-FYM', 'EG-PTS', 'EG-DT', 'EG-GZ', 'EG-IS', 'EG-SHG', 'EG-BA', 'EG-KB', 'EG-SHR', 'EG-DK', 'EG-LX', 'EG-SIN', 'EG-WAD', 'EG-GH', 'EG-KN', 'EG-MNF', 'EG-SUZ', 'EG-BH', 'EG-MT', 'EG-ALX', 'EG-ASN', 'EG-JS', 'EG-KFS', 'EG-MN', 'ER-GB', 'ER-MA', 'ER-SK', 'ER-DK', 'ER-DU', 'ER-AN', 'ES-CB', 'ES-MC', 'ES-AR', 'ES-AS', 'ES-CE', 'ES-GA', 'ES-RI', 'ES-VC', 'ES-CT', 'ES-IB', 'ES-CM', 'ES-EX', 'ES-MD', 'ES-ML', 'ES-CL', 'ES-CN', 'ES-NC', 'ES-AN', 'ES-PV', 'ET-BE', 'ET-HA', 'ET-SO', 'ET-DD', 'ET-GA', 'ET-AM', 'ET-AA', 'ET-AF', 'ET-OR', 'ET-TI', 'ET-SN', 'FI-06', 'FI-08', 'FI-13', 'FI-18', 'FI-01', 'FI-15', 'FI-14', 'FI-04', 'FI-07', 'FI-09', 'FI-11', 'FI-12', 'FI-19', 'FI-17', 'FI-03', 'FI-05', 'FI-10', 'FI-02', 'FI-16', 'FJ-R', 'FJ-W', 'FJ-N', 'FJ-E', 'FJ-C', 'FM-TRK', 'FM-PNI', 'FM-KSA', 'FM-YAP', 'FR-CP', 'FR-MF', 'FR-NC', 'FR-PM', 'FR-TF', 'FR-WF', 'FR-ARA', 'FR-BFC', 'FR-BRE', 'FR-CVL', 'FR-COR', 'FR-GES', 'FR-HDF', 'FR-IDF', 'FR-NOR', 'FR-NAQ', 'FR-OCC', 'FR-PDL', 'FR-PAC', 'FR-GUA', 'FR-LRE', 'FR-MAY', 'FR-GF', 'FR-MQ', 'FR-BL', 'FR-PF', 'GA-1', 'GA-6', 'GA-7', 'GA-8', 'GA-2', 'GA-4', 'GA-9', 'GA-3', 'GA-5', 'GB-GBN', 'GB-SCT', 'GB-EAW', 'GB-ENG', 'GB-WLS', 'GB-NIR', 'GB-UKM', 'GD-10', 'GD-02', 'GD-05', 'GD-01', 'GD-03', 'GD-06', 'GD-04', 'GE-SK', 'GE-IM', 'GE-SJ', 'GE-GU', 'GE-RL', 'GE-TB', 'GE-KA', 'GE-KK', 'GE-AB', 'GE-AJ', 'GE-MM', 'GE-SZ', 'GH-EP', 'GH-CP', 'GH-NP', 'GH-BA', 'GH-TV', 'GH-UW', 'GH-AH', 'GH-AA', 'GH-UE', 'GH-WP', 'GL-KU', 'GL-SM', 'GL-QA', 'GL-QE', 'GM-M', 'GM-U', 'GM-W', 'GM-L', 'GM-B', 'GM-N', 'GN-M', 'GN-C', 'GN-K', 'GN-L', 'GN-B', 'GN-F', 'GN-D', 'GN-N', 'GQ-I', 'GQ-C', 'GR-H', 'GR-A', 'GR-B', 'GR-F', 'GR-69', 'GR-E', 'GR-K', 'GR-I'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'path'=>'StructureMap.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'StructureMap.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'StructureMap.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'structure' => {'path'=>'StructureMap.structure', 'type'=>'StructureMap::Structure', 'min'=>0, 'max'=>Float::INFINITY},
        'import' => {'path'=>'StructureMap.import', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'group' => {'path'=>'StructureMap.group', 'type'=>'StructureMap::Group', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Structure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Structure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Structure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Structure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'url' => {'path'=>'Structure.url', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-model-mode'=>['source', 'queried', 'target', 'produced']}, 'path'=>'Structure.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-model-mode'}},
          'alias' => {'path'=>'Structure.alias', 'type'=>'string', 'min'=>0, 'max'=>1},
          'documentation' => {'path'=>'Structure.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :url               # 1-1 canonical
        attr_accessor :mode              # 1-1 code
        attr_accessor :alias             # 0-1 string
        attr_accessor :documentation     # 0-1 string
      end

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Group.name', 'type'=>'id', 'min'=>1, 'max'=>1},
          'extends' => {'path'=>'Group.extends', 'type'=>'id', 'min'=>0, 'max'=>1},
          'typeMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-group-type-mode'=>['none', 'types', 'type-and-types']}, 'path'=>'Group.typeMode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-group-type-mode'}},
          'documentation' => {'path'=>'Group.documentation', 'type'=>'string', 'min'=>0, 'max'=>1},
          'input' => {'path'=>'Group.input', 'type'=>'StructureMap::Group::Input', 'min'=>1, 'max'=>Float::INFINITY},
          'rule' => {'path'=>'Group.rule', 'type'=>'StructureMap::Group::Rule', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Input < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Input.name', 'type'=>'id', 'min'=>1, 'max'=>1},
            'type' => {'path'=>'Input.type', 'type'=>'string', 'min'=>0, 'max'=>1},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-input-mode'=>['source', 'target']}, 'path'=>'Input.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-input-mode'}},
            'documentation' => {'path'=>'Input.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :type              # 0-1 string
          attr_accessor :mode              # 1-1 code
          attr_accessor :documentation     # 0-1 string
        end

        class Rule < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Rule.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Rule.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Rule.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Rule.name', 'type'=>'id', 'min'=>1, 'max'=>1},
            'source' => {'path'=>'Rule.source', 'type'=>'StructureMap::Group::Rule::Source', 'min'=>1, 'max'=>Float::INFINITY},
            'target' => {'path'=>'Rule.target', 'type'=>'StructureMap::Group::Rule::Target', 'min'=>0, 'max'=>Float::INFINITY},
            'rule' => {'path'=>'Rule.rule', 'type'=>'StructureMap::Group::Rule', 'min'=>0, 'max'=>Float::INFINITY},
            'dependent' => {'path'=>'Rule.dependent', 'type'=>'StructureMap::Group::Rule::Dependent', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'path'=>'Rule.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          class Source < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
            }
            METADATA = {
              'id' => {'path'=>'Source.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Source.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Source.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'path'=>'Source.context', 'type'=>'id', 'min'=>1, 'max'=>1},
              'min' => {'path'=>'Source.min', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'max' => {'path'=>'Source.max', 'type'=>'string', 'min'=>0, 'max'=>1},
              'type' => {'path'=>'Source.type', 'type'=>'string', 'min'=>0, 'max'=>1},
              'defaultValueBase64Binary' => {'path'=>'Source.defaultValue[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
              'defaultValueBoolean' => {'path'=>'Source.defaultValue[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'defaultValueCanonical' => {'path'=>'Source.defaultValue[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
              'defaultValueCode' => {'path'=>'Source.defaultValue[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
              'defaultValueDate' => {'path'=>'Source.defaultValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
              'defaultValueDateTime' => {'path'=>'Source.defaultValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
              'defaultValueDecimal' => {'path'=>'Source.defaultValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'defaultValueId' => {'path'=>'Source.defaultValue[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
              'defaultValueInstant' => {'path'=>'Source.defaultValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
              'defaultValueInteger' => {'path'=>'Source.defaultValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'defaultValueMarkdown' => {'path'=>'Source.defaultValue[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'defaultValueOid' => {'path'=>'Source.defaultValue[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
              'defaultValuePositiveInt' => {'path'=>'Source.defaultValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
              'defaultValueString' => {'path'=>'Source.defaultValue[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
              'defaultValueTime' => {'path'=>'Source.defaultValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
              'defaultValueUnsignedInt' => {'path'=>'Source.defaultValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
              'defaultValueUri' => {'path'=>'Source.defaultValue[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
              'defaultValueUrl' => {'path'=>'Source.defaultValue[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
              'defaultValueUuid' => {'path'=>'Source.defaultValue[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
              'defaultValueAddress' => {'path'=>'Source.defaultValue[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
              'defaultValueAge' => {'path'=>'Source.defaultValue[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
              'defaultValueAnnotation' => {'path'=>'Source.defaultValue[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
              'defaultValueAttachment' => {'path'=>'Source.defaultValue[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
              'defaultValueCodeableConcept' => {'path'=>'Source.defaultValue[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'defaultValueCoding' => {'path'=>'Source.defaultValue[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
              'defaultValueContactPoint' => {'path'=>'Source.defaultValue[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
              'defaultValueCount' => {'path'=>'Source.defaultValue[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
              'defaultValueDistance' => {'path'=>'Source.defaultValue[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
              'defaultValueDuration' => {'path'=>'Source.defaultValue[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
              'defaultValueHumanName' => {'path'=>'Source.defaultValue[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
              'defaultValueIdentifier' => {'path'=>'Source.defaultValue[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
              'defaultValueMoney' => {'path'=>'Source.defaultValue[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'defaultValuePeriod' => {'path'=>'Source.defaultValue[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
              'defaultValueQuantity' => {'path'=>'Source.defaultValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'defaultValueRange' => {'path'=>'Source.defaultValue[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
              'defaultValueRatio' => {'path'=>'Source.defaultValue[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
              'defaultValueReference' => {'path'=>'Source.defaultValue[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'defaultValueSampledData' => {'path'=>'Source.defaultValue[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
              'defaultValueSignature' => {'path'=>'Source.defaultValue[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
              'defaultValueTiming' => {'path'=>'Source.defaultValue[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
              'defaultValueContactDetail' => {'path'=>'Source.defaultValue[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
              'defaultValueContributor' => {'path'=>'Source.defaultValue[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
              'defaultValueDataRequirement' => {'path'=>'Source.defaultValue[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
              'defaultValueExpression' => {'path'=>'Source.defaultValue[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
              'defaultValueParameterDefinition' => {'path'=>'Source.defaultValue[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
              'defaultValueRelatedArtifact' => {'path'=>'Source.defaultValue[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
              'defaultValueTriggerDefinition' => {'path'=>'Source.defaultValue[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
              'defaultValueUsageContext' => {'path'=>'Source.defaultValue[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
              'defaultValueDosage' => {'path'=>'Source.defaultValue[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
              'defaultValueMeta' => {'path'=>'Source.defaultValue[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
              'element' => {'path'=>'Source.element', 'type'=>'string', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-source-list-mode'=>['first', 'not_first', 'last', 'not_last', 'only_one']}, 'path'=>'Source.listMode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-source-list-mode'}},
              'variable' => {'path'=>'Source.variable', 'type'=>'id', 'min'=>0, 'max'=>1},
              'condition' => {'path'=>'Source.condition', 'type'=>'string', 'min'=>0, 'max'=>1},
              'check' => {'path'=>'Source.check', 'type'=>'string', 'min'=>0, 'max'=>1},
              'logMessage' => {'path'=>'Source.logMessage', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                              # 0-1 string
            attr_accessor :extension                       # 0-* [ Extension ]
            attr_accessor :modifierExtension               # 0-* [ Extension ]
            attr_accessor :context                         # 1-1 id
            attr_accessor :min                             # 0-1 integer
            attr_accessor :max                             # 0-1 string
            attr_accessor :type                            # 0-1 string
            attr_accessor :defaultValueBase64Binary        # 0-1 base64Binary
            attr_accessor :defaultValueBoolean             # 0-1 boolean
            attr_accessor :defaultValueCanonical           # 0-1 canonical
            attr_accessor :defaultValueCode                # 0-1 code
            attr_accessor :defaultValueDate                # 0-1 date
            attr_accessor :defaultValueDateTime            # 0-1 dateTime
            attr_accessor :defaultValueDecimal             # 0-1 decimal
            attr_accessor :defaultValueId                  # 0-1 id
            attr_accessor :defaultValueInstant             # 0-1 instant
            attr_accessor :defaultValueInteger             # 0-1 integer
            attr_accessor :defaultValueMarkdown            # 0-1 markdown
            attr_accessor :defaultValueOid                 # 0-1 oid
            attr_accessor :defaultValuePositiveInt         # 0-1 positiveInt
            attr_accessor :defaultValueString              # 0-1 string
            attr_accessor :defaultValueTime                # 0-1 time
            attr_accessor :defaultValueUnsignedInt         # 0-1 unsignedInt
            attr_accessor :defaultValueUri                 # 0-1 uri
            attr_accessor :defaultValueUrl                 # 0-1 url
            attr_accessor :defaultValueUuid                # 0-1 uuid
            attr_accessor :defaultValueAddress             # 0-1 Address
            attr_accessor :defaultValueAge                 # 0-1 Age
            attr_accessor :defaultValueAnnotation          # 0-1 Annotation
            attr_accessor :defaultValueAttachment          # 0-1 Attachment
            attr_accessor :defaultValueCodeableConcept     # 0-1 CodeableConcept
            attr_accessor :defaultValueCoding              # 0-1 Coding
            attr_accessor :defaultValueContactPoint        # 0-1 ContactPoint
            attr_accessor :defaultValueCount               # 0-1 Count
            attr_accessor :defaultValueDistance            # 0-1 Distance
            attr_accessor :defaultValueDuration            # 0-1 Duration
            attr_accessor :defaultValueHumanName           # 0-1 HumanName
            attr_accessor :defaultValueIdentifier          # 0-1 Identifier
            attr_accessor :defaultValueMoney               # 0-1 Money
            attr_accessor :defaultValuePeriod              # 0-1 Period
            attr_accessor :defaultValueQuantity            # 0-1 Quantity
            attr_accessor :defaultValueRange               # 0-1 Range
            attr_accessor :defaultValueRatio               # 0-1 Ratio
            attr_accessor :defaultValueReference           # 0-1 Reference()
            attr_accessor :defaultValueSampledData         # 0-1 SampledData
            attr_accessor :defaultValueSignature           # 0-1 Signature
            attr_accessor :defaultValueTiming              # 0-1 Timing
            attr_accessor :defaultValueContactDetail       # 0-1 ContactDetail
            attr_accessor :defaultValueContributor         # 0-1 Contributor
            attr_accessor :defaultValueDataRequirement     # 0-1 DataRequirement
            attr_accessor :defaultValueExpression          # 0-1 Expression
            attr_accessor :defaultValueParameterDefinition # 0-1 ParameterDefinition
            attr_accessor :defaultValueRelatedArtifact     # 0-1 RelatedArtifact
            attr_accessor :defaultValueTriggerDefinition   # 0-1 TriggerDefinition
            attr_accessor :defaultValueUsageContext        # 0-1 UsageContext
            attr_accessor :defaultValueDosage              # 0-1 Dosage
            attr_accessor :defaultValueMeta                # 0-1 Meta
            attr_accessor :element                         # 0-1 string
            attr_accessor :listMode                        # 0-1 code
            attr_accessor :variable                        # 0-1 id
            attr_accessor :condition                       # 0-1 string
            attr_accessor :check                           # 0-1 string
            attr_accessor :logMessage                      # 0-1 string
          end

          class Target < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Target.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Target.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Target.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'path'=>'Target.context', 'type'=>'id', 'min'=>0, 'max'=>1},
              'contextType' => {'valid_codes'=>{'http://hl7.org/fhir/map-context-type'=>['type', 'variable']}, 'path'=>'Target.contextType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-context-type'}},
              'element' => {'path'=>'Target.element', 'type'=>'string', 'min'=>0, 'max'=>1},
              'variable' => {'path'=>'Target.variable', 'type'=>'id', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-target-list-mode'=>['first', 'share', 'last', 'collate']}, 'path'=>'Target.listMode', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-target-list-mode'}},
              'listRuleId' => {'path'=>'Target.listRuleId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'transform' => {'valid_codes'=>{'http://hl7.org/fhir/map-transform'=>['create', 'copy', 'truncate', 'escape', 'cast', 'append', 'translate', 'reference', 'dateOp', 'uuid', 'pointer', 'evaluate', 'cc', 'c', 'qty', 'id', 'cp']}, 'path'=>'Target.transform', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-transform'}},
              'parameter' => {'path'=>'Target.parameter', 'type'=>'StructureMap::Group::Rule::Target::Parameter', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Parameter < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              MULTIPLE_TYPES = {
                'value' => ['id', 'string', 'boolean', 'integer', 'decimal']
              }
              METADATA = {
                'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'valueId' => {'path'=>'Parameter.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
                'valueString' => {'path'=>'Parameter.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
                'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
                'valueInteger' => {'path'=>'Parameter.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
                'valueDecimal' => {'path'=>'Parameter.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :valueId           # 1-1 id
              attr_accessor :valueString       # 1-1 string
              attr_accessor :valueBoolean      # 1-1 boolean
              attr_accessor :valueInteger      # 1-1 integer
              attr_accessor :valueDecimal      # 1-1 decimal
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :context           # 0-1 id
            attr_accessor :contextType       # 0-1 code
            attr_accessor :element           # 0-1 string
            attr_accessor :variable          # 0-1 id
            attr_accessor :listMode          # 0-* [ code ]
            attr_accessor :listRuleId        # 0-1 id
            attr_accessor :transform         # 0-1 code
            attr_accessor :parameter         # 0-* [ StructureMap::Group::Rule::Target::Parameter ]
          end

          class Dependent < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Dependent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Dependent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Dependent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'path'=>'Dependent.name', 'type'=>'id', 'min'=>1, 'max'=>1},
              'variable' => {'path'=>'Dependent.variable', 'type'=>'string', 'min'=>1, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 id
            attr_accessor :variable          # 1-* [ string ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :source            # 1-* [ StructureMap::Group::Rule::Source ]
          attr_accessor :target            # 0-* [ StructureMap::Group::Rule::Target ]
          attr_accessor :rule              # 0-* [ StructureMap::Group::Rule ]
          attr_accessor :dependent         # 0-* [ StructureMap::Group::Rule::Dependent ]
          attr_accessor :documentation     # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 id
        attr_accessor :extends           # 0-1 id
        attr_accessor :typeMode          # 1-1 code
        attr_accessor :documentation     # 0-1 string
        attr_accessor :input             # 1-* [ StructureMap::Group::Input ]
        attr_accessor :rule              # 1-* [ StructureMap::Group::Rule ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 1-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :structure         # 0-* [ StructureMap::Structure ]
      attr_accessor :import            # 0-* [ canonical ]
      attr_accessor :group             # 1-* [ StructureMap::Group ]

      def resourceType
        'StructureMap'
      end
    end
  end
end