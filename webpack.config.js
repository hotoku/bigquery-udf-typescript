var path = require("path");

module.exports = {
  mode: "production",
  entry: "./src/main.ts",
  module: {
    rules: [{
        test: /\.ts$/,
        use: "ts-loader"
    }],
  },
  resolve: {
    extensions: [
      ".ts", ".js",
    ],
  },
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "greet.js",
    library: "greet",
    libraryTarget: "var",
  }
};
