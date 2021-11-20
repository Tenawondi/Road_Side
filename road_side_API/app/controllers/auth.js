import User from "../model/User.js";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import Garage from "../model/Garage.js";

// export const login = async (req, res) => {
//   //console.log(req.body);
//   const { user_name, password, role } = req.body;
//   console.log(user_name);
//   if (!(user_name && password))
//     return res.status(400).send({ message: "BAD REQUEST" });
//   try {
//     let user;
//     if (role === "user" || role === "admin") {
//       user = await User.findOne({ user_name });
//     }
//     if (role === "garage") {
//       user = await Garage.findOne({ user_name });
//     }

//     if (user && (await bcrypt.compare(password, user.password))) {
//       const token = jwt.sign(
//         { user_id: user.id, user_name },
//         process.env.TOKEN_KEY,
//         {
//           expiresIn: "2h",
//         }
//       );

//       // save user token
//       let newUser = user;
//       newUser.token = token;
//       console.log(token);
//       console.log("===========", newUser.token);
//       return res.status(200).send({ messgage: "OK", user: newUser }).end();
//     }

//     return res.status(404).send({ message: "NOT FOUNDDD" });
//   } catch (error) {
//     console.log(error);
//     res.status(500).send({ message: "INTERNAL SERVER ERROR" });
//   }
// };

// export const signUp = async (req, res, next) => {
//   console.log("signup called");
//   let user = req.body;
//   if (!user) {
//     return res
//       .status(400)
//       .send({ message: "BAD REQUEST missing inputs" })
//       .end();
//   }
//   const query = {
//     $or: [{ user_name: user.user_name }, { email: user.email }],
//   };
//   const existing_user = await User.find(query);
//   if (existing_user.length) {
//     return res.status(409).send("User already exists").end();
//   } else {
//     try {
//       //Encrypt password
      
//       user.password = await bcrypt.hash(user.password, 10);
//       const newUser = await new User(user).save();
//       res.status(201).send({ message: "Created", newUser }).end();
//     } catch (err) {
//       console.log("tetttttt");
//       res.status(500).send({ message: err || "ERROR ON SAVING" });
//     }
//   }
// };



//router.post('/register')
export const register = async (req,res)=>{
  const user =  new User({
      first_name: req.body.first_name,
      last_name: req.body.last_name,
      phone_number: req.body.phone_number,
      email: req.body.email,
      password: bcrypt.hashSync(req.body.password, 10),
      isAdmin: req.body.isAdmin,
      user_name: req.body.user_name
  })
  user.save().then((createdUSer =>{
      res.status(201).json(createdUSer)
  })).catch((err)=>{
      console.log(err);
      res.status(500).json({
          error:err,
          succes: false,
      })
  })
};

//router.post('/login') 
export const login = async(req,res)=>{
  
   const user = await User.findOne({user_name: req.body.user_name});
  // console.log(user);

  if(!user){
      return res.status(400).send('The user not found');
  }
  //return res.status(200).send(user);
  //console.log(user.passwordHash);
  console.log(user);
  if(user && bcrypt.compareSync(req.body.password, user.password)){
      //console.log(user.passwordHash);
      //const secret = process.env.SECR;
      const token = jwt.sign(
          {
              userId: user._id,
              //isAdmin: user.isAdmin,
          },
          "secret",
          {expiresIn : '1d'}
      )

      res.status(200).send({checkAdmin:user.isAdmin,user:user.id, token:token})
  }else{
      res.status(400).send('password wrong') 
  }
  

};
