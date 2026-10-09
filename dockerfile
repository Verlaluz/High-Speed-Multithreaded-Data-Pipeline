FROM rust:latest
WORKDIR /usr/src/data_pipeline
COPY . .
# We MUST build with --release, otherwise the math operations will be extremely slow
RUN cargo build --release
ENTRYPOINT ["./target/release/data_pipeline"]