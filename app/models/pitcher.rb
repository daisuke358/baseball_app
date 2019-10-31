class Pitcher < ApplicationRecord
  before_save do
    self.wpct = win / (win + lose).to_f
    a = o / 3
    b = o % 3 * 0.1
    self.ip = a + b
    c = o / 3.to_f
    self.k_9 = so * 9 / c.to_f
    self.era = er * 9 / c.to_f
    self.k_bb = so / bb.to_f
    self.whip = (bb + hit) / c.to_f
    d = r * 9 / c.to_f
    self.rsaa_c = (4.325 - d) * c / 9.to_f
    self.rsaa_p = (4.277 - d) * c / 9.to_f
  end
end
