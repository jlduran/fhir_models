module FHIR
  module R4
    class Claim < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['care-team', 'created', 'detail-udi', 'encounter', 'enterer', 'facility', 'identifier', 'insurer', 'item-udi', 'patient', 'payee', 'priority', 'procedure-udi', 'provider', 'status', 'subdetail-udi', 'use']
      METADATA = {
        'id' => {'path'=>'Claim.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Claim.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Claim.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Claim.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Claim.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Claim.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Claim.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Claim.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Claim.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'Claim.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-type'=>['institutional', 'oral', 'pharmacy', 'professional', 'vision']}, 'path'=>'Claim.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-claimsubtype'=>['ortho', 'emergency']}, 'path'=>'Claim.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-subtype'}},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/claim-use'=>['claim', 'preauthorization', 'predetermination']}, 'path'=>'Claim.use', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-use'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Claim.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'billablePeriod' => {'path'=>'Claim.billablePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'Claim.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Claim.enterer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Claim.insurer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Claim.provider', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'priority' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/processpriority'=>['stat', 'normal', 'deferred']}, 'path'=>'Claim.priority', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/process-priority'}},
        'fundsReserve' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/fundsreserve'=>['patient', 'provider', 'none']}, 'path'=>'Claim.fundsReserve', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/fundsreserve'}},
        'related' => {'path'=>'Claim.related', 'type'=>'Claim::Related', 'min'=>0, 'max'=>Float::INFINITY},
        'prescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription'], 'path'=>'Claim.prescription', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'originalPrescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription'], 'path'=>'Claim.originalPrescription', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'payee' => {'path'=>'Claim.payee', 'type'=>'Claim::Payee', 'min'=>0, 'max'=>1},
        'referral' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'Claim.referral', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Claim.facility', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'careTeam' => {'path'=>'Claim.careTeam', 'type'=>'Claim::CareTeam', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'path'=>'Claim.supportingInfo', 'type'=>'Claim::SupportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'diagnosis' => {'path'=>'Claim.diagnosis', 'type'=>'Claim::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'procedure' => {'path'=>'Claim.procedure', 'type'=>'Claim::Procedure', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'path'=>'Claim.insurance', 'type'=>'Claim::Insurance', 'min'=>1, 'max'=>Float::INFINITY},
        'accident' => {'path'=>'Claim.accident', 'type'=>'Claim::Accident', 'min'=>0, 'max'=>1},
        'item' => {'path'=>'Claim.item', 'type'=>'Claim::Item', 'min'=>0, 'max'=>Float::INFINITY},
        'total' => {'path'=>'Claim.total', 'type'=>'Money', 'min'=>0, 'max'=>1}
      }

      class Related < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Related.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Related.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Related.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'claim' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Claim'], 'path'=>'Related.claim', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-relatedclaimrelationship'=>['prior', 'associated']}, 'path'=>'Related.relationship', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/related-claim-relationship'}},
          'reference' => {'path'=>'Related.reference', 'type'=>'Identifier', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :claim             # 0-1 Reference(Claim)
        attr_accessor :relationship      # 0-1 CodeableConcept
        attr_accessor :reference         # 0-1 Identifier
      end

      class Payee < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Payee.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Payee.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Payee.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payeetype'=>['subscriber', 'provider', 'other']}, 'path'=>'Payee.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payeetype'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Payee.party', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :party             # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson)
      end

      class CareTeam < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'CareTeam.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CareTeam.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'CareTeam.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'CareTeam.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'CareTeam.provider', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'responsible' => {'path'=>'CareTeam.responsible', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claimcareteamrole'=>['primary', 'assist', 'supervisor', 'other']}, 'path'=>'CareTeam.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-careteamrole'}},
          'qualification' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-providerqualification'=>['311405', '604215', '604210']}, 'path'=>'CareTeam.qualification', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provider-qualification'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :provider          # 1-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :responsible       # 0-1 boolean
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :qualification     # 0-1 CodeableConcept
      end

      class SupportingInfo < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'timing' => ['date', 'Period'],
          'value' => ['boolean', 'string', 'Quantity', 'Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'SupportingInfo.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SupportingInfo.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SupportingInfo.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'SupportingInfo.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claiminformationcategory'=>['info', 'discharge', 'onset', 'related', 'exception', 'material', 'attachment', 'missingtooth', 'prosthesis', 'other', 'hospitalized', 'employmentimpacted', 'externalcause', 'patientreasonforvisit']}, 'path'=>'SupportingInfo.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-informationcategory'}},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-exception'=>['student', 'disabled']}, 'path'=>'SupportingInfo.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-exception'}},
          'timingDate' => {'path'=>'SupportingInfo.timing[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'timingPeriod' => {'path'=>'SupportingInfo.timing[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'path'=>'SupportingInfo.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'valueString' => {'path'=>'SupportingInfo.value[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'SupportingInfo.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'path'=>'SupportingInfo.value[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
          'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'SupportingInfo.value[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/missingtoothreason'=>['e', 'c', 'u', 'o']}, 'path'=>'SupportingInfo.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/missing-tooth-reason'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :category          # 1-1 CodeableConcept
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :timingDate        # 0-1 date
        attr_accessor :timingPeriod      # 0-1 Period
        attr_accessor :valueBoolean      # 0-1 boolean
        attr_accessor :valueString       # 0-1 string
        attr_accessor :valueQuantity     # 0-1 Quantity
        attr_accessor :valueAttachment   # 0-1 Attachment
        attr_accessor :valueReference    # 0-1 Reference(Resource)
        attr_accessor :reason            # 0-1 CodeableConcept
      end

      class Diagnosis < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'diagnosis' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Diagnosis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Diagnosis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Diagnosis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Diagnosis.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'diagnosisCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/icd-10'=>['123456', '123457', '987654', '123987', '112233', '997755', '321789']}, 'path'=>'Diagnosis.diagnosis[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10'}},
          'diagnosisReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'path'=>'Diagnosis.diagnosis[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosistype'=>['admitting', 'clinical', 'differential', 'discharge', 'laboratory', 'nursing', 'prenatal', 'principal', 'radiology', 'remote', 'retrospective', 'self']}, 'path'=>'Diagnosis.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosistype'}},
          'onAdmission' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission'=>['y', 'n', 'u', 'w']}, 'path'=>'Diagnosis.onAdmission', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosis-on-admission'}},
          'packageCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-diagnosisrelatedgroup'=>['100', '101', '300', '400']}, 'path'=>'Diagnosis.packageCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-diagnosisrelatedgroup'}}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :sequence                 # 1-1 positiveInt
        attr_accessor :diagnosisCodeableConcept # 1-1 CodeableConcept
        attr_accessor :diagnosisReference       # 1-1 Reference(Condition)
        attr_accessor :type                     # 0-* [ CodeableConcept ]
        attr_accessor :onAdmission              # 0-1 CodeableConcept
        attr_accessor :packageCode              # 0-1 CodeableConcept
      end

      class Procedure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'procedure' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Procedure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Procedure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Procedure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Procedure.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-procedure-type'=>['primary', 'secondary']}, 'path'=>'Procedure.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-procedure-type'}},
          'date' => {'path'=>'Procedure.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'procedureCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/ex-icd-10-procedures'=>['123001', '123002', '123003']}, 'path'=>'Procedure.procedure[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10-procedures'}},
          'procedureReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure'], 'path'=>'Procedure.procedure[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Procedure.udi', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :sequence                 # 1-1 positiveInt
        attr_accessor :type                     # 0-* [ CodeableConcept ]
        attr_accessor :date                     # 0-1 dateTime
        attr_accessor :procedureCodeableConcept # 1-1 CodeableConcept
        attr_accessor :procedureReference       # 1-1 Reference(Procedure)
        attr_accessor :udi                      # 0-* [ Reference(Device) ]
      end

      class Insurance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Insurance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Insurance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Insurance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Insurance.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'focal' => {'path'=>'Insurance.focal', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'identifier' => {'path'=>'Insurance.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Insurance.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'businessArrangement' => {'path'=>'Insurance.businessArrangement', 'type'=>'string', 'min'=>0, 'max'=>1},
          'preAuthRef' => {'path'=>'Insurance.preAuthRef', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
          'claimResponse' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'Insurance.claimResponse', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :sequence            # 1-1 positiveInt
        attr_accessor :focal               # 1-1 boolean
        attr_accessor :identifier          # 0-1 Identifier
        attr_accessor :coverage            # 1-1 Reference(Coverage)
        attr_accessor :businessArrangement # 0-1 string
        attr_accessor :preAuthRef          # 0-* [ string ]
        attr_accessor :claimResponse       # 0-1 Reference(ClaimResponse)
      end

      class Accident < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'location' => ['Address', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Accident.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Accident.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Accident.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'date' => {'path'=>'Accident.date', 'type'=>'date', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['MVA', 'SCHOOL', 'SPT', 'WPA']}, 'path'=>'Accident.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActIncidentCode'}},
          'locationAddress' => {'path'=>'Accident.location[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Accident.location[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 1-1 date
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :locationAddress   # 0-1 Address
        attr_accessor :locationReference # 0-1 Reference(Location)
      end

      class Item < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'serviced' => ['date', 'Period'],
          'location' => ['CodeableConcept', 'Address', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Item.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'careTeamSequence' => {'path'=>'Item.careTeamSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'diagnosisSequence' => {'path'=>'Item.diagnosisSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'procedureSequence' => {'path'=>'Item.procedureSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'informationSequence' => {'path'=>'Item.informationSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'path'=>'Item.revenue', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'Item.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Item.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Item.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'path'=>'Item.programCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
          'servicedDate' => {'path'=>'Item.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'servicedPeriod' => {'path'=>'Item.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'locationCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-serviceplace'=>['01', '03', '04', '05', '06', '07', '08', '09', '11', '12', '13', '14', '15', '19', '20', '21', '41']}, 'path'=>'Item.location[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-place'}},
          'locationAddress' => {'path'=>'Item.location[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Item.location[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'Item.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'path'=>'Item.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'factor' => {'path'=>'Item.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'net' => {'path'=>'Item.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Item.udi', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'bodySite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-tooth'=>['0', '1', '2', '3', '4', '5', '6', '7', '8', '11', '12', '13', '14', '15', '16', '17', '18', '21', '22', '23', '24', '25', '26', '27', '28', '31', '32', '33', '34', '35', '36', '37', '38', '41', '42', '43', '44', '45', '46', '47', '48']}, 'path'=>'Item.bodySite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/tooth'}},
          'subSite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/FDI-surface'=>['M', 'O', 'I', 'D', 'B', 'V', 'L', 'MO', 'DO', 'DI', 'MOD']}, 'path'=>'Item.subSite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/surface'}},
          'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Item.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'path'=>'Item.detail', 'type'=>'Claim::Item::Detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'sequence' => {'path'=>'Detail.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
            'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'path'=>'Detail.revenue', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
            'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'Detail.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
            'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Detail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
            'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Detail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
            'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'path'=>'Detail.programCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
            'quantity' => {'path'=>'Detail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'unitPrice' => {'path'=>'Detail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'factor' => {'path'=>'Detail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'net' => {'path'=>'Detail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Detail.udi', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'subDetail' => {'path'=>'Detail.subDetail', 'type'=>'Claim::Item::Detail::SubDetail', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class SubDetail < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'SubDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'SubDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'SubDetail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'sequence' => {'path'=>'SubDetail.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
              'revenue' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-revenue-center'=>['0370', '0420', '0421', '0440', '0441', '0450', '0451', '0452', '0010']}, 'path'=>'SubDetail.revenue', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-revenue-center'}},
              'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'SubDetail.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
              'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'SubDetail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
              'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'SubDetail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
              'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'path'=>'SubDetail.programCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
              'quantity' => {'path'=>'SubDetail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'path'=>'SubDetail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'factor' => {'path'=>'SubDetail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'net' => {'path'=>'SubDetail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'SubDetail.udi', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :sequence          # 1-1 positiveInt
            attr_accessor :revenue           # 0-1 CodeableConcept
            attr_accessor :category          # 0-1 CodeableConcept
            attr_accessor :productOrService  # 1-1 CodeableConcept
            attr_accessor :modifier          # 0-* [ CodeableConcept ]
            attr_accessor :programCode       # 0-* [ CodeableConcept ]
            attr_accessor :quantity          # 0-1 Quantity
            attr_accessor :unitPrice         # 0-1 Money
            attr_accessor :factor            # 0-1 decimal
            attr_accessor :net               # 0-1 Money
            attr_accessor :udi               # 0-* [ Reference(Device) ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :sequence          # 1-1 positiveInt
          attr_accessor :revenue           # 0-1 CodeableConcept
          attr_accessor :category          # 0-1 CodeableConcept
          attr_accessor :productOrService  # 1-1 CodeableConcept
          attr_accessor :modifier          # 0-* [ CodeableConcept ]
          attr_accessor :programCode       # 0-* [ CodeableConcept ]
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :unitPrice         # 0-1 Money
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :net               # 0-1 Money
          attr_accessor :udi               # 0-* [ Reference(Device) ]
          attr_accessor :subDetail         # 0-* [ Claim::Item::Detail::SubDetail ]
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :sequence                # 1-1 positiveInt
        attr_accessor :careTeamSequence        # 0-* [ positiveInt ]
        attr_accessor :diagnosisSequence       # 0-* [ positiveInt ]
        attr_accessor :procedureSequence       # 0-* [ positiveInt ]
        attr_accessor :informationSequence     # 0-* [ positiveInt ]
        attr_accessor :revenue                 # 0-1 CodeableConcept
        attr_accessor :category                # 0-1 CodeableConcept
        attr_accessor :productOrService        # 1-1 CodeableConcept
        attr_accessor :modifier                # 0-* [ CodeableConcept ]
        attr_accessor :programCode             # 0-* [ CodeableConcept ]
        attr_accessor :servicedDate            # 0-1 date
        attr_accessor :servicedPeriod          # 0-1 Period
        attr_accessor :locationCodeableConcept # 0-1 CodeableConcept
        attr_accessor :locationAddress         # 0-1 Address
        attr_accessor :locationReference       # 0-1 Reference(Location)
        attr_accessor :quantity                # 0-1 Quantity
        attr_accessor :unitPrice               # 0-1 Money
        attr_accessor :factor                  # 0-1 decimal
        attr_accessor :net                     # 0-1 Money
        attr_accessor :udi                     # 0-* [ Reference(Device) ]
        attr_accessor :bodySite                # 0-1 CodeableConcept
        attr_accessor :subSite                 # 0-* [ CodeableConcept ]
        attr_accessor :encounter               # 0-* [ Reference(Encounter) ]
        attr_accessor :detail                  # 0-* [ Claim::Item::Detail ]
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
      attr_accessor :status               # 1-1 code
      attr_accessor :type                 # 1-1 CodeableConcept
      attr_accessor :subType              # 0-1 CodeableConcept
      attr_accessor :use                  # 1-1 code
      attr_accessor :patient              # 1-1 Reference(Patient)
      attr_accessor :billablePeriod       # 0-1 Period
      attr_accessor :created              # 1-1 dateTime
      attr_accessor :enterer              # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :insurer              # 0-1 Reference(Organization)
      attr_accessor :provider             # 1-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :priority             # 1-1 CodeableConcept
      attr_accessor :fundsReserve         # 0-1 CodeableConcept
      attr_accessor :related              # 0-* [ Claim::Related ]
      attr_accessor :prescription         # 0-1 Reference(DeviceRequest|MedicationRequest|VisionPrescription)
      attr_accessor :originalPrescription # 0-1 Reference(DeviceRequest|MedicationRequest|VisionPrescription)
      attr_accessor :payee                # 0-1 Claim::Payee
      attr_accessor :referral             # 0-1 Reference(ServiceRequest)
      attr_accessor :facility             # 0-1 Reference(Location)
      attr_accessor :careTeam             # 0-* [ Claim::CareTeam ]
      attr_accessor :supportingInfo       # 0-* [ Claim::SupportingInfo ]
      attr_accessor :diagnosis            # 0-* [ Claim::Diagnosis ]
      attr_accessor :procedure            # 0-* [ Claim::Procedure ]
      attr_accessor :insurance            # 1-* [ Claim::Insurance ]
      attr_accessor :accident             # 0-1 Claim::Accident
      attr_accessor :item                 # 0-* [ Claim::Item ]
      attr_accessor :total                # 0-1 Money

      def resourceType
        'Claim'
      end
    end
  end
  Claim = FHIR::R4::Claim
end