LowHealthFrame:SetWidth(0)
LowHealthFrame:SetHeight(0)
LowHealthFrame:SetScript("OnShow", function(self)
	self:Hide()
end)