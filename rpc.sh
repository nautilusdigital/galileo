wallet: 6951D4D1F63CAE77B6C5AB4C1F192832557E0659D715546B33BFE49B87594838
account: gal_1ehcf385hsnfetxzc85y15ap5drkguy1kcbab4qeu454yftmtix3mj33wbnn

wallet: 41A39E6854B0A29D1C9624AE56572A2B90A2A3B97A4B614BF3E1D7BDED8328C2
account: gal_3gwwq4y4gsppb4pozcmnnykwcxaq5watmatbjoisizrtn7qp5gcsa9eqdpb8

curl -d '{"action": "block_count"}' localhost:7076

# wallet RPC
curl -d '{"action": "wallet_create"}' localhost:7076
curl -d '{"action": "wallet_info", "wallet": "6951D4D1F63CAE77B6C5AB4C1F192832557E0659D715546B33BFE49B87594838"}' localhost:7076

# account RPC
curl -d '{"action": "account_create", "wallet": "41A39E6854B0A29D1C9624AE56572A2B90A2A3B97A4B614BF3E1D7BDED8328C2"}' localhost:7076
curl -d '{"action": "account_get", "wallet": "6951D4D1F63CAE77B6C5AB4C1F192832557E0659D715546B33BFE49B87594838"}' localhost:7076
curl -d '{"action": "account_list", "wallet": "6951D4D1F63CAE77B6C5AB4C1F192832557E0659D715546B33BFE49B87594838"}' localhost:7076
curl -d '{"action": "account_representative", "account": "gal_1ehcf385hsnfetxzc85y15ap5drkguy1kcbab4qeu454yftmtix3mj33wbnn"}' localhost:7076

# representatives
curl -d '{"action": "representatives"}' localhost:7076
