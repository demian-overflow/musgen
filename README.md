# Csound Sound Design Experiments

This project provides a development environment for experimenting with Csound, a powerful sound design and music synthesis system.

## Setup Options

### Option 1: Docker Setup (Recommended)

1. Make sure you have Docker installed on your system
2. Build and start the container:
   ```bash
   docker compose build
   docker compose up -d
   ```
3. Enter the container:
   ```bash
   docker compose exec csound bash
   ```

### Option 2: Local Setup

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install csound
```

## Running Examples

### Using Docker
Inside the container, run:
```bash
csound examples/basic_sine.csd
```

### Using Local Installation
From the project root, run:
```bash
csound examples/basic_sine.csd
```

This will play a 2-second sine wave at 440Hz.

## Project Structure

- `examples/` - Contains Csound example files
- `Dockerfile` - Container configuration
- `docker-compose.yml` - Docker Compose configuration

## Creating New Sounds

1. Create new .csd files in the examples directory
2. Use the Csound reference manual for opcodes and syntax
3. Experiment with different waveforms, filters, and effects

## Resources

- [Csound Documentation](https://csound.com/docs/manual/)
- [Csound Manual](https://csound.com/docs/manual/MainContents.html) 