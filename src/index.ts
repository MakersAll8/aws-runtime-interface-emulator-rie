import { APIGatewayEvent, APIGatewayProxyResult, Context } from "aws-lambda";

export const handler = async (
  event: APIGatewayEvent,
  context: Context
): Promise<APIGatewayProxyResult> => {
  console.log({ event, context });
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: "hello world",
      echo: event,
    }),
  };
};
