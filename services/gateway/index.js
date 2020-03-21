const { ApolloServer } = require('apollo-server');
const { ApolloGateway } = require('@apollo/gateway');

const gateway = new ApolloGateway({
  serviceList: [
    { name: 'user', url: 'http://user:4000' }
    // Define additional services here
  ]
});

const server = new ApolloServer({
  gateway,
  subscriptions: false
});

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`);
});
