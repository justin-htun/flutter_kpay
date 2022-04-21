# Flutter KPay 

A Flutter KPay Plugin.

No need to create prepay id in backend.
Including of both create order to kbz and pay.

## Installation
```dart
dependencies:
  flutter_kpay:latest version
```
## Import
```dart
import 'package:flutter_kpay/flutter_kpay.dart';
```
## Usage
### Android
android/app/src/main/manifest.xml
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
....
	<activity android:name="com.kbzbank.payment.sdk.callback.CallbackResultActivity" android:theme="@android:style/Theme.NoDisplay" android:exported="true"
....
```

## Example
```dart
import 'package:flutter_kbz_pay/flutter_kbz_pay.dart';

 FlutterKPay.startPay(
            merchCode: "10000",
            appId: "kp4c1706c8675a45fghjklrskyf",
            signKey: "123",
            orderId: "123",
            amount: 5000,
            title: "title",
            isProduction: false)
        .then((res) {
      print('startPay' + res.toString());
    });

## Getting Started
For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## reference 
https://github.com/lostcixin
