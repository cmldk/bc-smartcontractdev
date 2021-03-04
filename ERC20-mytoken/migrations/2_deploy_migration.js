const CDToken = artifacts.require("CDToken");

module.exports = function (deployer) {
    deployer.deploy(CDToken);
};
