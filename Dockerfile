FROM rust:latest

# Set the working directory to /app
WORKDIR /app

COPY . ./

# Build the dependencies
RUN cargo build --release

# Set the entrypoint to the binary
ENTRYPOINT ["./target/release/giga"]

EXPOSE 5000

# Set the default command to --help
CMD ["--help"]
