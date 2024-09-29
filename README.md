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

### Download a latest release of FISA

It has 4 essential views:

- Home
- Settings
- Login
- Signup

### Go into the folder an install packages

```bash
cd flutter_skeleton_application_improved

# install packages
dart pub get
```

### Connect to your Supabase

```bash
cp .env.example .env

cat .env
# Output:
# SUPABASE_URL=https://YOUR.SUPABASE.URL
# SUPABASE_ANON_KEY=YOUR_ANON_KEY
```

Replace the credentials with your own Supabase's.

### Spin it up

```bash
flutter run
```

### Somewhere to walk around

- Sign up a Supabase user account
- Log in
- Go to Settings, change to light/dark theme
- Log out
