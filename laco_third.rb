# -*- coding: utf-8 -*-
Plugin.create :laco_third do

lim = Time.local(1970, 1, 1)
dly = Time.local(1970, 1, 1)

	on_appear do |ms|
		ms.each do |m|
			if m.message.to_s =~ /らこらこらこ/
				if Time.now < lim && dly < Time.now
					Service.primary.post(:message => "らこらこらこ～ｗ")
					lim = Time.local(1970, 1, 1)
					dly = Time.now + 600
				else
					lim = Time.now + 90
				end
			end
		end
	end
end 
