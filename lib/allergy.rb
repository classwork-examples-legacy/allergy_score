class String
  define_method(:allergy) do
    allergy_score = self.to_i()
    allergies = []
    message= "You are allergic to:  "
    if allergy_score > 255
      message = "Don't eat or breath, you have issues that include: cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs"
    else
     if allergy_score >= 128
       allergy_score = allergy_score.-(128)
       allergies = allergies.push("cats")
     end
     if allergy_score >= 64
       allergy_score = allergy_score.-(64)
       allergies = allergies.push("pollen")
     end
     if allergy_score >= 32
       allergy_score = allergy_score.-(32)
       allergies = allergies.push("chocolate")
     end
     if allergy_score >= 16
       allergy_score = allergy_score.-(16)
       allergies = allergies.push("tomatoes")
     end
     if allergy_score >= 8
       allergy_score = allergy_score.-(8)
       allergies = allergies.push("strawberries")
     end
     if allergy_score >= 4
       allergy_score = allergy_score.-(4)
       allergies = allergies.push("shellfish")
     end
     if allergy_score >= 2
       allergy_score = allergy_score.-(2)
       allergies = allergies.push("peanuts")
     end
     if allergy_score >= 1
       allergy_score = allergy_score.-(1)
       allergies = allergies.push("eggs")
     end
     message += allergies.join(", ")
   end
   message
  end
end
