import joi from 'joi'

export const urlSchema = joi.object({
    url: joi.string().uri().required().error(new Error('Preencha com uma url válida!'))
});