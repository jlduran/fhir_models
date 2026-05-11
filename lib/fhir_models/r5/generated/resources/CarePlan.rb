module FHIR
  module R5
    class CarePlan < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['activity-reference', 'based-on', 'care-team', 'category', 'condition', 'custodian', 'date', 'encounter', 'goal', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'intent', 'part-of', 'patient', 'replaces', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'CarePlan.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CarePlan.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CarePlan.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'CarePlan.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'CarePlan.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CarePlan.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CarePlan.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CarePlan.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'CarePlan.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'CarePlan.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'path'=>'CarePlan.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/RequestOrchestration', 'http://hl7.org/fhir/StructureDefinition/NutritionOrder'], 'path'=>'CarePlan.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan'], 'path'=>'CarePlan.replaces', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan'], 'path'=>'CarePlan.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'CarePlan.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'order', 'option', 'directive']}, 'path'=>'CarePlan.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/care-plan-intent'}},
        'category' => {'valid_codes'=>{'http://snomed.info/sct'=>['734163000', '718347000', '735321000', '735322007', '735323002', '735324008', '735325009', '735326005', '735327001', '735328006', '735329003', '735330008', '735984001', '735985000', '735986004', '736054002', '736055001', '736056000', '736057009', '736058004', '736059007', '736234007', '736235008', '736241001', '736245005', '736246006', '736248007', '736249004', '736250004', '736251000', '736252007', '736253002', '736254008', '736271009', '736282001', '736283006', '736284000', '736285004', '736286003', '736287007', '736288002', '736336006', '736337002', '736338007', '736339004', '736340002', '736351002', '736352009', '736353004', '736355006', '736356007', '736357003', '736358008', '736359000', '736361009', '736362002', '736363007', '736364001', '736365000', '736366004', '736367008', '736368003', '736369006', '736370007', '736371006', '736372004', '736373009', '736374003', '736375002', '736376001', '736377005', '736378000', '736379008', '736381005', '736382003', '736383008', '736384002', '736385001', '736386000', '736387009', '736389007', '736390003', '736391004', '736392006', '736393001', '736394007', '736395008', '736396009', '736397000', '736399002', '736400009', '736401008', '736402001', '736403006', '736453000', '736482004', '736690008', '736990006', '737426005', '737427001', '737428006', '737429003', '737430008', '737431007', '737432000', '737433005', '737434004', '737435003', '737436002', '737437006', '737438001', '737439009', '744980002', '763249000', '763321009', '770576004', '771082000', '773130005', '773430001', '773431002', '773432009', '773433004', '773435006', '773436007', '773437003', '773438008', '773439000', '773440003', '773441004', '773442006', '773443001', '773444007', '773445008', '773446009', '773447000', '773448005', '773449002', '773450002', '773451003', '773452005', '773506001', '773507005', '773508000', '773509008', '773511004', '773512006', '773513001', '773514007', '773516009', '773517000', '773590002', '773591003', '773592005', '773593000', '773594006', '773595007', '773596008', '773597004', '773598009', '773599001', '773976008', '773977004', '773978009', '773979001', '773980003', '773981004', '773982006', '773983001', '774202005']}, 'path'=>'CarePlan.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/care-plan-category'}},
        'title' => {'path'=>'CarePlan.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'description' => {'path'=>'CarePlan.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'CarePlan.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'CarePlan.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'CarePlan.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'CarePlan.created', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'CarePlan.custodian', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'contributor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'CarePlan.contributor', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'careTeam' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'CarePlan.careTeam', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'addresses' => {'path'=>'CarePlan.addresses', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'CarePlan.supportingInfo', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'goal' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Goal'], 'path'=>'CarePlan.goal', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'activity' => {'path'=>'CarePlan.activity', 'type'=>'CarePlan::Activity', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'CarePlan.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Activity < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Activity.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Activity.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Activity.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'performedActivity' => {'path'=>'Activity.performedActivity', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
          'progress' => {'path'=>'Activity.progress', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'plannedActivityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Appointment', 'http://hl7.org/fhir/StructureDefinition/CommunicationRequest', 'http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/NutritionOrder', 'http://hl7.org/fhir/StructureDefinition/Task', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/VisionPrescription', 'http://hl7.org/fhir/StructureDefinition/RequestOrchestration', 'http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation', 'http://hl7.org/fhir/StructureDefinition/SupplyRequest'], 'path'=>'Activity.plannedActivityReference', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :performedActivity        # 0-* [ CodeableReference ]
        attr_accessor :progress                 # 0-* [ Annotation ]
        attr_accessor :plannedActivityReference # 0-1 Reference(Appointment|CommunicationRequest|DeviceRequest|MedicationRequest|NutritionOrder|Task|ServiceRequest|VisionPrescription|RequestOrchestration|ImmunizationRecommendation|SupplyRequest)
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
      attr_accessor :instantiatesCanonical # 0-* [ canonical ]
      attr_accessor :instantiatesUri       # 0-* [ uri ]
      attr_accessor :basedOn               # 0-* [ Reference(CarePlan|ServiceRequest|RequestOrchestration|NutritionOrder) ]
      attr_accessor :replaces              # 0-* [ Reference(CarePlan) ]
      attr_accessor :partOf                # 0-* [ Reference(CarePlan) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :intent                # 1-1 code
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :title                 # 0-1 string
      attr_accessor :description           # 0-1 string
      attr_accessor :subject               # 1-1 Reference(Patient|Group)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :period                # 0-1 Period
      attr_accessor :created               # 0-1 dateTime
      attr_accessor :custodian             # 0-1 Reference(Patient|Practitioner|PractitionerRole|Device|RelatedPerson|Organization|CareTeam)
      attr_accessor :contributor           # 0-* [ Reference(Patient|Practitioner|PractitionerRole|Device|RelatedPerson|Organization|CareTeam) ]
      attr_accessor :careTeam              # 0-* [ Reference(CareTeam) ]
      attr_accessor :addresses             # 0-* [ CodeableReference ]
      attr_accessor :supportingInfo        # 0-* [ Reference(Resource) ]
      attr_accessor :goal                  # 0-* [ Reference(Goal) ]
      attr_accessor :activity              # 0-* [ CarePlan::Activity ]
      attr_accessor :note                  # 0-* [ Annotation ]

      def resourceType
        'CarePlan'
      end
    end
  end
end