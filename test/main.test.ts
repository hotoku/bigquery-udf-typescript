import { Hello } from "../src/Hello";
import { expect } from "chai";


describe("Hello", () => {
    it("should greet", () => {
        const h = new Hello("test1");
        expect(h.greet()).to.equal("Hello test1!");
    })
})
