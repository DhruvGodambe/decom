var Decom = artifacts.require("Decom");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(Decom,{from: accounts[0]});
}