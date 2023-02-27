import joi from 'joi';

export const signUpSchema = joi.object({
    name: joi.string().required().error(new Error('Preencha com um nome válido!')),
    email: joi.string().email().required().error(new Error('Preencha com um e-mail válido!')),
    password: joi.string().required().error(new Error('Preencha com uma senha válida!')),
    confirmPassword: joi.string().valid(joi.ref('password')).required().error(new Error('Preencha com a mesma senha!'))
});

export const signInSchema = joi.object({
    email: joi.string().email().required().error(new Error('Preencha com um e-mail válido!')),
    password: joi.string().required().error(new Error('Preencha com uma senha válida!'))
});