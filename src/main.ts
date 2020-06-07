import { Hello } from "./Hello";



export function greet(name: string): string{
    const h = new Hello(name);
    return h.greet();
}
