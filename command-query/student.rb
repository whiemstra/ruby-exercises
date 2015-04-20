class Student
  def initialize
    @study_sessions = 2
    @grades = ['A', 'B', 'C', 'D', 'F'].reverse
  end

  def study
    if @study_sessions < 4
      @study_sessions += 1
    end
  end

  def slack_off
    if @study_sessions > 0
      @study_sessions -= 1
    end
  end

  def grade
    @grades[@study_sessions]
    # if @study_sessions >= 4
    #   "A"
    # elsif @study_sessions == 3
    #   "B"
    # elsif @study_sessions == 2
    #   "C"
    # elsif @study_sessions == 1
    #   "D"
    # else
    #   "F"
    # end
  end
end
