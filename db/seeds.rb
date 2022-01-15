# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'timkleier@gmail.com', first_name: 'Tim', last_name: 'Kleier', password: 'testPassword1', password_confirmation: 'testPassword1', image_url: 'https://media-exp1.licdn.com/dms/image/C5603AQHM-oXIv02QrA/profile-displayphoto-shrink_200_200/0/1517695093684?e=1622073600&v=beta&t=Ir_IdVYdx7slIola4H-h-E_sSi8tAu1I43kXWE-Dhfc')
user2 = User.create!(email: 'sosipater@gmail.com', first_name: 'Kelly', last_name: 'Schroeder', password: 'testPassword2', password_confirmation: 'testPassword2', image_url: '')
user3 = User.create!(email: 'matt@crossmarc.co', first_name: 'Matt', last_name: 'Anderson', password: 'testPassword3', password_confirmation: 'testPassword3', image_url: '')

term1 = Term.create(name: 'Altcoin')
term_def1 = TermDefinition.create(description: 'The term “altcoin” is shorthand for “alternative coins” and simply means cryptocurrencies other than Bitcoin.', source_name: 'NextAdvisor (Time)', source_url: 'https://time.com/nextadvisor/investing/cryptocurrency/altcoins/', term_id: term1.id)

term2 = Term.create(name: 'Blockchain')
term_def2 = TermDefinition.create(description: 'A blockchain is a distributed database that is shared among the nodes of a computer network. As a database, a blockchain stores information electronically in digital format. Blockchains are best known for their crucial role in cryptocurrency systems, such as Bitcoin, for maintaining a secure and decentralized record of transactions. The innovation with a blockchain is that it guarantees the fidelity and security of a record of data and generates trust without the need for a trusted third party.', source_name: 'Investopedia', source_url: 'https://www.investopedia.com/terms/b/blockchain.asp', term_id: term2.id)
UserDefinitionVote.create(user_id: user1.id, term_definition_id: term_def2.id)
TermDefinition.create(description: 'A blockchain is a growing list of records, called blocks, that are linked together using cryptography. Each block contains a cryptographic hash of the previous block, a timestamp, and transaction data (generally represented as a Merkle tree). The timestamp proves that the transaction data existed when the block was published in order to get into its hash. As blocks each contain information about the block previous to it, they form a chain, with each additional block reinforcing the ones before it. Therefore, blockchains are resistant to modification of their data because once recorded, the data in any given block cannot be altered retroactively without altering all subsequent blocks.', source_name: 'Wikipedia', source_url: 'https://en.wikipedia.org/wiki/Blockchain', term_id: term2.id)

Term.create(name: 'Cryptocurrency')
Term.create(name: 'Bitcoin')
Term.create(name: 'Ethereum')
Term.create(name: 'Mining')
Term.create(name: 'Block')
Term.create(name: 'Smart Contract')
Term.create(name: 'Cold Wallet')
Term.create(name: 'Hot Wallet')
Term.create(name: 'HODL')
Term.create(name: 'Non-Fungible Token', short_form: 'NFT')
Term.create(name: 'Decentralized Finance', short_form: 'DeFi')
Term.create(name: 'Decentralized Application', short_form: 'DApp')
Term.create(name: 'Decentralized Application', short_form: 'DApp')
Term.create(name: 'Initial Coin Offering', short_form: 'ICO')

# resource1 = Resource.create_from_url('https://anthonypompliano.com/')
# resource2 = Resource.create_from_url('https://www.realvision.com/')
# resource3 = Resource.create_from_url('https://www.podchaser.com/podcasts/unchained-104307')
# resource4 = Resource.create_from_url('https://cardanofoundation.org/')
