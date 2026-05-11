module FHIR
  module R5
    class ImagingStudy < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['based-on', 'body-site', 'body-structure', 'dicom-class', 'encounter', 'endpoint', 'identifier', 'instance', 'modality', 'patient', 'performer', 'referrer', 'series', 'started', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'ImagingStudy.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImagingStudy.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImagingStudy.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ImagingStudy.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ImagingStudy.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImagingStudy.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImagingStudy.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImagingStudy.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ImagingStudy.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/imagingstudy-status'=>['registered', 'available', 'cancelled', 'entered-in-error', 'unknown']}, 'path'=>'ImagingStudy.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/imagingstudy-status'}},
        'modality' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['BMD', 'EOG', 'SM', 'SR', 'FID', 'OP', 'OT', 'KO', 'ECG', 'GM', 'XA', 'IOL', 'XC', 'ASMT', 'DMS', 'IVUS', 'CR', 'CT', 'OSS', 'TG', 'REG', 'LEN', 'TEXTUREMAP', 'RTDOSE', 'OPTENF', 'HC', 'RTPLAN', 'HD', 'OCT', 'BDUS', 'M3D', 'DG', 'PR', 'PT', 'EPS', 'LS', 'PX', 'OPM', 'OPTBSV', 'OPV', 'DX', 'OPT', 'DOC', 'RTRECORD', 'MG', 'US', 'EMG', 'IVOCT', 'RTSTRUCT', 'MR', 'IO', 'EEG', 'RTIMAGE', 'VA', 'RESP', 'ES', 'RWV', 'AR', 'POS', 'SEG', 'RG', 'RF', 'AU', 'KER', 'SMR', 'CTPROTOCOL', 'STAIN', 'OAM', 'NM', 'PLAN', 'BI', 'SRF']}, 'path'=>'ImagingStudy.modality', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'ImagingStudy.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'ImagingStudy.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'started' => {'path'=>'ImagingStudy.started', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Appointment', 'http://hl7.org/fhir/StructureDefinition/AppointmentResponse', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'ImagingStudy.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure'], 'path'=>'ImagingStudy.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'referrer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'ImagingStudy.referrer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'ImagingStudy.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'numberOfSeries' => {'path'=>'ImagingStudy.numberOfSeries', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'numberOfInstances' => {'path'=>'ImagingStudy.numberOfInstances', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'procedure' => {'path'=>'ImagingStudy.procedure', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'ImagingStudy.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'ImagingStudy.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'ImagingStudy.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'ImagingStudy.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'series' => {'path'=>'ImagingStudy.series', 'type'=>'ImagingStudy::Series', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Series < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Series.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Series.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Series.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'uid' => {'path'=>'Series.uid', 'type'=>'id', 'min'=>1, 'max'=>1},
          'number' => {'path'=>'Series.number', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'modality' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['BMD', 'EOG', 'SM', 'SR', 'FID', 'OP', 'OT', 'KO', 'ECG', 'GM', 'XA', 'IOL', 'XC', 'ASMT', 'DMS', 'IVUS', 'CR', 'CT', 'OSS', 'TG', 'REG', 'LEN', 'TEXTUREMAP', 'RTDOSE', 'OPTENF', 'HC', 'RTPLAN', 'HD', 'OCT', 'BDUS', 'M3D', 'DG', 'PR', 'PT', 'EPS', 'LS', 'PX', 'OPM', 'OPTBSV', 'OPV', 'DX', 'OPT', 'DOC', 'RTRECORD', 'MG', 'US', 'EMG', 'IVOCT', 'RTSTRUCT', 'MR', 'IO', 'EEG', 'RTIMAGE', 'VA', 'RESP', 'ES', 'RWV', 'AR', 'POS', 'SEG', 'RG', 'RF', 'AU', 'KER', 'SMR', 'CTPROTOCOL', 'STAIN', 'OAM', 'NM', 'PLAN', 'BI', 'SRF']}, 'path'=>'Series.modality', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html'}},
          'description' => {'path'=>'Series.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'numberOfInstances' => {'path'=>'Series.numberOfInstances', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Series.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'bodySite' => {'path'=>'Series.bodySite', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
          'laterality' => {'valid_codes'=>{'http://snomed.info/sct'=>['51440002', '24028007', '7771000', '66459002']}, 'path'=>'Series.laterality', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_244.html'}},
          'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'path'=>'Series.specimen', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'started' => {'path'=>'Series.started', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'performer' => {'path'=>'Series.performer', 'type'=>'ImagingStudy::Series::Performer', 'min'=>0, 'max'=>Float::INFINITY},
          'instance' => {'path'=>'Series.instance', 'type'=>'ImagingStudy::Series::Instance', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Performer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'function' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['CON', 'VRF', 'PRF', 'SPRF', 'REF']}, 'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/series-performer-function'}},
            'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :function          # 0-1 CodeableConcept
          attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|Device|RelatedPerson|HealthcareService)
        end

        class Instance < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Instance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Instance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Instance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'uid' => {'path'=>'Instance.uid', 'type'=>'id', 'min'=>1, 'max'=>1},
            'sopClass' => {'path'=>'Instance.sopClass', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1'}},
            'number' => {'path'=>'Instance.number', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
            'title' => {'path'=>'Instance.title', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :uid               # 1-1 id
          attr_accessor :sopClass          # 1-1 Coding
          attr_accessor :number            # 0-1 unsignedInt
          attr_accessor :title             # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :uid               # 1-1 id
        attr_accessor :number            # 0-1 unsignedInt
        attr_accessor :modality          # 1-1 CodeableConcept
        attr_accessor :description       # 0-1 string
        attr_accessor :numberOfInstances # 0-1 unsignedInt
        attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
        attr_accessor :bodySite          # 0-1 CodeableReference
        attr_accessor :laterality        # 0-1 CodeableConcept
        attr_accessor :specimen          # 0-* [ Reference(Specimen) ]
        attr_accessor :started           # 0-1 dateTime
        attr_accessor :performer         # 0-* [ ImagingStudy::Series::Performer ]
        attr_accessor :instance          # 0-* [ ImagingStudy::Series::Instance ]
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
      attr_accessor :status            # 1-1 code
      attr_accessor :modality          # 0-* [ CodeableConcept ]
      attr_accessor :subject           # 1-1 Reference(Patient|Device|Group)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :started           # 0-1 dateTime
      attr_accessor :basedOn           # 0-* [ Reference(CarePlan|ServiceRequest|Appointment|AppointmentResponse|Task) ]
      attr_accessor :partOf            # 0-* [ Reference(Procedure) ]
      attr_accessor :referrer          # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
      attr_accessor :numberOfSeries    # 0-1 unsignedInt
      attr_accessor :numberOfInstances # 0-1 unsignedInt
      attr_accessor :procedure         # 0-* [ CodeableReference ]
      attr_accessor :location          # 0-1 Reference(Location)
      attr_accessor :reason            # 0-* [ CodeableReference ]
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :description       # 0-1 string
      attr_accessor :series            # 0-* [ ImagingStudy::Series ]

      def resourceType
        'ImagingStudy'
      end
    end
  end
end