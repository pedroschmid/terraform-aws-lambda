var AWS = require("aws-sdk");
var dynamo = new AWS.DynamoDB.DocumentClient();

exports.handler = function (event, context, callback) {
  var operation = event.operation;

  if (event.tableName) {
    event.payload.TableName = event.tableName;
  }

  switch (operation) {
    case "create":
      dynamo.put(event.payload, callback);
      break;
    case "read":
      dynamo.get(event.payload, callback);
      break;
    default:
      callback("Unknown operation: ${operation}");
  }
};
