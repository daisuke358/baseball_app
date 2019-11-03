class Batter < ApplicationRecord
  before_save do  
    self.avg = hit / ab.to_f
    self.avg_view = self.avg * 1000
    self.obp = (hit + bb + hbp) / (ab + bb + hbp + sf).to_f
    self.slg = tb / ab.to_f
    self.ops = self.obp + self.slg
    self.w_oba = (0.692 * (bb - ibb) + 0.73 * hbp + 0.865 * (hit - hit_2b - hit_3b - hr) + 1.334 * hit_2b + 1.725 * hit_3b + 2.065 * hr) / (ab + bb - ibb + hbp + sf).to_f
    self.w_raa_c = (self.w_oba - 0.325) / 1.24 * pa.to_f
    self.w_raa_p = (self.w_oba - 0.326) / 1.24 * pa.to_f
    self.w_rc_c = ((self.w_oba - 0.325) / 1.24 + 3607 / 32803 ) * pa.to_f
    self.w_rc_p = ((self.w_oba - 0.326) / 1.24 + 3698 / 32792 ) * pa.to_f
    self.iso_d = self.obp - self.avg
    self.iso_p = self.slg - self.avg
    a = hit + bb + hbp - cs - gdp
    b = tb + (0.24 * (bb - ibb + hbp)) + 0.62 * sb + (0.5 * (sh + sf)) - 0.03 * so
    c = ab + bb + hbp + sf + sh
    d = (a + 2.4 * c) * (b + 3 * c) / (9 * c) - 0.9 * c
    self.rc27 = 27 * d / (ab - hit + sh + sf + cs + gdp).to_f
  end
end
