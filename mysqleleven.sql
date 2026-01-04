-- Remove Duplicates
SELECT *,
	ROW_NUMBER() OVER (
	PARTITION BY ParccelID, 
				PropertyAddress,
				SaleDate,
				LegalReference
				ORDER BY 
					UniqueID
					) row_num


FROM PortfolioProject..NashvilleHousingdata
--order by ParcelID


SELECT *
FROM PortfolioProject..NashvilleHousingdata

ALTER TABLE PortforlioProjct..NashvileHousingdata
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress

ALTER TABLE PortforlioProjct..NashvileHousingdata
DROP COLUMN SaleDate
