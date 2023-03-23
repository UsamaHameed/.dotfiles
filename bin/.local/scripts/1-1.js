const https = require("https");

const QUESTIONS_URL =
  "https://raw.githubusercontent.com/VGraupera/1on1-questions/master/questions.json";
const N = 5;

const main = async () => {
  https.get(QUESTIONS_URL, (res) => {
    let text = "";
    res.on("data", (chunk) => (text += chunk));
    res.on("end", () => {
      const questions = JSON.parse(text);
      for (let i = 0; i < N; i++) {
        console.log("\n", sample(questions.questions).question.en);
      }
    });
  });
};

const sample = (arr) => arr[Math.floor(arr.length * Math.random())];

main();
