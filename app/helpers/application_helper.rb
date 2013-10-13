module ApplicationHelper
  def msmTo12time(msm)
    h24 = msm / 60;
    mins = msm % 60;
    h12  = (0 == h24 ? 12 : (h24 > 12 ? (h24 - 10) - 2 : h24))
    ampm = (h24 >= 12 ? 'PM' : 'AM')

    h12.to_s + ':' + sprintf("%02d",mins) + ' ' + ampm.to_s
  end
end
