export MORPHO_BLUE_CONTRACT_ADDRESS="0x64c7044050Ba0431252df24fEd4d9635a275CB41"
export FIRST_BLOCK="10038133:"

# This script extracts interaction events with Morpho Blue

# Morpho Blue supply
cryo logs
    --label mb_supply \
    --subdirs datatype \
    --blocks 10M: \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "Supply(Id indexed id, address indexed caller, address indexed onBehalf, uint256 assets, uint256 shares)"
    --inner-request-size 10000\
    --topic0 0xedf8870433c83823eb071d3df1caa8d008f12f6440918c20d75a3602cda30fe0

# Morpho Blue withdraw
cryo logs
    --label mb_withdraw \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "Withdraw(Id indexed id, address caller, address indexed onBehalf, address indexed receiver, uint256 assets, uint256 shares)"
    --inner-request-size 10000\
    --topic0 0xa56fc0ad5702ec05ce63666221f796fb62437c32db1aa1aa075fc6484cf58fbf

# Morpho Blue supply collateral
cryo logs
    --label mb_supply_collateral \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "SupplyCollateral(Id indexed id, address indexed caller, address indexed onBehalf, uint256 assets)"
    --inner-request-size 10000\
    --topic0  0xa3b9472a1399e17e123f3c2e6586c23e504184d504de59cdaa2b375e880c6184

# Morpho Blue withdraw collateral
cryo logs
    --label mb_withdraw_collateral \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "WithdrawCollateral(Id indexed id, address caller, address indexed onBehalf, address indexed receiver, uint256 assets)"
    --inner-request-size 10000\
    --topic0 0xe80ebd7cc9223d7382aab2e0d1d6155c65651f83d53c8b9b06901d167e321142

# Morpho Blue borrow
cryo logs
    --label mb_borrow \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "Borrow(Id indexed id,address caller,address indexed onBehalf,address indexed receiver,uint256 assets,uint256 shares)"
    --inner-request-size 10000\
    --topic0 0x570954540bed6b1304a87dfe815a5eda4a648f7097a16240dcd85c9b5fd42a43

# Morpho Blue repay
cryo logs
    --label mb_repay \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "Repay(Id indexed id, address indexed caller, address indexed onBehalf, uint256 assets, uint256 shares)"
    --inner-request-size 10000\
    --topic0 0x52acb05cebbd3cd39715469f22afbf5a17496295ef3bc9bb5944056c63ccaa09

# Morpho Blue liquidate
cryo logs
    --label mb_liquidate \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "Liquidate(Id indexed id,address indexed caller,address indexed borrower,uint256 repaidAssets,uint256 repaidShares,uint256 seizedAssets,uint256 badDebtShares)"
    --inner-request-size 10000\
    --topic0  0x2a956e32ed8787cac03e680198b6ce3dcfb819aad578b3a5658f2c110a7d7c55

# Morpho Blue rates
cryo logs
    --label mb_rates \
    --subdirs datatype \
    --blocks $FIRST_BLOCK \
    --contract $MORPHO_BLUE_CONTRACT_ADDRESS \
    --event-signature "AccrueInterest(Id indexed id, uint256 prevBorrowRate, uint256 interest, uint256 feeShares)"
    --inner-request-size 10000\
    --topic0 0x9d9bd501d0657d7dfe415f779a620a62b78bc508ddc0891fbbd8b7ac0f8fce87