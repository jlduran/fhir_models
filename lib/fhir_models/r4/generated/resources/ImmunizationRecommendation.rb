module FHIR
  module R4
    class ImmunizationRecommendation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'identifier', 'information', 'patient', 'status', 'support', 'target-disease', 'vaccine-type']
      METADATA = {
        'id' => {'path'=>'ImmunizationRecommendation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImmunizationRecommendation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImmunizationRecommendation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ImmunizationRecommendation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ImmunizationRecommendation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImmunizationRecommendation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImmunizationRecommendation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImmunizationRecommendation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ImmunizationRecommendation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ImmunizationRecommendation.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'date' => {'path'=>'ImmunizationRecommendation.date', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ImmunizationRecommendation.authority', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'recommendation' => {'path'=>'ImmunizationRecommendation.recommendation', 'type'=>'ImmunizationRecommendation::Recommendation', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Recommendation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'doseNumber' => ['positiveInt', 'string'],
          'seriesDoses' => ['positiveInt', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Recommendation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Recommendation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Recommendation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'path'=>'Recommendation.vaccineCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'path'=>'Recommendation.targetDisease', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-target-disease'}},
          'contraindicatedVaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'path'=>'Recommendation.contraindicatedVaccineCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
          'forecastStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status'=>['due', 'overdue', 'immune', 'contraindicated', 'complete']}, 'path'=>'Recommendation.forecastStatus', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-status'}},
          'forecastReason' => {'valid_codes'=>{'http://snomed.info/sct'=>['77176002', '77386006']}, 'path'=>'Recommendation.forecastReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-reason'}},
          'dateCriterion' => {'path'=>'Recommendation.dateCriterion', 'type'=>'ImmunizationRecommendation::Recommendation::DateCriterion', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Recommendation.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'series' => {'path'=>'Recommendation.series', 'type'=>'string', 'min'=>0, 'max'=>1},
          'doseNumberPositiveInt' => {'path'=>'Recommendation.doseNumber[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'doseNumberString' => {'path'=>'Recommendation.doseNumber[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'seriesDosesPositiveInt' => {'path'=>'Recommendation.seriesDoses[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'seriesDosesString' => {'path'=>'Recommendation.seriesDoses[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'supportingImmunization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Immunization', 'http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation'], 'path'=>'Recommendation.supportingImmunization', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'supportingPatientInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Recommendation.supportingPatientInformation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class DateCriterion < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'DateCriterion.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'DateCriterion.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'DateCriterion.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://loinc.org'=>['30981-5', '30980-7', '59777-3', '59778-1']}, 'path'=>'DateCriterion.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-recommendation-date-criterion'}},
            'value' => {'path'=>'DateCriterion.value', 'type'=>'dateTime', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :value             # 1-1 dateTime
        end

        attr_accessor :id                           # 0-1 string
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :vaccineCode                  # 0-* [ CodeableConcept ]
        attr_accessor :targetDisease                # 0-1 CodeableConcept
        attr_accessor :contraindicatedVaccineCode   # 0-* [ CodeableConcept ]
        attr_accessor :forecastStatus               # 1-1 CodeableConcept
        attr_accessor :forecastReason               # 0-* [ CodeableConcept ]
        attr_accessor :dateCriterion                # 0-* [ ImmunizationRecommendation::Recommendation::DateCriterion ]
        attr_accessor :description                  # 0-1 string
        attr_accessor :series                       # 0-1 string
        attr_accessor :doseNumberPositiveInt        # 0-1 positiveInt
        attr_accessor :doseNumberString             # 0-1 string
        attr_accessor :seriesDosesPositiveInt       # 0-1 positiveInt
        attr_accessor :seriesDosesString            # 0-1 string
        attr_accessor :supportingImmunization       # 0-* [ Reference(Immunization|ImmunizationEvaluation) ]
        attr_accessor :supportingPatientInformation # 0-* [ Reference(Resource) ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :date              # 1-1 dateTime
      attr_accessor :authority         # 0-1 Reference(Organization)
      attr_accessor :recommendation    # 1-* [ ImmunizationRecommendation::Recommendation ]

      def resourceType
        'ImmunizationRecommendation'
      end
    end
  end
  ImmunizationRecommendation = FHIR::R4::ImmunizationRecommendation
end