-- 1. Visualize the split first
SELECT 
    SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1) as Address,
    SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress)) as City
FROM PortfolioProject..NashvilleHousingdata;

-- 2. Create and Fill the Address Column
ALTER TABLE PortfolioProject..NashvilleHousingdata
ADD PropertySplitAddress Nvarchar(255);
GO -- This ensures the column exists before the next step

UPDATE PortfolioProject..NashvilleHousingdata
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1);
GO

-- 3. Create and Fill the City Column
ALTER TABLE PortfolioProject..NashvilleHousingdata
ADD PropertySplitCity Nvarchar(255); -- Fixed the typo "Splicity" to "SplitCity"
GO

UPDATE PortfolioProject..NashvilleHousingdata
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress));
GO

-- 4. View the results
SELECT *
FROM PortfolioProject..NashvilleHousingdata;
