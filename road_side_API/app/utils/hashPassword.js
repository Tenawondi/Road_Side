import bcrypt from "bcryptjs";

export const hash = async((plain_password) => {
  const hashed_password = await bcrypt.hash(plain_password, 10);
  if (!hashed_password) return false;
  return hashed_password;
});
