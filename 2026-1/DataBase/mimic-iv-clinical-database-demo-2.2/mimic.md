```mermaid

erDiagram
    %% A파트 자료
    admissions{

    }
    patients{
        
    }
    transfers{

    }
    services{

    }
    icustays{
    
    }
    caregiver{

    }
    provider{

    }

    emar{

    }
    emar_detail{

    }
    omr{

    }
    %% B파트 자료
    diagnoses{

    }
    d_icd_diagnoses{

    }
    procedures_icd{

    }
    d_icd_procedures{

    }
    prescriptions{

    }
    pharmacy{

    }
    poe{

    }
    poe_detail{

    }
    drgcodes{

    }
    %% C파트 자료
    chartevents{

    }
    d_items{

    }
    labevents{

    }
    d_labitems{

    }
    microbiologyevents{

    }
    datetimeevents{

    }
    outputevents{

    }
    %% D파트 자료
     inputevents{
        INTEGER             subject_id      FK              "환자별 ID"
        INTEGER             hadm_id         FK              "환자의 병원 입원별 ID"
        INTEGER             stay_id         FK              "환자의 ICU 체류별 ID"
        INTEGER             caregiver_id                    "ICU 정보 시스템에 데이터를 기록한 단일 의료진의 ID"
        TIMESTAMP           starttime                       "투입 및 배출 시작 시점"
        TIMESTAMP           endtime                         "투입 및 배출 종료 시점"
        TIMESTAMP           storetime                       "기록 저장 시간"
        INTEGER             itemid                          "측정항목ID"
        DOUBLE_PRECISION    amount                          "투여된약물 또는 물질의 양"     
        VARCHAR(30)         amountuom                       "투여된약물 또는 물질의 단위"
        DOUBLE_PRECISION    rate                            "투여된약물 또는 물질의 속도"
        VARCHAR(30)         rateeuom                        "투여된약물 또는 물질의 속도단위"
        BIGINT              orderid                         "동일한 용액에 포함된 여러 항목을 함께 연결"
        BIGINT              linkorderid                     "여러 인스턴스에 걸쳐 동일한 처방을 연결"
        VARCHAR(100)        ordercategoryname               "투여 유형"
        VARCHAR(100)        secondaryordercategoryname      "세부 투여 유형"
        VARCHAR(200)        ordercomponenttypedescription   "성분 역할"
        VARCHAR(50)         dordercategorydescriprion       "처방 상세 설명"
        DOUBLE_PRECISION    patientweight                   "환자 체중"
        DOUBLE_PRECISION    totalamount                     "수액 백 전체의 양"
        VARCHAR(50)         totalamountuom                  "수액 백 단위"
        SMALLINT            isopenbag                       "이미 개봉되어 사용 중이던 수액 백에서 연결된 처방인지"
        SMALLINT            continueinnextdept              "타 부서 지속 여부"
        VARCHAR(30)         statusdescription               "전달 종료 사유"
        DOUBLE_PRECISION    originalamount                  "투약 시작 시 잔량"
        DOUBLE_PRECISION    originalrate                    "설정 투여 속도"
    }
    ingredientevents {
        INTEGER             subject_id      FK              "환자별 ID"
        INTEGER             hadm_id         FK              "환자의 병원 입원별 ID"
        INTEGER             stay_id         FK              "환자의 ICU 체류별 ID"
        INTEGER             caregiver_id                    "ICU 정보 시스템에 데이터를 기록한 단일 의료진의 ID"
        TIMESTAMP           starttime                       "투입 및 배출 시작 시점"
        TIMESTAMP           endtime                         "투입 및 배출 종료 시점"
        TIMESTAMP           storetime                       "기록 저장 시간"
        INTEGER             itemid                          "측정항목ID"
        DOUBLE_PRECISION    amount                          "투여된약물 또는 물질의 양"     
        VARCHAR(30)         amountuom                       "투여된약물 또는 물질의 단위"
        DOUBLE_PRECISION    rate                            "투여된약물 또는 물질의 속도"
        VARCHAR(30)         rateeuom                        "투여된약물 또는 물질의 속도단위"
        BIGINT              orderid                         "동일한 용액에 포함된 여러 항목을 함께 연결"
        BIGINT              linkorderid                     "여러 인스턴스에 걸쳐 동일한 처방을 연결"
        VARCHAR(30)         statusdescription               "전달 종료 사유"
        DOUBLE_PRECISION    originalamount                  "투약 시작 시 잔량"
        DOUBLE_PRECISION    originalrate                    "설정 투여 속도"
       
    }
    procedureevents {
        INTEGER             subject_id      FK              "환자별 ID"
        INTEGER             hadm_id         FK              "환자의 병원 입원별 ID"
        INTEGER             stay_id         FK              "환자의 ICU 체류별 ID"
        INTEGER             caregiver_id                    "ICU 정보 시스템에 데이터를 기록한 단일 의료진의 ID"
        TIMESTAMP           starttime                       "투입 및 배출 시작 시점"
        TIMESTAMP           endtime                         "투입 및 배출 종료 시점"
        TIMESTAMP           storetime                       "기록 저장 시간"
        INTEGER             itemid                          "측정항목ID"
        DOUBLE_PRECISION    value                           "시술 지속시간"
        VARCHAR(20)         valueuom                        "시술 지속시간의 단위"
        VARCHAR(100)        location                        "시술 부위"
        VARCHAR(50)         locationcategory                "부위 특성"
        BIGINT              orderid                         "동일한 용액에 포함된 여러 항목을 함께 연결"
        BIGINT              linkorderid                     "여러 인스턴스에 걸쳐 동일한 처방을 연결"
        VARCHAR             ordercategorydescription        "처방 상세 설명"
        DOUBLE_PRECISION    patientweight                   "환자 체중"
        SMALLINT            isopenbag                       "이미 개봉되어 사용 중이던 수액 백에서 연결된 처방인지"
        SMALLINT            continueinnextdept              "타 부서 지속 여부"
        VARCHAR(30)         statusdescription               "전달 종료 사유"
        DOUBLE_PRECISION    originalamount                  "투약 시작 시 잔량"
        DOUBLE_PRECISION    originalrate                    "설정 투여 속도"

    }
    hcpcsevents {
        INTEGER_NOTNULL     subject_id      FK              "환자별 ID"
        INTEGER_NOTNULL     hadm_id         FK              "환자의 병원 입원별 ID"
        DATE                chartdate                       "진료기록일자"
        CHAR(5)NOTNULL      hcpcs_cd        FK              "HCPCS 고유 코드"
        INTEGER_NOTNULL     seq_num                         "청구 우선순위"
        VARCHAR(180)        short_description               "hcpcs 코드 요약 설명"
    }
    d_hcpcs{
        CHAR(5)NOTNULL      code            PK              "HCPCS 고유 코드"
        SMALLINT            category                        "코드 대분류"
        TEXT                long_description                "코드 상세 설명"
        VARCHAR(180)        short_description               "hcpcs 코드 요약 설명"
    }
    %% 파트 D 내부 연결 (코드 사전과 진료 기록)
    d_hcpcs ||--o{ hcpcsevents : "code = hcpcs_cd"
    admissions ||--o{inputevents : "hadm_id"