FactoryGirl.define do

	factory :doctor do
       name "a"
       email "a@e.com"
       password "123"
    end

    factory :patient do
       name "b"
       email "q@w.a"
       password "1234"
       doctor_id "1"
    end
    
    factory :chronic do
    patient_id "1"
    date_created DateTime.current
    discomfort_score "4"
    end
end