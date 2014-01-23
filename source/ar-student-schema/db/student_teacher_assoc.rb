
  def assign_students
    student_teacher_pairs = []

    student_ids = (1..54).to_a
    teacher_ids = (1..9).to_a

    student_ids.each do |id|
      student_teacher_pairs << [id, teacher_ids.sample]
    end
    student_teacher_pairs

    File.open('students_teachers.csv', "w") do |f|
      f.puts "student_id, teacher_id"
      student_teacher_pairs.each do |pair|
        f.puts "#{pair[0]},#{pair[1]}"
      end
    end
  end






