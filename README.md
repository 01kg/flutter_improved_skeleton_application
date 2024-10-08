<div align="center">
  <p align="center">
    <h2>Flutter Improved Skeleton Application (FISA)</h2>
    <h3>A Better Start Point of Your Next Flutter App ⚡</h3>
  </p>
</div>

This skeleton flutter app is based on the "Flutter Skeleton Application"
template. Added support for Freezed, Riverpod, Supabase, DotEnv.

## Integrations:

1. Freezed
2. Riverpod
3. Supabase
4. DotEnv

## Usage:

### Download [a latest release of FISA](https://github.com/01kg/flutter_improved_skeleton_application/releases/latest)

It has 4 essential views:

- Home
- Settings
- Login
- Signup

### Change the name of the project to yours

1. Global search and replace `flutter_skeleton_application_improved` with
   `your_project_name` (Should in snake_case to meet Dart's standard)

### Go into the folder an install packages

```bash
cd flutter_skeleton_application_improved

# install packages
dart pub get
```

In some cases, after run `dart pub get`, in `app.dart`, VS Code still warns on
`import 'package:flutter_gen/gen_l10n/app_localizations.dart';`, saying
`Not found`. Just run `dart pub get` again might help.

### Connect to your Supabase

```bash
cp .env.example .env

cat .env
# Output:
# SUPABASE_URL=https://YOUR.SUPABASE.URL
# SUPABASE_ANON_KEY=YOUR_ANON_KEY
```

Replace the credentials with your own Supabase's.

**Note:** If you are connecting to local Supabase, `SUPABASE_URL` is expected to
be the "API URL". E.g. `http://127.0.0.1:54321`

### Spin it up

```bash
# Generate Freezed and Riverpod files
dart run build_runner build

# launch your app in debug mode
flutter run
```

### Somewhere to walk around

- Sign up a Supabase user account
- Log in
- Go to Settings, change to light/dark theme
- Log out

## Misc Features

### DEV_ACCOUNT and DEV_PASSWORD

Say in your Supabase, there is already an account created for testing purpose.

While testing UI, you feel hand input the account and password time and time
again is tedious, then you could add them in `.env` file:

```bash
DEV_ACCOUNT=YOUR@DEV.ACCOUNT
DEV_PASSWORD=YOUR_DEV_PASSWORD
```

After this, if you leave 'Email' and 'Password' text fields empty, clicing
'Login' will login with the dev account.
