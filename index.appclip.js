import {AppRegistry, View, Text} from 'react-native';
import React from 'react';

const AppClip = props => (
  <View
    style={{
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: '#BFEFFF',
    }}>
    <Text
      style={{
        fontSize: 26,
        color: '#204080',
      }}>
      Hello React Native App Clip
    </Text>
    <Text
      style={{
        fontSize: 26,
        color: '#204080',
      }}>
      URI: {props.uri}
    </Text>
  </View>
);

AppRegistry.registerComponent('AppClip', () => AppClip);
