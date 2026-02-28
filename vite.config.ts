import { reactRouter } from "@react-router/dev/vite";
import wyw from "@wyw-in-js/vite";
import { defineConfig } from "vite";
import tsconfigPaths from "vite-tsconfig-paths";

// ------------------------------------------------------------

export default defineConfig({
  base: "/",
  plugins: [wyw(), reactRouter(), tsconfigPaths()],
});
