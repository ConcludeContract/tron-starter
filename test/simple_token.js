var SimpleToken = artifacts.require("./SimpleToken.sol");

contract('SimpleToken', function (accounts) {
    let simple_token

    before(async function () {
        simple_token = await SimpleToken.deployed()
        if (accounts.length < 3) {
            // Set your own accounts if you are not using Tron Quickstart
        }
    });

    it("should verify that the correctness of the symbol", async function () {
        assert.equal(await simple_token.symbol(), "YTN")
    });

    it("should verify that the correctness of the decimals", async function () {
        assert.equal(await simple_token.decimals(), 18)
    });
});
