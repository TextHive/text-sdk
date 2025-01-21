import { Texthive } from "./index";

describe("texthive-typescript-sdk", () => {
    it("initialize client", async () => {
        const texthive = new Texthive({
            apiKey: "API_KEY",
        });
    });
});
