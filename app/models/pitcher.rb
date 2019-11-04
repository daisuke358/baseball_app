class Pitcher < ApplicationRecord
    mount_uploader :picture, PictureUploader
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

        if self.era > 5
            self.era_g = 3
        elsif self.era > 4.5
            self.era_g = 4
        elsif self.era > 4
            self.era_g = 5
        elsif self.era > 3.5
            self.era_g = 6
        elsif self.era > 3
            self.era_g = 7
        elsif self.era > 2.5
            self.era_g = 8
        elsif self.era > 2
            self.era_g = 9
        else
            self.era_g = 10
        end

        if self.whip > 1.5
            self.whip_g = 3
        elsif self.whip > 1.4
            self.whip_g = 4
        elsif self.whip > 1.3
            self.whip_g = 5
        elsif self.whip > 1.2
            self.whip_g = 6
        elsif self.whip > 1.1
            self.whip_g = 7
        elsif self.whip > 1
            self.whip_g = 8
        elsif self.whip > 0.9
            self.whip_g = 9
        else
            self.whip_g = 10
        end

        if self.fip > 5
            self.fip_g = 3
        elsif self.fip > 4.5
            self.fip_g = 5
        elsif self.fip > 4
            self.fip_g = 5
        elsif self.fip > 3.6
            self.fip_g = 6
        elsif self.fip > 3.3
            self.fip_g = 7
        elsif self.fip > 3
            self.fip_g = 8
        elsif self.fip > 2.5
            self.fip_g = 9
        else
            self.fip_g = 10
        end
    end
end