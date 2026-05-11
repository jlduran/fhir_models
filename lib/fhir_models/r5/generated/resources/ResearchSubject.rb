module FHIR
  module R5
    class ResearchSubject < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'identifier', 'patient', 'status', 'study', 'subject', 'subject_state']
      METADATA = {
        'id' => {'path'=>'ResearchSubject.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ResearchSubject.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ResearchSubject.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ResearchSubject.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ResearchSubject.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ResearchSubject.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ResearchSubject.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ResearchSubject.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ResearchSubject.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ResearchSubject.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'progress' => {'path'=>'ResearchSubject.progress', 'type'=>'ResearchSubject::Progress', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'path'=>'ResearchSubject.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'study' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'path'=>'ResearchSubject.study', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Specimen', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'path'=>'ResearchSubject.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'assignedComparisonGroup' => {'path'=>'ResearchSubject.assignedComparisonGroup', 'type'=>'id', 'min'=>0, 'max'=>1},
        'actualComparisonGroup' => {'path'=>'ResearchSubject.actualComparisonGroup', 'type'=>'id', 'min'=>0, 'max'=>1},
        'consent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Consent'], 'path'=>'ResearchSubject.consent', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Progress < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Progress.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Progress.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Progress.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-state-type'=>['Milestone', 'Enrollment']}, 'path'=>'Progress.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-state-type'}},
          'subjectState' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-state'=>['candidate', 'eligible', 'follow-up', 'ineligible', 'not-registered', 'off-study', 'on-study', 'on-study-intervention', 'on-study-observation', 'pending-on-study', 'potential-candidate', 'screening', 'withdrawn']}, 'path'=>'Progress.subjectState', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-state'}},
          'milestone' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/research-subject-milestone'=>['SignedUp', 'Screened', 'Randomized']}, 'path'=>'Progress.milestone', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-milestone'}},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/state-change-reason'=>['adverseEvent', 'death', 'notEligible', 'eligibleButNo', 'enrolled', 'exclusion', 'followUpComplete', 'inclusion', 'informedConsentSigned', 'intOrObsComplete', 'nonCompliance', 'preReg', 'refuseConsent', 'screenFailure', 'studyClosed', 'studyTerminated', 'subjectRefusal', 'unwillingOrUnable', 'withdrawnConsent']}, 'path'=>'Progress.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/state-change-reason'}},
          'startDate' => {'path'=>'Progress.startDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'endDate' => {'path'=>'Progress.endDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :subjectState      # 0-1 CodeableConcept
        attr_accessor :milestone         # 0-1 CodeableConcept
        attr_accessor :reason            # 0-1 CodeableConcept
        attr_accessor :startDate         # 0-1 dateTime
        attr_accessor :endDate           # 0-1 dateTime
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :status                  # 1-1 code
      attr_accessor :progress                # 0-* [ ResearchSubject::Progress ]
      attr_accessor :period                  # 0-1 Period
      attr_accessor :study                   # 1-1 Reference(ResearchStudy)
      attr_accessor :subject                 # 1-1 Reference(Patient|Group|Specimen|Device|Medication|Substance|BiologicallyDerivedProduct)
      attr_accessor :assignedComparisonGroup # 0-1 id
      attr_accessor :actualComparisonGroup   # 0-1 id
      attr_accessor :consent                 # 0-* [ Reference(Consent) ]

      def resourceType
        'ResearchSubject'
      end
    end
  end
end