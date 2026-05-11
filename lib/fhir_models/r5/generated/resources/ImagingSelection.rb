module FHIR
  module R5
    class ImagingSelection < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['based-on', 'body-site', 'body-structure', 'code', 'derived-from', 'identifier', 'issued', 'patient', 'status', 'study-uid', 'subject']
      METADATA = {
        'id' => {'path'=>'ImagingSelection.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImagingSelection.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImagingSelection.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ImagingSelection.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ImagingSelection.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImagingSelection.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImagingSelection.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImagingSelection.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ImagingSelection.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/imagingselection-status'=>['available', 'entered-in-error', 'unknown']}, 'path'=>'ImagingSelection.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/imagingselection-status'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Procedure', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Specimen'], 'path'=>'ImagingSelection.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'issued' => {'path'=>'ImagingSelection.issued', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'performer' => {'path'=>'ImagingSelection.performer', 'type'=>'ImagingSelection::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Appointment', 'http://hl7.org/fhir/StructureDefinition/AppointmentResponse', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'ImagingSelection.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'category' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['113000', '113001', '113002', '113003', '113004', '128219', '128218', '128211', '128210', '128213', '128212', '128215', '128214', '128217', '128216', '113005', '113006', '113007', '113008', '113009', '113030', '113031', '113032', '113033', '113034', '113035', '113036', '113037', '128208', '128207', '128209', '128200', '128202', '128201', '128204', '128203', '128206', '128205', '113038', '113039', '113020', '113021', '113022', '128714', '128713', '128199', '128710', '128711', '128192', '128191', '128194', '128193', '128196', '128195', '128198', '128197', '113010', '113013', '128190', '130373', '130372', '130371', '130370', '128222', '128189', '128221', '128188', '128223', '128181', '128180', '113018', '128183', '128182', '128185', '128184', '128220', '128187', '128186']}, 'path'=>'ImagingSelection.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_7010.html'}},
        'code' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['113000', '113001', '113002', '113003', '113004', '128219', '128218', '128211', '128210', '128213', '128212', '128215', '128214', '128217', '128216', '113005', '113006', '113007', '113008', '113009', '113030', '113031', '113032', '113033', '113034', '113035', '113036', '113037', '128208', '128207', '128209', '128200', '128202', '128201', '128204', '128203', '128206', '128205', '113038', '113039', '113020', '113021', '113022', '128714', '128713', '128199', '128710', '128711', '128192', '128191', '128194', '128193', '128196', '128195', '128198', '128197', '113010', '113013', '128190', '130373', '130372', '130371', '130370', '128222', '128189', '128221', '128188', '128223', '128181', '128180', '113018', '128183', '128182', '128185', '128184', '128220', '128187', '128186']}, 'path'=>'ImagingSelection.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_7010.html'}},
        'studyUid' => {'path'=>'ImagingSelection.studyUid', 'type'=>'id', 'min'=>0, 'max'=>1},
        'derivedFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ImagingStudy', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'ImagingSelection.derivedFrom', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'ImagingSelection.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'seriesUid' => {'path'=>'ImagingSelection.seriesUid', 'type'=>'id', 'min'=>0, 'max'=>1},
        'seriesNumber' => {'path'=>'ImagingSelection.seriesNumber', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'frameOfReferenceUid' => {'path'=>'ImagingSelection.frameOfReferenceUid', 'type'=>'id', 'min'=>0, 'max'=>1},
        'bodySite' => {'path'=>'ImagingSelection.bodySite', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ImagingSelection'], 'path'=>'ImagingSelection.focus', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'path'=>'ImagingSelection.instance', 'type'=>'ImagingSelection::Instance', 'min'=>0, 'max'=>Float::INFINITY}
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
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 0-1 Reference(Practitioner|PractitionerRole|Device|Organization|CareTeam|Patient|RelatedPerson|HealthcareService)
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
          'number' => {'path'=>'Instance.number', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'sopClass' => {'path'=>'Instance.sopClass', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1'}},
          'subset' => {'path'=>'Instance.subset', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
          'imageRegion2D' => {'path'=>'Instance.imageRegion2D', 'type'=>'ImagingSelection::Instance::ImageRegion2D', 'min'=>0, 'max'=>Float::INFINITY},
          'imageRegion3D' => {'path'=>'Instance.imageRegion3D', 'type'=>'ImagingSelection::Instance::ImageRegion3D', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class ImageRegion2D < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'ImageRegion2D.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'ImageRegion2D.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'ImageRegion2D.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'regionType' => {'valid_codes'=>{'http://hl7.org/fhir/imagingselection-2dgraphictype'=>['point', 'polyline', 'interpolated', 'circle', 'ellipse']}, 'path'=>'ImageRegion2D.regionType', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/imagingselection-2dgraphictype'}},
            'coordinate' => {'path'=>'ImageRegion2D.coordinate', 'type'=>'decimal', 'min'=>1, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :regionType        # 1-1 code
          attr_accessor :coordinate        # 1-* [ decimal ]
        end

        class ImageRegion3D < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'ImageRegion3D.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'ImageRegion3D.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'ImageRegion3D.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'regionType' => {'valid_codes'=>{'http://hl7.org/fhir/imagingselection-3dgraphictype'=>['point', 'multipoint', 'polyline', 'polygon', 'ellipse', 'ellipsoid']}, 'path'=>'ImageRegion3D.regionType', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/imagingselection-3dgraphictype'}},
            'coordinate' => {'path'=>'ImageRegion3D.coordinate', 'type'=>'decimal', 'min'=>1, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :regionType        # 1-1 code
          attr_accessor :coordinate        # 1-* [ decimal ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :uid               # 1-1 id
        attr_accessor :number            # 0-1 unsignedInt
        attr_accessor :sopClass          # 0-1 Coding
        attr_accessor :subset            # 0-* [ string ]
        attr_accessor :imageRegion2D     # 0-* [ ImagingSelection::Instance::ImageRegion2D ]
        attr_accessor :imageRegion3D     # 0-* [ ImagingSelection::Instance::ImageRegion3D ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 1-1 code
      attr_accessor :subject             # 0-1 Reference(Patient|Group|Device|Location|Organization|Procedure|Practitioner|Medication|Substance|Specimen)
      attr_accessor :issued              # 0-1 instant
      attr_accessor :performer           # 0-* [ ImagingSelection::Performer ]
      attr_accessor :basedOn             # 0-* [ Reference(CarePlan|ServiceRequest|Appointment|AppointmentResponse|Task) ]
      attr_accessor :category            # 0-* [ CodeableConcept ]
      attr_accessor :code                # 1-1 CodeableConcept
      attr_accessor :studyUid            # 0-1 id
      attr_accessor :derivedFrom         # 0-* [ Reference(ImagingStudy|DocumentReference) ]
      attr_accessor :endpoint            # 0-* [ Reference(Endpoint) ]
      attr_accessor :seriesUid           # 0-1 id
      attr_accessor :seriesNumber        # 0-1 unsignedInt
      attr_accessor :frameOfReferenceUid # 0-1 id
      attr_accessor :bodySite            # 0-1 CodeableReference
      attr_accessor :focus               # 0-* [ Reference(ImagingSelection) ]
      attr_accessor :instance            # 0-* [ ImagingSelection::Instance ]

      def resourceType
        'ImagingSelection'
      end
    end
  end
end