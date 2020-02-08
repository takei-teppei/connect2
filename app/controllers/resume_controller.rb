class ResumeController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :redirect_to_step1, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:show]
  before_action :redirect_to_step2, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:show]
  before_action :redirect_to_step3, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:show]
  before_action :redirect_to_step4, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:show]
  before_action :redirect_to_step5, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:step5,:validation5,:show]
  before_action :redirect_to_step6, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:step5,:validation5,:step6,:validation6,:show]
  before_action :redirect_to_step7, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:step5,:validation5,:step6,:validation6,:step7,:validation7,:show]
  before_action :redirect_to_step8, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:step5,:validation5,:step6,:validation6,:step7,:validation7,:step8,:validation8,:show]
  before_action :redirect_to_step9, except: [:index,:destroy,:edit,:update,:search,:step1,:validation,:step2,:validation2,:step3,:validation3,:step4,:validation4,:step5,:validation5,:step6,:validation6,:step7,:validation7,:step8,:validation8,:step9,:validation9,:show]

  def index
  end

  def step1
    @resume = Resume.new
  end

  def validation
    session[:fullname] = resume_params[:fullname]
    session[:name_kana] = resume_params[:name_kana]
    session[:birthday] = resume_params[:birthday]
    session[:gender] = resume_params[:gender]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code:"仮登録", 
      perfectures:"仮登録", 
      address_kana:"仮登録",
      build:"仮登録", 
      tel:"仮登録", 
      cellphone:"仮登録",
      e_mail:"仮登録",
      e_y: "仮登録",
      e_m:"仮登録",
      education_j:"仮登録", 
      e_y2:"仮登録",
      e_m2:"仮登録", 
      education2_j:"仮登録", 
      e_y3:"仮登録", 
      e_m3:"仮登録", 
      education3_h:"仮登録", 
      e_y4:"仮登録", 
      e_m4:"仮登録", 
      education4_h:"仮登録", 
      e_y5:"仮登録", 
      e_m5:"仮登録", 
      education5_c:"仮登録", 
      e_y6:"仮登録", 
      e_m6:"仮登録", 
      education6_c:"仮登録", 
      a_y:"仮登録", 
      a_m:"仮登録", 
      award:"仮登録", 
      a_y2:"仮登録", 
      a_m2:"仮登録", 
      award2:"仮登録", 
      a_y3:"仮登録", 
      a_m3:"仮登録", 
      award3:"仮登録", 
      a_y4:"仮登録", 
      a_m4:"仮登録", 
      award4:"仮登録", 
      a_y5:"仮登録", 
      a_m5:"仮登録", 
      award5:"仮登録", 
      a_y6:"仮登録", 
      a_m6:"仮登録", 
      award6:"仮登録", 
      l_y:"仮登録", 
      l_m:"仮登録", 
      license:"仮登録", 
      l_y2:"仮登録", 
      l_m2:"仮登録", 
      license2:"仮登録", 
      l_y3:"仮登録", 
      l_m3:"仮登録", 
      license3:"仮登録", 
      l_y4:"仮登録", 
      l_m4:"仮登録", 
      license4:"仮登録", 
      l_y5:"仮登録", 
      l_m5:"仮登録", 
      license5:"仮登録", 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step1
    else
      session[:through_first_valid] = "through_first_valid"
      redirect_to step2_resume_index_path
    end
  end

  def step2
    @resume = Resume.new
  end

  def validation2
    session[:post_code] = resume_params[:post_code]
    session[:perfectures] = resume_params[:perfectures]
    session[:address_kana] = resume_params[:address_kana]
    session[:build] = resume_params[:build]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:"仮登録", 
      cellphone:"仮登録",
      e_mail:"仮登録",
      e_y: "仮登録",
      e_m:"仮登録",
      education_j:"仮登録", 
      e_y2:"仮登録",
      e_m2:"仮登録", 
      education2_j:"仮登録", 
      e_y3:"仮登録", 
      e_m3:"仮登録", 
      education3_h:"仮登録", 
      e_y4:"仮登録", 
      e_m4:"仮登録", 
      education4_h:"仮登録", 
      e_y5:"仮登録", 
      e_m5:"仮登録", 
      education5_c:"仮登録", 
      e_y6:"仮登録", 
      e_m6:"仮登録", 
      education6_c:"仮登録", 
      a_y:"仮登録", 
      a_m:"仮登録", 
      award:"仮登録", 
      a_y2:"仮登録", 
      a_m2:"仮登録", 
      award2:"仮登録", 
      a_y3:"仮登録", 
      a_m3:"仮登録", 
      award3:"仮登録", 
      a_y4:"仮登録", 
      a_m4:"仮登録", 
      award4:"仮登録", 
      a_y5:"仮登録", 
      a_m5:"仮登録", 
      award5:"仮登録", 
      a_y6:"仮登録", 
      a_m6:"仮登録", 
      award6:"仮登録", 
      l_y:"仮登録", 
      l_m:"仮登録", 
      license:"仮登録", 
      l_y2:"仮登録", 
      l_m2:"仮登録", 
      license2:"仮登録", 
      l_y3:"仮登録", 
      l_m3:"仮登録", 
      license3:"仮登録", 
      l_y4:"仮登録", 
      l_m4:"仮登録", 
      license4:"仮登録", 
      l_y5:"仮登録", 
      l_m5:"仮登録", 
      license5:"仮登録", 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step2
    else
      session[:through_second_valid] = "through_second_valid"
      redirect_to step3_resume_index_path
    end
  end
  
  def step3
    @resume = Resume.new
  end

  def validation3
    session[:tel] = resume_params[:tel]
    session[:cellphone] = resume_params[:cellphone]
    session[:e_mail] = resume_params[:e_mail]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: "仮登録",
      e_m:"仮登録",
      education_j:"仮登録", 
      e_y2:"仮登録",
      e_m2:"仮登録", 
      education2_j:"仮登録", 
      e_y3:"仮登録", 
      e_m3:"仮登録", 
      education3_h:"仮登録", 
      e_y4:"仮登録", 
      e_m4:"仮登録", 
      education4_h:"仮登録", 
      e_y5:"仮登録", 
      e_m5:"仮登録", 
      education5_c:"仮登録", 
      e_y6:"仮登録", 
      e_m6:"仮登録", 
      education6_c:"仮登録", 
      a_y:"仮登録", 
      a_m:"仮登録", 
      award:"仮登録", 
      a_y2:"仮登録", 
      a_m2:"仮登録", 
      award2:"仮登録", 
      a_y3:"仮登録", 
      a_m3:"仮登録", 
      award3:"仮登録", 
      a_y4:"仮登録", 
      a_m4:"仮登録", 
      award4:"仮登録", 
      a_y5:"仮登録", 
      a_m5:"仮登録", 
      award5:"仮登録", 
      a_y6:"仮登録", 
      a_m6:"仮登録", 
      award6:"仮登録", 
      l_y:"仮登録", 
      l_m:"仮登録", 
      license:"仮登録", 
      l_y2:"仮登録", 
      l_m2:"仮登録", 
      license2:"仮登録", 
      l_y3:"仮登録", 
      l_m3:"仮登録", 
      license3:"仮登録", 
      l_y4:"仮登録", 
      l_m4:"仮登録", 
      license4:"仮登録", 
      l_y5:"仮登録", 
      l_m5:"仮登録", 
      license5:"仮登録", 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step3
    else
      session[:through_third_valid] = "through_third_valid"
      redirect_to step4_resume_index_path
    end
  end
  
  def step4
    @resume = Resume.new
  end

  def validation4
    session[:e_y] = resume_params[:e_y]
    session[:e_m] = resume_params[:e_m]
    session[:education_j] = resume_params[:education_j]
    session[:e_y2] = resume_params[:e_y2]
    session[:e_m2] = resume_params[:e_m2]
    session[:education2_j] = resume_params[:education2_j]
    session[:e_y3] = resume_params[:e_y3]
    session[:e_m3] = resume_params[:e_m3]
    session[:education3_h] = resume_params[:education3_h]
    session[:e_y4] = resume_params[:e_y4]
    session[:e_m4] = resume_params[:e_m4]
    session[:education4_h] = resume_params[:education4_h]
    session[:e_y5] = resume_params[:e_y5]
    session[:e_m5] = resume_params[:e_m5]
    session[:education5_c] = resume_params[:education5_c]
    session[:e_y6] = resume_params[:e_y6]
    session[:e_m6] = resume_params[:e_m6]
    session[:education6_c] = resume_params[:education6_c]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:"仮登録", 
      a_m:"仮登録", 
      award:"仮登録", 
      a_y2:"仮登録", 
      a_m2:"仮登録", 
      award2:"仮登録", 
      a_y3:"仮登録", 
      a_m3:"仮登録", 
      award3:"仮登録", 
      a_y4:"仮登録", 
      a_m4:"仮登録", 
      award4:"仮登録", 
      a_y5:"仮登録", 
      a_m5:"仮登録", 
      award5:"仮登録", 
      a_y6:"仮登録", 
      a_m6:"仮登録", 
      award6:"仮登録", 
      l_y:"仮登録", 
      l_m:"仮登録", 
      license:"仮登録", 
      l_y2:"仮登録", 
      l_m2:"仮登録", 
      license2:"仮登録", 
      l_y3:"仮登録", 
      l_m3:"仮登録", 
      license3:"仮登録", 
      l_y4:"仮登録", 
      l_m4:"仮登録", 
      license4:"仮登録", 
      l_y5:"仮登録", 
      l_m5:"仮登録", 
      license5:"仮登録", 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step4
    else
      session[:through_fourth_valid] = "through_fourth_valid"
      redirect_to step5_resume_index_path
    end
  end

  def step5
    @resume = Resume.new
  end

  def validation5
    session[:a_y] = resume_params[:a_y]
    session[:a_m] = resume_params[:a_m]
    session[:award] = resume_params[:award]
    session[:a_y2] = resume_params[:a_y2]
    session[:a_m2] = resume_params[:a_m2]
    session[:award2] = resume_params[:award2]
    session[:a_y3] = resume_params[:a_y3]
    session[:a_m3] = resume_params[:a_m3]
    session[:award3] = resume_params[:award3]
    session[:a_y4] = resume_params[:a_y4]
    session[:a_m4] = resume_params[:a_m4]
    session[:award4] = resume_params[:award4]
    session[:a_y5] = resume_params[:a_y5]
    session[:a_m5] = resume_params[:a_m5]
    session[:award5] = resume_params[:award5]
    session[:a_y6] = resume_params[:a_y6]
    session[:a_m6] = resume_params[:a_m6]
    session[:award6] = resume_params[:award6]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:session[:a_y], 
      a_m:session[:a_m], 
      award:session[:award], 
      a_y2:session[:a_y2], 
      a_m2:session[:a_m2], 
      award2:session[:award2], 
      a_y3:session[:a_y3], 
      a_m3:session[:a_m3], 
      award3:session[:award3], 
      a_y4:session[:a_y4], 
      a_m4:session[:a_m4], 
      award4:session[:award4], 
      a_y5:session[:a_y5], 
      a_m5:session[:a_m5], 
      award5:session[:award5], 
      a_y6:session[:a_y6], 
      a_m6:session[:a_m6], 
      award6:session[:award6], 
      l_y:"仮登録", 
      l_m:"仮登録", 
      license:"仮登録", 
      l_y2:"仮登録", 
      l_m2:"仮登録", 
      license2:"仮登録", 
      l_y3:"仮登録", 
      l_m3:"仮登録", 
      license3:"仮登録", 
      l_y4:"仮登録", 
      l_m4:"仮登録", 
      license4:"仮登録", 
      l_y5:"仮登録", 
      l_m5:"仮登録", 
      license5:"仮登録", 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step5
    else
      session[:through_fifth_valid] = "through_fifth_valid"
      redirect_to step6_resume_index_path
    end
  end

  def step6
    @resume = Resume.new
  end

  def validation6
    session[:l_y] = resume_params[:l_y]
    session[:l_m] = resume_params[:l_m]
    session[:license] = resume_params[:license]
    session[:l_y2] = resume_params[:l_y2]
    session[:l_m2] = resume_params[:l_m2]
    session[:license2] = resume_params[:license2]
    session[:l_y3] = resume_params[:l_y3]
    session[:l_m3] = resume_params[:l_m3]
    session[:license3] = resume_params[:license3]
    session[:l_y4] = resume_params[:l_y4]
    session[:l_m4] = resume_params[:l_m4]
    session[:license4] = resume_params[:license4]
    session[:l_y5] = resume_params[:l_y5]
    session[:l_m5] = resume_params[:l_m5]
    session[:license5] = resume_params[:license5]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:session[:a_y], 
      a_m:session[:a_m], 
      award:session[:award], 
      a_y2:session[:a_y2], 
      a_m2:session[:a_m2], 
      award2:session[:award2], 
      a_y3:session[:a_y3], 
      a_m3:session[:a_m3], 
      award3:session[:award3], 
      a_y4:session[:a_y4], 
      a_m4:session[:a_m4], 
      award4:session[:award4], 
      a_y5:session[:a_y5], 
      a_m5:session[:a_m5], 
      award5:session[:award5], 
      a_y6:session[:a_y6], 
      a_m6:session[:a_m6], 
      award6:session[:award6], 
      l_y:session[:l_y], 
      l_m:session[:l_m], 
      license:session[:license], 
      l_y2:session[:l_y2], 
      l_m2:session[:l_m2], 
      license2:session[:license2], 
      l_y3:session[:l_y3], 
      l_m3:session[:l_m3], 
      license3:session[:license3], 
      l_y4:session[:l_y4], 
      l_m4:session[:l_m4], 
      license4:session[:license4], 
      l_y5:session[:l_y5], 
      l_m5:session[:l_m5], 
      license5:session[:license5], 
      motivation:"kari", 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step6
    else
      session[:through_sixth_valid] = "through_sixth_valid"
      redirect_to step7_resume_index_path
    end
  end

  def step7
    @resume = Resume.new
  end

  def validation7
    session[:motivation] = resume_params[:motivation]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:session[:a_y], 
      a_m:session[:a_m], 
      award:session[:award], 
      a_y2:session[:a_y2], 
      a_m2:session[:a_m2], 
      award2:session[:award2], 
      a_y3:session[:a_y3], 
      a_m3:session[:a_m3], 
      award3:session[:award3], 
      a_y4:session[:a_y4], 
      a_m4:session[:a_m4], 
      award4:session[:award4], 
      a_y5:session[:a_y5], 
      a_m5:session[:a_m5], 
      award5:session[:award5], 
      a_y6:session[:a_y6], 
      a_m6:session[:a_m6], 
      award6:session[:award6], 
      l_y:session[:l_y], 
      l_m:session[:l_m], 
      license:session[:license], 
      l_y2:session[:l_y2], 
      l_m2:session[:l_m2], 
      license2:session[:license2], 
      l_y3:session[:l_y3], 
      l_m3:session[:l_m3], 
      license3:session[:license3], 
      l_y4:session[:l_y4], 
      l_m4:session[:l_m4], 
      license4:session[:license4], 
      l_y5:session[:l_y5], 
      l_m5:session[:l_m5], 
      license5:session[:license5], 
      motivation:session[:motivation], 
      free_message:"kari", 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step7
    else
      session[:through_seventh_valid] = "through_seventh_valid"
      redirect_to step8_resume_index_path
    end
  end

  def step8
    @resume = Resume.new
  end

  def validation8
    session[:free_message] = resume_params[:free_message]
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:session[:a_y], 
      a_m:session[:a_m], 
      award:session[:award], 
      a_y2:session[:a_y2], 
      a_m2:session[:a_m2], 
      award2:session[:award2], 
      a_y3:session[:a_y3], 
      a_m3:session[:a_m3], 
      award3:session[:award3], 
      a_y4:session[:a_y4], 
      a_m4:session[:a_m4], 
      award4:session[:award4], 
      a_y5:session[:a_y5], 
      a_m5:session[:a_m5], 
      award5:session[:award5], 
      a_y6:session[:a_y6], 
      a_m6:session[:a_m6], 
      award6:session[:award6], 
      l_y:session[:l_y], 
      l_m:session[:l_m], 
      license:session[:license], 
      l_y2:session[:l_y2], 
      l_m2:session[:l_m2], 
      license2:session[:license2], 
      l_y3:session[:l_y3], 
      l_m3:session[:l_m3], 
      license3:session[:license3], 
      l_y4:session[:l_y4], 
      l_m4:session[:l_m4], 
      license4:session[:license4], 
      l_y5:session[:l_y5], 
      l_m5:session[:l_m5], 
      license5:session[:license5], 
      motivation:session[:motivation], 
      free_message:session[:free_message], 
      submit_date:"kari",
      resume_name:"kari",
      user_id:current_user.id
    )
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      render :step8
    else
      session[:through_eighth_valid] = "through_eighth_valid"
      redirect_to step9_resume_index_path
    end
  end

  def step9
    @resume = Resume.new
  end

  def validation9
    session[:submit_date] = resume_params[:submit_date]
    session[:resume_name] = resume_params[:resume_name]
    session[:id] = current_user.id
    @resume = Resume.new(
      fullname: session[:fullname],
      name_kana: session[:name_kana],
      birthday: session[:birthday],
      gender: session[:gender],
      post_code: session[:post_code],
      perfectures: session[:perfectures],
      address_kana: session[:address_kana],
      build: session[:build],
      tel:session[:tel], 
      cellphone:session[:cellphone],
      e_mail:session[:e_mail],
      e_y: session[:e_y],
      e_m:session[:e_m],
      education_j:session[:education_j], 
      e_y2: session[:e_y2],
      e_m2:session[:e_m2],
      education2_j:session[:education2_j], 
      e_y3:session[:e_y3], 
      e_m3:session[:e_m3], 
      education3_h:session[:education3_h], 
      e_y4:session[:e_y4], 
      e_m4:session[:e_m4], 
      education4_h:session[:education4_h], 
      e_y5:session[:e_y5], 
      e_m5:session[:e_m5], 
      education5_c:session[:education5_c], 
      e_y6:session[:e_y6], 
      e_m6:session[:e_m6], 
      education6_c:session[:education6_c], 
      a_y:session[:a_y], 
      a_m:session[:a_m], 
      award:session[:award], 
      a_y2:session[:a_y2], 
      a_m2:session[:a_m2], 
      award2:session[:award2], 
      a_y3:session[:a_y3], 
      a_m3:session[:a_m3], 
      award3:session[:award3], 
      a_y4:session[:a_y4], 
      a_m4:session[:a_m4], 
      award4:session[:award4], 
      a_y5:session[:a_y5], 
      a_m5:session[:a_m5], 
      award5:session[:award5], 
      a_y6:session[:a_y6], 
      a_m6:session[:a_m6], 
      award6:session[:award6], 
      l_y:session[:l_y], 
      l_m:session[:l_m], 
      license:session[:license], 
      l_y2:session[:l_y2], 
      l_m2:session[:l_m2], 
      license2:session[:license2], 
      l_y3:session[:l_y3], 
      l_m3:session[:l_m3], 
      license3:session[:license3], 
      l_y4:session[:l_y4], 
      l_m4:session[:l_m4], 
      license4:session[:license4], 
      l_y5:session[:l_y5], 
      l_m5:session[:l_m5], 
      license5:session[:license5], 
      motivation:session[:motivation], 
      free_message:session[:free_message], 
      submit_date:session[:submit_date],
      resume_name:session[:resume_name],
      user_id:session[:id]
    )
    @resume.save
    check_resume_valid = @resume.valid?
    unless check_resume_valid
      reset_session
      render step1_resume_index_path
    else
      session[:through_ninth_valid] = "through_ninth_valid"
      redirect_to root_path
    end
  end

  def new
  end

  def create
  end
  
  def show
    @resume = Resume.find(params[:id])
  end

  def edit
    @resume = Resume.find(params[:id])
    @resume.user
  end

  def update
    @resume = Resume.find(params[:id])
    if @resume.update(resume_update)
      redirect_to done_users_path
    else
      render :show
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    if @resume.destroy
      redirect_to done_users_path
    else
      redirect_to done_users_path
    end
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  def resume_update
    params.require(:resume).permit(:resume_name,company_id:[])
  end
  def resume_params
    params.require(:resume).permit(
      :fullname,
      :name_kana,
      :gender,
      :birthday,
      :post_code,
      :perfectures,
      :address_kana,
      :build,
      :tel,
      :cellphone,
      :e_mail,
      :e_y,
      :e_m,
      :education_j,
      :e_y2,
      :e_m2,
      :education2_j,
      :e_y3,
      :e_m3,
      :education3_h,
      :e_y4,
      :e_m4,
      :education4_h,
      :e_y5,
      :e_m5,
      :education5_c,
      :e_y6,
      :e_m6,
      :education6_c,
      :a_y,
      :a_m,
      :award,
      :a_y2,
      :a_m2,
      :award2,
      :a_y3,
      :a_m3,
      :award3,
      :a_y4,
      :a_m4,
      :award4,
      :a_y5,
      :a_m5,
      :award5,
      :a_y6,
      :a_m6,
      :award6,
      :l_y,
      :l_m,
      :license,
      :l_y2,
      :l_m2,
      :license2,
      :l_y3,
      :l_m3,
      :license3,
      :l_y4,
      :l_m4,
      :license4,
      :l_y5,
      :l_m5,
      :license5,
      :free_message,
      :motivation,
      :submit_date,
      :resume_name,
    ).merge(user_id: current_user.id)
  end

  def resume_image_params
    params.require(:resume).permit(
      :fullname,
      :name_kana,
      :gender,
      :birthday,
      :post_code,
      :perfectures,
      :address_kana,
      :build,
      :tel,
      :cellphone,
      :e_mail,
      :e_y,
      :e_m,
      :education_j,
      :e_y2,
      :e_m2,
      :education2_j,
      :e_y3,
      :e_m3,
      :education3_h,
      :e_y4,
      :e_m4,
      :education4_h,
      :e_y5,
      :e_m5,
      :education5_c,
      :e_y6,
      :e_m6,
      :education6_c,
      :a_y,
      :a_m,
      :award,
      :a_y2,
      :a_m2,
      :award2,
      :a_y3,
      :a_m3,
      :award3,
      :a_y4,
      :a_m4,
      :award4,
      :a_y5,
      :a_m5,
      :award5,
      :a_y6,
      :a_m6,
      :award6,
      :l_y,
      :l_m,
      :license,
      :l_y2,
      :l_m2,
      :license2,
      :l_y3,
      :l_m3,
      :license3,
      :l_y4,
      :l_m4,
      :license4,
      :l_y5,
      :l_m5,
      :license5,
      :free_message,
      :motivation,
      :submit_date,
      :resume_name,
      :image
    ).merge(user_id: current_user.id)
  end

  def redirect_to_step1
    redirect_to step1_resume_index_path unless session[:through_first_valid].present? && session[:through_first_valid] == "through_first_valid"
  end

  def redirect_to_step2
    redirect_to step2_resume_index_path unless session[:through_second_valid].present? && session[:through_second_valid] == "through_second_valid"
  end

  def redirect_to_step3
    redirect_to step3_resume_index_path unless session[:through_third_valid].present? && session[:through_third_valid] == "through_third_valid"
  end

  def redirect_to_step4
    redirect_to step4_resume_index_path unless session[:through_fourth_valid].present? && session[:through_fourth_valid] == "through_fourth_valid"
  end

  def redirect_to_step5
    redirect_to step5_resume_index_path unless session[:through_fifth_valid].present? && session[:through_fifth_valid] == "through_fifth_valid"
  end

  def redirect_to_step6
    redirect_to step6_resume_index_path unless session[:through_sixth_valid].present? && session[:through_sixth_valid] == "through_sixth_valid"
  end

  def redirect_to_step7
    redirect_to step7_resume_index_path unless session[:through_seventh_valid].present? && session[:through_seventh_valid] == "through_seventh_valid"
  end

  def redirect_to_step8
    redirect_to step8_resume_index_path unless session[:through_eighth_valid].present? && session[:through_eighth_valid] == "through_eighth_valid"
  end

  def redirect_to_step9
    redirect_to step9_resume_index_path unless session[:through_ninth_valid].present? && session[:through_ninth_valid] == "through_ninth_valid"
  end
end
