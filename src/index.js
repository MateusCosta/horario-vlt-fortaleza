import React from 'react';
import { View } from 'react-native';
import Database from './Database';

// import { Container } from './styles';
const db = new Database();

db.initDB();
export default function App() {
  return (
    <View />
  );
}
