const express = require("express");

const app = express();

app.get("/me", (request, response) => {
  console.log(request.method);
  response.status(200).json({
    name: "Farias Leandro",
    age: "22",
    pais: "Argentina",
    verb: request.method,
  });
});

app.post("/metas", (req, res) => {
  console.log(res.method);
  res.status(200).json({
    hobbies: ["Programar", "Jugar"],
    verb: req.method,
  });
});

app.patch("/metas", (req, res) => {
  console.log(res.method);
  res.status(200).json({
    metas: ["Trabajar en una Faang"],
    verb: req.method,
  });
});

app.put("/business", (req, res) => {
  console.log(res.method);
  res.status(200).json({
    business: ["Amazon", "Meta", "Globant", "Vercel"],
    verb: req.method,
  });
});

app.listen(8000, () => {
  console.log("Server started at port 8000");
});

//? HTTP
//? VERBOS
//GET
//POST
//PUT
//PATCH
//DELETE
//?STATUS
//100
//200
//300
//400
//500
//HEADERS
