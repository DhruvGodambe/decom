var Decom = artifacts.require("Decom");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(Decom, "0x790A616A68AFc66ffd9BE93DC2292Ba44c4D5288");
}