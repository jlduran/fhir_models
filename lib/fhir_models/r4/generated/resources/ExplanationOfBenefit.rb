module FHIR
  module R4
    class ExplanationOfBenefit < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['care-team', 'claim', 'coverage', 'created', 'detail-udi', 'disposition', 'encounter', 'enterer', 'facility', 'identifier', 'item-udi', 'patient', 'payee', 'procedure-udi', 'provider', 'status', 'subdetail-udi']
      METADATA = {
        'id' => {'path'=>'ExplanationOfBenefit.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ExplanationOfBenefit.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ExplanationOfBenefit.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ExplanationOfBenefit.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ExplanationOfBenefit.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ExplanationOfBenefit.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ExplanationOfBenefit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ExplanationOfBenefit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ExplanationOfBenefit.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/explanationofbenefit-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'ExplanationOfBenefit.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-type'=>['institutional', 'oral', 'pharmacy', 'professional', 'vision']}, 'path'=>'ExplanationOfBenefit.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-claimsubtype'=>['ortho', 'emergency']}, 'path'=>'ExplanationOfBenefit.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-subtype'}},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/claim-use'=>['claim', 'preauthorization', 'predetermination']}, 'path'=>'ExplanationOfBenefit.use', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-use'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ExplanationOfBenefit.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'billablePeriod' => {'path'=>'ExplanationOfBenefit.billablePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'ExplanationOfBenefit.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'ExplanationOfBenefit.enterer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ExplanationOfBenefit.insurer', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ExplanationOfBenefit.provider', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'priority' => {'path'=>'ExplanationOfBenefit.priority', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/CodeSystem/processpriority'}},
        'fundsReserveRequested' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/fundsreserve'=>['patient', 'provider', 'none']}, 'path'=>'ExplanationOfBenefit.fundsReserveRequested', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/fundsreserve'}},
        'fundsReserve' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/fundsreserve'=>['patient', 'provider', 'none']}, 'path'=>'ExplanationOfBenefit.fundsReserve', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/fundsreserve'}},
        'related' => {'path'=>'ExplanationOfBenefit.related', 'type'=>'ExplanationOfBenefit::Related', 'min'=>0, 'max'=>Float::INFINITY},
        'prescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription'], 'path'=>'ExplanationOfBenefit.prescription', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'originalPrescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationRequest'], 'path'=>'ExplanationOfBenefit.originalPrescription', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'payee' => {'path'=>'ExplanationOfBenefit.payee', 'type'=>'ExplanationOfBenefit::Payee', 'min'=>0, 'max'=>1},
        'referral' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'ExplanationOfBenefit.referral', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'ExplanationOfBenefit.facility', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'claim' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Claim'], 'path'=>'ExplanationOfBenefit.claim', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'claimResponse' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'ExplanationOfBenefit.claimResponse', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['queued', 'complete', 'error', 'partial']}, 'path'=>'ExplanationOfBenefit.outcome', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
        'disposition' => {'path'=>'ExplanationOfBenefit.disposition', 'type'=>'string', 'min'=>0, 'max'=>1},
        'preAuthRef' => {'path'=>'ExplanationOfBenefit.preAuthRef', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'preAuthRefPeriod' => {'path'=>'ExplanationOfBenefit.preAuthRefPeriod', 'type'=>'Period', 'min'=>0, 'max'=>Float::INFINITY},
        'careTeam' => {'path'=>'ExplanationOfBenefit.careTeam', 'type'=>'ExplanationOfBenefit::CareTeam', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'path'=>'ExplanationOfBenefit.supportingInfo', 'type'=>'ExplanationOfBenefit::SupportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'diagnosis' => {'path'=>'ExplanationOfBenefit.diagnosis', 'type'=>'ExplanationOfBenefit::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'procedure' => {'path'=>'ExplanationOfBenefit.procedure', 'type'=>'ExplanationOfBenefit::Procedure', 'min'=>0, 'max'=>Float::INFINITY},
        'precedence' => {'path'=>'ExplanationOfBenefit.precedence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'insurance' => {'path'=>'ExplanationOfBenefit.insurance', 'type'=>'ExplanationOfBenefit::Insurance', 'min'=>1, 'max'=>Float::INFINITY},
        'accident' => {'path'=>'ExplanationOfBenefit.accident', 'type'=>'ExplanationOfBenefit::Accident', 'min'=>0, 'max'=>1},
        'item' => {'path'=>'ExplanationOfBenefit.item', 'type'=>'ExplanationOfBenefit::Item', 'min'=>0, 'max'=>Float::INFINITY},
        'addItem' => {'path'=>'ExplanationOfBenefit.addItem', 'type'=>'ExplanationOfBenefit::AddItem', 'min'=>0, 'max'=>Float::INFINITY},
        'adjudication' => {'path'=>'ExplanationOfBenefit.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
        'total' => {'path'=>'ExplanationOfBenefit.total', 'type'=>'ExplanationOfBenefit::Total', 'min'=>0, 'max'=>Float::INFINITY},
        'payment' => {'path'=>'ExplanationOfBenefit.payment', 'type'=>'ExplanationOfBenefit::Payment', 'min'=>0, 'max'=>1},
        'formCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/forms-codes'=>['1', '2']}, 'path'=>'ExplanationOfBenefit.formCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
        'form' => {'path'=>'ExplanationOfBenefit.form', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'processNote' => {'path'=>'ExplanationOfBenefit.processNote', 'type'=>'ExplanationOfBenefit::ProcessNote', 'min'=>0, 'max'=>Float::INFINITY},
        'benefitPeriod' => {'path'=>'ExplanationOfBenefit.benefitPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'benefitBalance' => {'path'=>'ExplanationOfBenefit.benefitBalance', 'type'=>'ExplanationOfBenefit::BenefitBalance', 'min'=>0, 'max'=>Float::INFINITY}
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
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payeetype'=>['subscriber', 'provider', 'other']}, 'path'=>'Payee.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payeetype'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Payee.party', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
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
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/missingtoothreason'=>['e', 'c', 'u', 'o']}, 'path'=>'SupportingInfo.reason', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/missing-tooth-reason'}}
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
        attr_accessor :reason            # 0-1 Coding
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
          'focal' => {'path'=>'Insurance.focal', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Insurance.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'preAuthRef' => {'path'=>'Insurance.preAuthRef', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :focal             # 1-1 boolean
        attr_accessor :coverage          # 1-1 Reference(Coverage)
        attr_accessor :preAuthRef        # 0-* [ string ]
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
          'date' => {'path'=>'Accident.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['MVA', 'SCHOOL', 'SPT', 'WPA']}, 'path'=>'Accident.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActIncidentCode'}},
          'locationAddress' => {'path'=>'Accident.location[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Accident.location[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :date              # 0-1 date
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
          'noteNumber' => {'path'=>'Item.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'adjudication' => {'path'=>'Item.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'path'=>'Item.detail', 'type'=>'ExplanationOfBenefit::Item::Detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Adjudication < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Adjudication.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Adjudication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Adjudication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication'=>['submitted', 'copay', 'eligible', 'deductible', 'unallocdeduct', 'eligpercent', 'tax', 'benefit']}, 'path'=>'Adjudication.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication'}},
            'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication-reason'=>['ar001', 'ar002']}, 'path'=>'Adjudication.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication-reason'}},
            'amount' => {'path'=>'Adjudication.amount', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'value' => {'path'=>'Adjudication.value', 'type'=>'decimal', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :category          # 1-1 CodeableConcept
          attr_accessor :reason            # 0-1 CodeableConcept
          attr_accessor :amount            # 0-1 Money
          attr_accessor :value             # 0-1 decimal
        end

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
            'noteNumber' => {'path'=>'Detail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
            'adjudication' => {'path'=>'Detail.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
            'subDetail' => {'path'=>'Detail.subDetail', 'type'=>'ExplanationOfBenefit::Item::Detail::SubDetail', 'min'=>0, 'max'=>Float::INFINITY}
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
              'udi' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'SubDetail.udi', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
              'noteNumber' => {'path'=>'SubDetail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
              'adjudication' => {'path'=>'SubDetail.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY}
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
            attr_accessor :noteNumber        # 0-* [ positiveInt ]
            attr_accessor :adjudication      # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
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
          attr_accessor :noteNumber        # 0-* [ positiveInt ]
          attr_accessor :adjudication      # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
          attr_accessor :subDetail         # 0-* [ ExplanationOfBenefit::Item::Detail::SubDetail ]
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
        attr_accessor :noteNumber              # 0-* [ positiveInt ]
        attr_accessor :adjudication            # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
        attr_accessor :detail                  # 0-* [ ExplanationOfBenefit::Item::Detail ]
      end

      class AddItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'serviced' => ['date', 'Period'],
          'location' => ['CodeableConcept', 'Address', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'AddItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'AddItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'AddItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemSequence' => {'path'=>'AddItem.itemSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'detailSequence' => {'path'=>'AddItem.detailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'subDetailSequence' => {'path'=>'AddItem.subDetailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'AddItem.provider', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'AddItem.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'AddItem.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'path'=>'AddItem.programCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
          'servicedDate' => {'path'=>'AddItem.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'servicedPeriod' => {'path'=>'AddItem.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'locationCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-serviceplace'=>['01', '03', '04', '05', '06', '07', '08', '09', '11', '12', '13', '14', '15', '19', '20', '21', '41']}, 'path'=>'AddItem.location[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-place'}},
          'locationAddress' => {'path'=>'AddItem.location[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'AddItem.location[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'AddItem.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'path'=>'AddItem.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'factor' => {'path'=>'AddItem.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'net' => {'path'=>'AddItem.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'bodySite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-tooth'=>['0', '1', '2', '3', '4', '5', '6', '7', '8', '11', '12', '13', '14', '15', '16', '17', '18', '21', '22', '23', '24', '25', '26', '27', '28', '31', '32', '33', '34', '35', '36', '37', '38', '41', '42', '43', '44', '45', '46', '47', '48']}, 'path'=>'AddItem.bodySite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/tooth'}},
          'subSite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/FDI-surface'=>['M', 'O', 'I', 'D', 'B', 'V', 'L', 'MO', 'DO', 'DI', 'MOD']}, 'path'=>'AddItem.subSite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/surface'}},
          'noteNumber' => {'path'=>'AddItem.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'adjudication' => {'path'=>'AddItem.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'path'=>'AddItem.detail', 'type'=>'ExplanationOfBenefit::AddItem::Detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Detail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
            'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Detail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
            'quantity' => {'path'=>'Detail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'unitPrice' => {'path'=>'Detail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'factor' => {'path'=>'Detail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'net' => {'path'=>'Detail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'noteNumber' => {'path'=>'Detail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
            'adjudication' => {'path'=>'Detail.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
            'subDetail' => {'path'=>'Detail.subDetail', 'type'=>'ExplanationOfBenefit::AddItem::Detail::SubDetail', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class SubDetail < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'SubDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'SubDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'SubDetail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'SubDetail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
              'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'SubDetail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
              'quantity' => {'path'=>'SubDetail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'path'=>'SubDetail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'factor' => {'path'=>'SubDetail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'net' => {'path'=>'SubDetail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'noteNumber' => {'path'=>'SubDetail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
              'adjudication' => {'path'=>'SubDetail.adjudication', 'type'=>'ExplanationOfBenefit::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :productOrService  # 1-1 CodeableConcept
            attr_accessor :modifier          # 0-* [ CodeableConcept ]
            attr_accessor :quantity          # 0-1 Quantity
            attr_accessor :unitPrice         # 0-1 Money
            attr_accessor :factor            # 0-1 decimal
            attr_accessor :net               # 0-1 Money
            attr_accessor :noteNumber        # 0-* [ positiveInt ]
            attr_accessor :adjudication      # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :productOrService  # 1-1 CodeableConcept
          attr_accessor :modifier          # 0-* [ CodeableConcept ]
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :unitPrice         # 0-1 Money
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :net               # 0-1 Money
          attr_accessor :noteNumber        # 0-* [ positiveInt ]
          attr_accessor :adjudication      # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
          attr_accessor :subDetail         # 0-* [ ExplanationOfBenefit::AddItem::Detail::SubDetail ]
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :itemSequence            # 0-* [ positiveInt ]
        attr_accessor :detailSequence          # 0-* [ positiveInt ]
        attr_accessor :subDetailSequence       # 0-* [ positiveInt ]
        attr_accessor :provider                # 0-* [ Reference(Practitioner|PractitionerRole|Organization) ]
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
        attr_accessor :bodySite                # 0-1 CodeableConcept
        attr_accessor :subSite                 # 0-* [ CodeableConcept ]
        attr_accessor :noteNumber              # 0-* [ positiveInt ]
        attr_accessor :adjudication            # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
        attr_accessor :detail                  # 0-* [ ExplanationOfBenefit::AddItem::Detail ]
      end

      class Total < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Total.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Total.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Total.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication'=>['submitted', 'copay', 'eligible', 'deductible', 'unallocdeduct', 'eligpercent', 'tax', 'benefit']}, 'path'=>'Total.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication'}},
          'amount' => {'path'=>'Total.amount', 'type'=>'Money', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 1-1 CodeableConcept
        attr_accessor :amount            # 1-1 Money
      end

      class Payment < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Payment.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Payment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Payment.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-paymenttype'=>['complete', 'partial']}, 'path'=>'Payment.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-paymenttype'}},
          'adjustment' => {'path'=>'Payment.adjustment', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'adjustmentReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payment-adjustment-reason'=>['a001', 'a002']}, 'path'=>'Payment.adjustmentReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-adjustment-reason'}},
          'date' => {'path'=>'Payment.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Payment.amount', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'identifier' => {'path'=>'Payment.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :adjustment        # 0-1 Money
        attr_accessor :adjustmentReason  # 0-1 CodeableConcept
        attr_accessor :date              # 0-1 date
        attr_accessor :amount            # 0-1 Money
        attr_accessor :identifier        # 0-1 Identifier
      end

      class ProcessNote < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProcessNote.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProcessNote.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProcessNote.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'number' => {'path'=>'ProcessNote.number', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/note-type'=>['display', 'print', 'printoper']}, 'path'=>'ProcessNote.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/note-type'}},
          'text' => {'path'=>'ProcessNote.text', 'type'=>'string', 'min'=>0, 'max'=>1},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ProcessNote.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :number            # 0-1 positiveInt
        attr_accessor :type              # 0-1 code
        attr_accessor :text              # 0-1 string
        attr_accessor :language          # 0-1 CodeableConcept
      end

      class BenefitBalance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'BenefitBalance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'BenefitBalance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'BenefitBalance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'BenefitBalance.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'excluded' => {'path'=>'BenefitBalance.excluded', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'name' => {'path'=>'BenefitBalance.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'BenefitBalance.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'network' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-network'=>['in', 'out']}, 'path'=>'BenefitBalance.network', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-network'}},
          'unit' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-unit'=>['individual', 'family']}, 'path'=>'BenefitBalance.unit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-unit'}},
          'term' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-term'=>['annual', 'day', 'lifetime']}, 'path'=>'BenefitBalance.term', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-term'}},
          'financial' => {'path'=>'BenefitBalance.financial', 'type'=>'ExplanationOfBenefit::BenefitBalance::Financial', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Financial < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'allowed' => ['unsignedInt', 'string', 'Money'],
            'used' => ['unsignedInt', 'Money']
          }
          METADATA = {
            'id' => {'path'=>'Financial.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Financial.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Financial.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-type'=>['benefit', 'deductible', 'visit', 'room', 'copay', 'copay-percent', 'copay-maximum', 'vision-exam', 'vision-glasses', 'vision-contacts', 'medical-primarycare', 'pharmacy-dispense']}, 'path'=>'Financial.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-type'}},
            'allowedUnsignedInt' => {'path'=>'Financial.allowed[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
            'allowedString' => {'path'=>'Financial.allowed[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
            'allowedMoney' => {'path'=>'Financial.allowed[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'usedUnsignedInt' => {'path'=>'Financial.used[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
            'usedMoney' => {'path'=>'Financial.used[x]', 'type'=>'Money', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                 # 0-1 string
          attr_accessor :extension          # 0-* [ Extension ]
          attr_accessor :modifierExtension  # 0-* [ Extension ]
          attr_accessor :type               # 1-1 CodeableConcept
          attr_accessor :allowedUnsignedInt # 0-1 unsignedInt
          attr_accessor :allowedString      # 0-1 string
          attr_accessor :allowedMoney       # 0-1 Money
          attr_accessor :usedUnsignedInt    # 0-1 unsignedInt
          attr_accessor :usedMoney          # 0-1 Money
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 1-1 CodeableConcept
        attr_accessor :excluded          # 0-1 boolean
        attr_accessor :name              # 0-1 string
        attr_accessor :description       # 0-1 string
        attr_accessor :network           # 0-1 CodeableConcept
        attr_accessor :unit              # 0-1 CodeableConcept
        attr_accessor :term              # 0-1 CodeableConcept
        attr_accessor :financial         # 0-* [ ExplanationOfBenefit::BenefitBalance::Financial ]
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
      attr_accessor :status                # 1-1 code
      attr_accessor :type                  # 1-1 CodeableConcept
      attr_accessor :subType               # 0-1 CodeableConcept
      attr_accessor :use                   # 1-1 code
      attr_accessor :patient               # 1-1 Reference(Patient)
      attr_accessor :billablePeriod        # 0-1 Period
      attr_accessor :created               # 1-1 dateTime
      attr_accessor :enterer               # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :insurer               # 1-1 Reference(Organization)
      attr_accessor :provider              # 1-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :priority              # 0-1 CodeableConcept
      attr_accessor :fundsReserveRequested # 0-1 CodeableConcept
      attr_accessor :fundsReserve          # 0-1 CodeableConcept
      attr_accessor :related               # 0-* [ ExplanationOfBenefit::Related ]
      attr_accessor :prescription          # 0-1 Reference(MedicationRequest|VisionPrescription)
      attr_accessor :originalPrescription  # 0-1 Reference(MedicationRequest)
      attr_accessor :payee                 # 0-1 ExplanationOfBenefit::Payee
      attr_accessor :referral              # 0-1 Reference(ServiceRequest)
      attr_accessor :facility              # 0-1 Reference(Location)
      attr_accessor :claim                 # 0-1 Reference(Claim)
      attr_accessor :claimResponse         # 0-1 Reference(ClaimResponse)
      attr_accessor :outcome               # 1-1 code
      attr_accessor :disposition           # 0-1 string
      attr_accessor :preAuthRef            # 0-* [ string ]
      attr_accessor :preAuthRefPeriod      # 0-* [ Period ]
      attr_accessor :careTeam              # 0-* [ ExplanationOfBenefit::CareTeam ]
      attr_accessor :supportingInfo        # 0-* [ ExplanationOfBenefit::SupportingInfo ]
      attr_accessor :diagnosis             # 0-* [ ExplanationOfBenefit::Diagnosis ]
      attr_accessor :procedure             # 0-* [ ExplanationOfBenefit::Procedure ]
      attr_accessor :precedence            # 0-1 positiveInt
      attr_accessor :insurance             # 1-* [ ExplanationOfBenefit::Insurance ]
      attr_accessor :accident              # 0-1 ExplanationOfBenefit::Accident
      attr_accessor :item                  # 0-* [ ExplanationOfBenefit::Item ]
      attr_accessor :addItem               # 0-* [ ExplanationOfBenefit::AddItem ]
      attr_accessor :adjudication          # 0-* [ ExplanationOfBenefit::Item::Adjudication ]
      attr_accessor :total                 # 0-* [ ExplanationOfBenefit::Total ]
      attr_accessor :payment               # 0-1 ExplanationOfBenefit::Payment
      attr_accessor :formCode              # 0-1 CodeableConcept
      attr_accessor :form                  # 0-1 Attachment
      attr_accessor :processNote           # 0-* [ ExplanationOfBenefit::ProcessNote ]
      attr_accessor :benefitPeriod         # 0-1 Period
      attr_accessor :benefitBalance        # 0-* [ ExplanationOfBenefit::BenefitBalance ]

      def resourceType
        'ExplanationOfBenefit'
      end
    end
  end
  ExplanationOfBenefit = FHIR::R4::ExplanationOfBenefit
end