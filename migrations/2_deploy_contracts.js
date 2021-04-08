var Decom = artifacts.require("Decom");

module.exports = function(deployer, network, accounts) {
    console.log(accounts)
    deployer.deploy(Decom);
}