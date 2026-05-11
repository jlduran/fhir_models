module FHIR
  module R4
    class Immunization < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'string']
      }
      SEARCH_PARAMS = ['date', 'identifier', 'location', 'lot-number', 'manufacturer', 'patient', 'performer', 'reaction', 'reaction-date', 'reason-code', 'reason-reference', 'series', 'status', 'status-reason', 'target-disease', 'vaccine-code']
      METADATA = {
        'id' => {'path'=>'Immunization.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Immunization.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Immunization.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Immunization.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Immunization.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Immunization.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Immunization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Immunization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Immunization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/event-status'=>['completed', 'entered-in-error', 'not-done']}, 'path'=>'Immunization.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status'}},
        'statusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['IMMUNE', 'MEDPREC', 'OSTOCK', 'PATOBJ'], 'http://snomed.info/sct'=>['171257003', '171265000', '171266004', '171267008', '171268003', '171269006', '171270007', '171271006', '171272004', '171280006', '171283008', '171285001', '171286000', '171291004', '171292006', '171293001', '268559007', '310839003', '310840001', '314768003', '314769006', '314936001', '407598009']}, 'path'=>'Immunization.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status-reason'}},
        'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['143', '54', '55', '82', '24', '181', '801', '19', '27', '173', '174', '26', '172', '29', '56', '12', '28', '20', '106', '107', '146', '110', '50', '120', '130', '132', '170', '01', '22', '102', '57', '30', '52', '154', '169', '83', '84', '31', '85', '104', '193', '08', '42', '43', '44', '45', '58', '59', '189', '60', '47', '46', '49', '48', '17', '51', '61', '118', '62', '137', '165', '86', '14', '87', '160', '151', '123', '135', '153', '171', '186', '158', '150', '161', '166', '111', '149', '155', '185', '141', '140', '144', '15', '168', '88', '16', '10', '134', '39', '129', '63', '64', '65', '66', '04', '67', '05', '68', '191', '192', '108', '163', '162', '164', '103', '148', '147', '136', '114', '32', '167', '03', '94', '07', '127', '128', '125', '126', '02', '179', '178', '182', '69', '177', '11', '23', '133', '100', '152', '33', '109', '89', '70', '175', '176', '40', '18', '90', '72', '159', '157', '156', '73', '34', '119', '116', '74', '122', '71', '93', '145', '06', '38', '76', '138', '09', '113', '139', '115', '180', '35', '142', '112', '77', '13', '98', '95', '96', '97', '78', '190', '25', '41', '53', '91', '101', '131', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '183', '184', '121', '187', '188', '998', '99', '999'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'path'=>'Immunization.vaccineCode', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Immunization.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Immunization.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'path'=>'Immunization.occurrence[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'occurrenceString' => {'path'=>'Immunization.occurrence[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
        'recorded' => {'path'=>'Immunization.recorded', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'primarySource' => {'path'=>'Immunization.primarySource', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'reportOrigin' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-origin'=>['provider', 'record', 'recall', 'school']}, 'path'=>'Immunization.reportOrigin', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-origin'}},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Immunization.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Immunization.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'lotNumber' => {'path'=>'Immunization.lotNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'expirationDate' => {'path'=>'Immunization.expirationDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'site' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActSite'=>['LA', 'RA']}, 'path'=>'Immunization.site', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-site'}},
        'route' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration'=>['IDINJ', 'IM', 'NASINHLC', 'IVINJ', 'PO', 'SQ', 'TRNSDERM']}, 'path'=>'Immunization.route', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-route'}},
        'doseQuantity' => {'path'=>'Immunization.doseQuantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'performer' => {'path'=>'Immunization.performer', 'type'=>'Immunization::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Immunization.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonCode' => {'valid_codes'=>{'http://snomed.info/sct'=>['429060002', '281657000']}, 'path'=>'Immunization.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-reason'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport'], 'path'=>'Immunization.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'isSubpotent' => {'path'=>'Immunization.isSubpotent', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'subpotentReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-subpotent-reason'=>['partial', 'coldchainbreak', 'recall']}, 'path'=>'Immunization.subpotentReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-subpotent-reason'}},
        'education' => {'path'=>'Immunization.education', 'type'=>'Immunization::Education', 'min'=>0, 'max'=>Float::INFINITY},
        'programEligibility' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-program-eligibility'=>['ineligible', 'uninsured']}, 'path'=>'Immunization.programEligibility', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-program-eligibility'}},
        'fundingSource' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-funding-source'=>['private', 'public']}, 'path'=>'Immunization.fundingSource', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-funding-source'}},
        'reaction' => {'path'=>'Immunization.reaction', 'type'=>'Immunization::Reaction', 'min'=>0, 'max'=>Float::INFINITY},
        'protocolApplied' => {'path'=>'Immunization.protocolApplied', 'type'=>'Immunization::ProtocolApplied', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0443'=>['OP', 'AP']}, 'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-function'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization)
      end

      class Education < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Education.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Education.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Education.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'documentType' => {'path'=>'Education.documentType', 'type'=>'string', 'min'=>0, 'max'=>1},
          'reference' => {'path'=>'Education.reference', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'publicationDate' => {'path'=>'Education.publicationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'presentationDate' => {'path'=>'Education.presentationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :documentType      # 0-1 string
        attr_accessor :reference         # 0-1 uri
        attr_accessor :publicationDate   # 0-1 dateTime
        attr_accessor :presentationDate  # 0-1 dateTime
      end

      class Reaction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Reaction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Reaction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Reaction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'date' => {'path'=>'Reaction.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation'], 'path'=>'Reaction.detail', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'reported' => {'path'=>'Reaction.reported', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 0-1 dateTime
        attr_accessor :detail            # 0-1 Reference(Observation)
        attr_accessor :reported          # 0-1 boolean
      end

      class ProtocolApplied < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'doseNumber' => ['positiveInt', 'string'],
          'seriesDoses' => ['positiveInt', 'string']
        }
        METADATA = {
          'id' => {'path'=>'ProtocolApplied.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProtocolApplied.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProtocolApplied.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'series' => {'path'=>'ProtocolApplied.series', 'type'=>'string', 'min'=>0, 'max'=>1},
          'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ProtocolApplied.authority', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'path'=>'ProtocolApplied.targetDisease', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-target-disease'}},
          'doseNumberPositiveInt' => {'path'=>'ProtocolApplied.doseNumber[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'doseNumberString' => {'path'=>'ProtocolApplied.doseNumber[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'seriesDosesPositiveInt' => {'path'=>'ProtocolApplied.seriesDoses[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'seriesDosesString' => {'path'=>'ProtocolApplied.seriesDoses[x]', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :series                 # 0-1 string
        attr_accessor :authority              # 0-1 Reference(Organization)
        attr_accessor :targetDisease          # 0-* [ CodeableConcept ]
        attr_accessor :doseNumberPositiveInt  # 1-1 positiveInt
        attr_accessor :doseNumberString       # 1-1 string
        attr_accessor :seriesDosesPositiveInt # 0-1 positiveInt
        attr_accessor :seriesDosesString      # 0-1 string
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :status             # 1-1 code
      attr_accessor :statusReason       # 0-1 CodeableConcept
      attr_accessor :vaccineCode        # 1-1 CodeableConcept
      attr_accessor :patient            # 1-1 Reference(Patient)
      attr_accessor :encounter          # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime # 1-1 dateTime
      attr_accessor :occurrenceString   # 1-1 string
      attr_accessor :recorded           # 0-1 dateTime
      attr_accessor :primarySource      # 0-1 boolean
      attr_accessor :reportOrigin       # 0-1 CodeableConcept
      attr_accessor :location           # 0-1 Reference(Location)
      attr_accessor :manufacturer       # 0-1 Reference(Organization)
      attr_accessor :lotNumber          # 0-1 string
      attr_accessor :expirationDate     # 0-1 date
      attr_accessor :site               # 0-1 CodeableConcept
      attr_accessor :route              # 0-1 CodeableConcept
      attr_accessor :doseQuantity       # 0-1 Quantity
      attr_accessor :performer          # 0-* [ Immunization::Performer ]
      attr_accessor :note               # 0-* [ Annotation ]
      attr_accessor :reasonCode         # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference    # 0-* [ Reference(Condition|Observation|DiagnosticReport) ]
      attr_accessor :isSubpotent        # 0-1 boolean
      attr_accessor :subpotentReason    # 0-* [ CodeableConcept ]
      attr_accessor :education          # 0-* [ Immunization::Education ]
      attr_accessor :programEligibility # 0-* [ CodeableConcept ]
      attr_accessor :fundingSource      # 0-1 CodeableConcept
      attr_accessor :reaction           # 0-* [ Immunization::Reaction ]
      attr_accessor :protocolApplied    # 0-* [ Immunization::ProtocolApplied ]

      def resourceType
        'Immunization'
      end
    end
  end
  Immunization = FHIR::R4::Immunization
end