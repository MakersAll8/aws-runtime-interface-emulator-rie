FROM public.ecr.aws/lambda/nodejs:16.2022.10.19.14-x86_64 as builder
WORKDIR /usr/app
COPY package.json ./package.json
COPY ./src ./src
RUN npm install
RUN ls -al
RUN npm run build
    

FROM public.ecr.aws/lambda/nodejs:16.2022.10.19.14-x86_64
WORKDIR ${LAMBDA_TASK_ROOT}
COPY --from=builder /usr/app/dist/* ./
CMD ["index.handler"]