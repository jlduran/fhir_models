module FHIR
  module R5
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
        'language' => {'path'=>'Immunization.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Immunization.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Immunization.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Immunization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Immunization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Immunization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation'], 'path'=>'Immunization.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/event-status'=>['completed', 'entered-in-error', 'not-done']}, 'path'=>'Immunization.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status'}},
        'statusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['IMMUNE', 'MEDPREC', 'OSTOCK', 'PATOBJ', 'PHILISOP', 'RELIG', 'VACEFF', 'VACSAF']}, 'path'=>'Immunization.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-status-reason'}},
        'vaccineCode' => {'valid_codes'=>{'http://hl7.org/fhir/sid/cvx'=>['54', '55', '82', '24', '19', '27', '26', '29', '56', '12', '28', '20', '106', '107', '110', '50', '120', '130', '01', '22', '102', '57', '52', '83', '84', '31', '85', '104', '30', '08', '42', '43', '44', '45', '58', '59', '60', '46', '47', '48', '49', '17', '51', '61', '118', '62', '86', '87', '14', '111', '15', '16', '88', '123', '10', '02', '89', '39', '63', '64', '65', '66', '03', '04', '94', '67', '05', '68', '32', '103', '114', '108', '07', '69', '11', '23', '33', '100', '109', '70', '18', '40', '90', '72', '73', '34', '119', '122', '116', '74', '71', '93', '06', '38', '76', '113', '09', '115', '35', '112', '77', '13', '95', '96', '97', '98', '78', '91', '25', '41', '53', '101', '75', '105', '79', '21', '81', '80', '92', '36', '117', '37', '121', '998', '999', '99', '133', '134', '137', '136', '135', '131', '132', '128', '125', '126', '127', '138', '139', '140', '129', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '801', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '200', '201', '202', '198', '203', '205', '206', '207', '208', '213', '210', '212', '204', '214', '211'], 'urn:oid:1.2.36.1.2001.1005.17'=>['AGRPAL', 'AVAXM', 'BCG', 'CDT', 'CMX', 'DTP', 'DTPA', 'ENGP', 'FLRIX', 'FLUVAX', 'FLVRN', 'FVXJNR', 'GNDIP', 'GNFLU', 'GNHEP', 'GNHIB', 'GNHPA', 'GNJEN', 'GNMEA', 'GNMEN', 'GNMUM', 'GNPNE', 'GNPOL', 'GNROX', 'GNRUB', 'GNTET', 'GNVAR', 'HATWNJ', 'HAVAQ', 'HAVJ', 'HBOC', 'HBV', 'HBVP', 'HBX', 'IFHX', 'IFIP', 'IFPA', 'IFX', 'IFXB', 'INFLUV', 'IPV', 'JEVAX', 'MENJUG', 'MENTEC', 'MENUME', 'MENVAX', 'MMR', 'MMRCSL', 'MMRSKB', 'MNTRX', 'NEISVC', 'OPV', 'P', 'PANVAX', 'PDCL', 'PLCL', 'PNEUMO', 'PRPD', 'PROQAD', 'PRPOMP', 'PRPT', 'PRVNR', 'PRVTH', 'PRXTEX', 'QDCL', 'ROTRIX', 'ROTTEQ', 'SYNFLX', 'TCL', 'VAXGRP', 'VGRJNR', 'VLRIX', 'VRVAX']}, 'path'=>'Immunization.vaccineCode', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vaccine-code'}},
        'administeredProduct' => {'path'=>'Immunization.administeredProduct', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'manufacturer' => {'path'=>'Immunization.manufacturer', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'lotNumber' => {'path'=>'Immunization.lotNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'expirationDate' => {'path'=>'Immunization.expirationDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Immunization.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Immunization.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supportingInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Immunization.supportingInformation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'occurrenceDateTime' => {'path'=>'Immunization.occurrence[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'occurrenceString' => {'path'=>'Immunization.occurrence[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
        'primarySource' => {'path'=>'Immunization.primarySource', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'informationSource' => {'path'=>'Immunization.informationSource', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Immunization.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'site' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActSite'=>['LA', 'RA']}, 'path'=>'Immunization.site', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-site'}},
        'route' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration'=>['IDINJ', 'IM', 'IVINJ', 'PO', 'SQ', 'TRNSDERM']}, 'path'=>'Immunization.route', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-route'}},
        'doseQuantity' => {'path'=>'Immunization.doseQuantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'performer' => {'path'=>'Immunization.performer', 'type'=>'Immunization::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Immunization.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'reason' => {'path'=>'Immunization.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'isSubpotent' => {'path'=>'Immunization.isSubpotent', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'subpotentReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-subpotent-reason'=>['partialdose', 'coldchainbreak', 'recall', 'adversestorage', 'expired']}, 'path'=>'Immunization.subpotentReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-subpotent-reason'}},
        'programEligibility' => {'path'=>'Immunization.programEligibility', 'type'=>'Immunization::ProgramEligibility', 'min'=>0, 'max'=>Float::INFINITY},
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
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson)
      end

      class ProgramEligibility < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProgramEligibility.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProgramEligibility.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProgramEligibility.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'program' => {'valid_codes'=>{'http://loinc.org'=>['64994-7']}, 'path'=>'ProgramEligibility.program', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-vaccine-funding-program'}},
          'programStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-program-eligibility'=>['ineligible', 'uninsured']}, 'path'=>'ProgramEligibility.programStatus', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-program-eligibility'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :program           # 1-1 CodeableConcept
        attr_accessor :programStatus     # 1-1 CodeableConcept
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
          'manifestation' => {'path'=>'Reaction.manifestation', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
          'reported' => {'path'=>'Reaction.reported', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 0-1 dateTime
        attr_accessor :manifestation     # 0-1 CodeableReference
        attr_accessor :reported          # 0-1 boolean
      end

      class ProtocolApplied < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProtocolApplied.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProtocolApplied.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProtocolApplied.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'series' => {'path'=>'ProtocolApplied.series', 'type'=>'string', 'min'=>0, 'max'=>1},
          'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ProtocolApplied.authority', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['397428000', '27836007', '76902006', '721764008', '14189004', '36989005', '36653000', '16814004', '23511006', '709410003', '56717001', '363354003', '266113007', '415822001', '66071002', '40468003', '7111000119109', '719590007', '719865001', '38907003', '4740000', '55735004', '240613006', '4834000', '85904008', '63650001', '16541001', '38362002', '61462000', '14168008', '186772009', '712986001', '52947006', '186788009', '409498004', '58750007', '19265001', '23502006', '75702008', '80612004', '186747009', '67924001', '70090004']}, 'path'=>'ProtocolApplied.targetDisease', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-target-disease'}},
          'doseNumber' => {'path'=>'ProtocolApplied.doseNumber', 'type'=>'string', 'min'=>1, 'max'=>1},
          'seriesDoses' => {'path'=>'ProtocolApplied.seriesDoses', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :series            # 0-1 string
        attr_accessor :authority         # 0-1 Reference(Organization)
        attr_accessor :targetDisease     # 0-* [ CodeableConcept ]
        attr_accessor :doseNumber        # 1-1 string
        attr_accessor :seriesDoses       # 0-1 string
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :basedOn               # 0-* [ Reference(CarePlan|MedicationRequest|ServiceRequest|ImmunizationRecommendation) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :statusReason          # 0-1 CodeableConcept
      attr_accessor :vaccineCode           # 1-1 CodeableConcept
      attr_accessor :administeredProduct   # 0-1 CodeableReference
      attr_accessor :manufacturer          # 0-1 CodeableReference
      attr_accessor :lotNumber             # 0-1 string
      attr_accessor :expirationDate        # 0-1 date
      attr_accessor :patient               # 1-1 Reference(Patient)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :supportingInformation # 0-* [ Reference(Resource) ]
      attr_accessor :occurrenceDateTime    # 1-1 dateTime
      attr_accessor :occurrenceString      # 1-1 string
      attr_accessor :primarySource         # 0-1 boolean
      attr_accessor :informationSource     # 0-1 CodeableReference
      attr_accessor :location              # 0-1 Reference(Location)
      attr_accessor :site                  # 0-1 CodeableConcept
      attr_accessor :route                 # 0-1 CodeableConcept
      attr_accessor :doseQuantity          # 0-1 Quantity
      attr_accessor :performer             # 0-* [ Immunization::Performer ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :isSubpotent           # 0-1 boolean
      attr_accessor :subpotentReason       # 0-* [ CodeableConcept ]
      attr_accessor :programEligibility    # 0-* [ Immunization::ProgramEligibility ]
      attr_accessor :fundingSource         # 0-1 CodeableConcept
      attr_accessor :reaction              # 0-* [ Immunization::Reaction ]
      attr_accessor :protocolApplied       # 0-* [ Immunization::ProtocolApplied ]

      def resourceType
        'Immunization'
      end
    end
  end
end