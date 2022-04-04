import React from 'react';
import { StyleSheet, Text, View, TextInput } from 'react-native';

import { AppLoading } from 'expo';
import * as Font from 'expo-font';

import { ValidateInput } from '../../../components/common/Validator.js' 

import Colors, {themes} from '../../../constants/Colors.js';

import {Locale, getLang} from '../../../i18n/locale.js';

componentDidMount = async() => { 
  await Font.loadAsync({
    'Roboto-Regular': require('../../../assets/fonts/Roboto-Regular.ttf'),
    'Roboto-Medium': require('../../../assets/fonts/Roboto-Medium.ttf'),
  }).then( () => this.setState( { fontsLoaded: true } ) );

  getLang().then((res)=>  this.setState({lang: res}) );
  this.props.navigation.addListener('willFocus', this.load);

//this.getRSS();
}

load = () => { 
  getLang().then((res)=>  this.setState({lang: res}) );

  //RSS
  
}

export default class UiTextInputLines extends React.Component {
  
  state = { 
    fontsLoaded: false,
    inputValidation: true,
    lang: "ru",
  };

  constructor(props){
    super(props);
  }

  componentDidMount() { 
    Font.loadAsync({
      'Roboto-Regular': require('../../../assets/fonts/Roboto-Regular.ttf'),
    }).then( () => this.setState( { fontsLoaded: true } ) );
  }

  shouldComponentUpdate(nProps,nState){
    if(nProps.clear != undefined && nProps.clear){
      if(this.textInput != undefined) this.textInput.clear();
      this.setState({validationType: '',inputValidation: '', inputValidation: true });
      this.props.clearCallBack(false);
    }
    return true;
  }

  handlerFocus = (input) => {
    this.setState({
        [input]:true
    });
  };

  handlerBlur = (input) => {
    this.handlerValidation('inputValidation', this.props.validationType , this.state.inputValidation );
    this.setState({
        [input]:false
    });
  };

  handlerValidation = (input, key, value) => {
    this.setState({
      [input]: ValidateInput(key, value)
    });
    //this.props.callBack(value);
  };

  render() {
    if( !this.state.fontsLoaded ) {
      return <AppLoading/>
    }
    return (
      <View style={styles.input}>
        <TextInput 
          style={[
            styles.textInput, 
            this.props.selectedTheme == 'night' ? {color: themes.night.uiText, borderColor: themes.night.uiLine} : {color: themes.normal.uiText, borderColor: themes.normal.uiLine},
            this.state.inputFocus ? styles.textBlured:'',
            !this.state.inputValidation ? styles.inputDanger:'', 
            {textAlignVertical: 'top'}
          ]}
          ref={input => { this.textInput = input }} 
          placeholder={this.props.placeholder}
          placeholderTextColor={Colors.colLightGray}
          autoCapitalize={this.props.autoCapitalize}
          autoFocus={this.props.inputFocus}
          keyboardType={this.props.keyboardType}
          maxLength={this.props.maxLength}
          secureTextEntry={this.props.secureTextEntry}
          textContentType={this.props.textContentType}
          allowFontScaling={false}

          multiline={this.props.multiline}
          numberOfLines={this.props.numberOfLines}
          value={this.props.inputValue}
          onChangeText={(value) =>  {
            this.setState({
              ['inputValidation']:value
            });
            if(this.props.callBack) this.props.callBack(value);
          }}
          onFocus = {() => this.handlerFocus('inputFocus')}
          onBlur = {() => this.handlerBlur('inputFocus')}
        />
        <Text style={[
          styles.warnText, 
          this.state.inputValidation ? styles.hideWarnText:'' 
        ]}>
          {Locale(this.state.lang, "wrong_date")}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  textInput: {
    fontSize: 16,
    color: Colors.uiDark,
    height: 144,
    borderWidth: 1,
    borderRadius: 8,
    marginBottom: 8,
    paddingHorizontal: 16,
    paddingTop: 13,
    paddingBottom: 13,
    fontFamily: 'Roboto-Regular',
  },
  textBlured: {
    borderColor: Colors.uiBlue,
  },
  inputDanger: {
    borderColor: Colors.uiRed,
  },
  warnText: {
    color: Colors.uiRed,
    fontSize: 12,
    marginBottom: 8,
    marginTop: -4,
    lineHeight: 18,
    letterSpacing: 0.19,
    fontFamily: 'Roboto-Regular',
  },
  hideWarnText: {
    opacity: 0,
    marginTop: -8,
    height: 0,
  },

});
